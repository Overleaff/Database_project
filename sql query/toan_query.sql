--1. Detect comment with content includes restricted words (zero). 

SELECT comment_id, account_id, username, content
FROM comments AS c NATURAL JOIN accounts AS a
WHERE  c.content LIKE '%zero%'



--2. Look for every unread chapter of all comic followed by an account(account_id=3).

SELECT  ch.comic_id, ch.chap_num
FROM accounts a
	JOIN subscribe s on a.account_id = s.account_id
	JOIN chapter ch on s.comic_id = ch.comic_id
WHERE a.account_id = 3

EXCEPT

SELECT  c.comic_id, ch.chap_num
FROM comic c 
	 JOIN chapter ch on c.comic_id = ch.comic_id
	 JOIN read r on ch.chapter_id = r.chapter_id
	 JOIN accounts a on r.account_id = a.account_id	 
WHERE a.account_id = 3



--3. Find chapter with the highest likes in a comic(comic_id=1).

SELECT chap_num,likes 
FROM chapter
WHERE likes =
(
	SELECT MAX(likes)
	FROM chapter
	LIMIT 5
)



--4. [Trigger] When an account read the lastest chapter of any comic.

CREATE TRIGGER like_up
AFTER INSERT
ON likes
FOR EACH ROW
WHEN (NEW.like_id IS NOT NULL)
EXECUTE PROCEDURE like_up();


--5. Look for the very last reading of an account(account_id = 3).

SELECT name, chap_num, date 
FROM  read NATURAL JOIN chapter NATURAL JOIN comic
WHERE date = (SELECT MAX(date)
				FROM read
				WHERE account_id=3)



--6. Look for the most replicated (favourite) tag of all comic that an account subscribe to (account_id =3).

SELECT t.name, COUNT(name)
FROM accounts a
	JOIN subscribe s on a.account_id = s.account_id
	JOIN tagging tg on s.comic_id = tg.comic_id
	JOIN tags t on tg.tag_id= t.tag_id
WHERE a.account_id =3
GROUP BY name
LIMIT 1

--7. Find if an account had subscribed more than one comic belong to the same author(account_id=3).

SELECT a.name,count(a.name)
FROM subscribe s
	JOIN comic c on s.comic_id = c.comic_id
	JOIN authors a on c.author_id = a.author_id
WHERE account_id=3
GROUP BY a.name
HAVING count(a.name) >1


--8. Find all the comics that still have been update from year 2019 until now.

SELECT DISTINCT comic.name, update_date
FROM comic NATURAL JOIN chapter 
WHERE chapter.update_date > '2019-01-01'

--9. Show ranking of most to least popular author(base on amount of follows) on a given tag(tag.name=Action).

SELECT a.name, count(a.name)
FROM authors a 
	JOIN comic c on a.author_id = c.author_id
	JOIN tagging tg on c.comic_id = tg.comic_id
	JOIN tags t on tg.tag_id =t.tag_id
WHERE t.name='Action'
GROUP BY a.name
ORDER BY count(a.name) DESC




--10. Show the ranking of all the unfinished comic of a given author(author.name=Seneca).

SELECT c.name, c.rating, c.status
FROM authors a 
	JOIN comic c on a.author_id = c.author_id
WHERE a.name='Catullus' AND  NOT c.status  =  'completed'
ORDER BY rating DESC

