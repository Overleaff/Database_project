1. Write a SQL query to fetch “NAME” from Comic table using the alias name as <comic name>.
	select name as Comic_Name from comic
2. create view displaying chapter account named "Jillana Ealam" have liked
	create view abc as 
	select accounts.display_name, chapter.chapter_id from likes
	join chapter on likes.chapter_id = chapter.chapter_id
	join accounts on accounts.account_id = likes.account_id
	where accounts.display_name = 'Jillana Ealam' 
	
3. display the comic by tag
	select comic.name, tags.name
	from tagging join tags on tagging.tag_id = tags.tag_id
	join comic on comic.comic_id = tagging.comic_id 

4. display a comic that is followed by the largest number of accounts.
	select comic.name, count(subscribe.comic_id) 
	from subscribe join comic on subscribe.comic_id = comic.comic_id
	group by  comic.comic_id
	
5. update a status of comic_id= 4 to ongoing
	UPDATE comic
	SET status = 'ongoing'
	WHERE comic_id = 4;
	
	
6. a function to update status from "delayed" to "ongoing" (when an chapter is updated)
	create or replace function public.abcd(in a int) returns void as 
$$
begin 
	UPDATE comic
	SET status = 'ongoing'
	WHERE comic_id = a;
end;
$$
language plpgsql

select public.abcd(7)
drop function public.abcd

select * from comic
	
7. display a comic that have been last updated between '2004-01-01' and '2004-01-31'
		select * from comic 
	where last_uploaded > '2013-01-01' and last_uploaded <'2016-01-31'
	
8. delete comments that contains 'cat'
	delete from comments
	where content like '%com%'

9. display the 5 most recent comic account "Jillana Ealam" have read.
	select * from read
	join accounts on read.account_id = accounts.account_id
	where accounts.display_name = 'Jillana Ealam' 
	order by date asc
	LIMIT 5

10. a trigger to delete comments that contain sensitive word such as "cat"
	
	create trigger afdelete0
after insert on comments
for each row 
execute procedure tf_af_delete();

create or replace function tf_af_delete() returns trigger as $$
begin 
	delete from comments 
	where comments.content like '%cat%';
	return old;
end;
$$ language plpgsql

drop trigger afdelete0 on comments

insert into comments (comment_id, chapter_id, account_id, date, content) 
values (1001, 36, 91, '2021-04-01', 'asfcatasf');
