--Q1
select * from comic
where total_view = (select max(total_view) from comic)

--Q2
select a.account_id, a.display_name, a.username from accounts a
join follows f
on a.account_id = f.account_id
join authors au
on f.author_id = au.author_id
where au.name = 'Arthur Conan Doyle'

--Q3
select comic.name, array_agg(distinct chapter_id) 
from chapter
join comic
on comic.comic_id = chapter.comic_id
group by comic.name

--Q4
select a.display_name, array_agg(chapter_id)
from read r
join accounts a
on a.account_id = r.account_id
group by a.display_name having a.display_name = 'Parke Aulton'

--Q5
select com.comic_id, com.name from comments co
join chapter ch
on co.chapter_id = ch.chapter_id
join comic com
on ch.comic_id = com.comic_id
where com.status = 'completed'
and co.date = '2021-01-06'

--Q6
select au.author_id, au.name, co.rating from comic co
join authors au
on co.author_id = au.author_id
where co.rating = (select max(rating) from comic)

--Q7
select * from accounts
where created_time 
between '2021-05-02' and '2021-06-02'

--Q8
select tags.name, array_agg(co.name) from tagging t
join comic co
on t.comic_id = co.comic_id
join tags
on t.tag_id = tags.tag_id
group by tags.name having tags.name = 'Adventure'

--Q9
create trigger tg_check_insert
before insert on accounts
for each row 
execute procedure tf_check_insert();

create or replace function tf_check_insert() returns trigger as 
$$ 
declare 
	cnt int;
begin
	select extract(year from NOW())- extract(year from dob) into cnt
	from accounts
	where account_id = NEW.account_id;
	
	if (cnt < 16) then 
		return NULL;
	else 
		return NEW;
	end if;
end;
$$
language plpgsql;

insert into accounts
values(250, 'vuhta', 'vuh', 'sda','', '2022-06-02', '', '2019-06-02')

--Q10