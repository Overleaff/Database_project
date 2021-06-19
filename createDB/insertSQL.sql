create table authors
(
    author_id   int not null
        primary key,
    name        varchar(30) not null,
    nationality varchar(50) null,
    dob         date null
);

insert into authors (author_id, name, nationality, dob) values
(1,'William Shakespeare','Afghanistan','1962-10-15'),
(2,'Emily Dickinson ','Albania','1970-5-19'),
(3,'H. P. Lovecraft','Algeria','1989-1-10'),
(4,'Arthur Conan Doyle','Andorra','1972-2-17'),
(5,'Leo Tolstoy','Angola','1973-7-6'),
(6,'Edgar Allan Poe','Antigua and Barbuda','1961-2-14'),
(7,'Robert Ervin Howard','Argentina','1991-4-16'),
(8,'Rabindranath Tagore','Armenia','1969-3-10'),
(9,'Rudyard Kipling','Australia','1972-2-2'),
(10,'Seneca','Austria','1965-7-27'),
(11,'John Donne','Azerbaijan','1977-6-5'),
(12,'Sarah Williams','The Bahamas','1962-5-26'),
(13,'Oscar Wilde','Bahrain','1976-4-1'),
(14,'Catullus','Bangladesh','1978-9-2'),
(15,'Alfred Tennyson','Barbados','1994-11-5'),
(16,'William Blake','Belarus','1969-2-17'),
(17,'Charles Dickens','Belgium','1963-6-23'),
(18,'John Keats','Belize','1975-7-26'),
(19,'Theodor Herzl','Benin','1992-9-8'),
(20,'Percy Bysshe Shelley','Bhutan','1991-4-18'),
(21,'Ernest Hemingway','Bolivia','1964-9-9'),
(22,'Barack Obama','Bosnia and Herzegovina','1965-8-19'),
(23,'Anton Chekhov','Botswana','1963-9-26'),
(24,'Henry Wadsworth Longfellow','Brazil','1970-3-21'),
(25,'Arthur Schopenhauer','Brunei','1984-9-2'),
(26,'Jacob De Haas','Bulgaria','1974-2-23'),
(27,'George Gordon Byron','Burkina Faso','1967-2-23'),
(28,'Jack London','Burundi','1988-2-24'),
(29,'Robert Frost','Cambodia','1988-6-4'),
(30,'Abraham Lincoln','Cameroon','1989-2-23');

create table comic (
    comic_id        int not null primary key,
    name            varchar(40) not null,
    author_id       int not null,
    status          varchar(20) not null,
    first_uploaded  date not null,
    last_uploaded   date not null,
    current_chapter varchar(20) not null,
    total_view      int         not null,
    rating          varchar(20) not null,
    constraint comic_authors_author_id_fk
        foreign key (author_id) references authors (author_id)
);

insert into comic (comic_id, name, author_id, status, first_uploaded, last_uploaded, current_chapter, total_view, rating) values
(1, 'Death Note ', 13, 'ongoing', '2013-7-9', '2017-10-3', 49, 641421, 3.1),
(2, 'Naruto', 7, 'delayed', '2011-11-11', '2017-6-24' ,136, 5211, 3.4),
(3, 'Bleach', 27, 'completed', '2012-2-2', '2015-7-27' ,129, 979802, 1.1),
(4, 'Fullmetal Alchemist ', 18, 'delayed', '2011-1-23', '2019-10-23' ,173, 484421, 0.95),
(5, 'Fruits Basket', 14, 'ongoing', '2010-8-6', '2016-5-22' ,91, 268980, 2.8),
(6, 'Berserk ', 3, 'delayed', '2011-4-18', '2019-9-9' ,127, 660336, 0.25),
(7, 'Love Hina', 16, 'completed', '2014-5-17', '2015-6-3', 14, 233367, 1.7),
(8, 'One Piece', 14, 'completed', '2013-7-14', '2018-2-12' ,184, 705403, 2.55),
(9, 'Rurouni Kenshin', 14, 'ongoing', '2011-3-12', '2017-7-3' ,26, 698586, 4.7),
(10, 'Chobits', 29, 'completed', '2013-2-14', '2017-9-15' ,102, 573317, 4.6),
(11, 'Azumanga Daioh', 22, 'delayed', '2011-8-25', '2019-9-13', 44, 346619, 2),
(12, 'Monster', 9, 'completed', '2011-9-25', '2019-11-17' ,127, 704567, 2.8),
(13, 'Tsubasa, RESERVoir CHRoNiCLE', 17, 'completed', '2011-5-22', '2019-11-15' ,128, 332871, 1.6),
(14, 'Yotsuba&!', 29, 'completed', '2013-6-11', '2015-11-24', 149, 747796, 1.15),
(15, 'Ranma ', 8, 'ongoing', '2011-3-6', '2018-11-7' ,164, 888228, 2.05),
(16, 'Dragon Ball', 20, 'ongoing', '2014-2-20', '2017-10-4', 56, 373743, 4.55),
(17, 'Hellsing', 17, 'ongoing', '2012-4-3', '2018-5-11', 75, 975407, 3.7),
(18, 'Inuyasha', 1, 'delayed', '2012-5-23', '2018-1-15' ,28, 366143, 0.55),
(19, 'GTO', 18, 'completed', '2013-4-20', '2018-5-23', 6, 436840, 0.2),
(20, 'Negima! Magister Negi Magi', 28, 'completed', '2012-9-4', '2019-5-25', 143, 259470, 4.15),
(21, 'Nausicaä of the Valley of the Wind', 20, 'delayed', '2014-5-24', '2019-5-6' ,154, 469786, 3.45),
(22, 'Claymore', 2, 'completed', '2012-1-20', '2018-4-7' ,11, 573622, 1.4),
(23, 'Gantz', 29, 'completed', '2010-8-22', '2015-11-6', 5, 321801, 3.05),
(24, 'Ouran High School Host Club', 1, 'ongoing', '2011-2-21', '2017-6-16', 65, 586708, 0.8),
(25, 'xxxHOLiC', 12, 'delayed', '2012-9-2', '2016-11-16', 52, 911899, 3.95),
(26, 'Cardcaptor Sakura', 10, 'delayed', '2011-9-15', '2018-10-5', 94, 158660, 3.15),
(27, '20th Century Boys', 19, 'delayed', '2014-4-19', '2018-1-13', 190, 681095, 1.3),
(28, 'Akira', 26, 'delayed', '2014-10-24', '2016-6-24', 107, 517445, 2.8),
(29, 'Vampire Knight', 19, 'completed', '2013-8-7', '2019-3-16' ,136, 625210, 2.1),
(30, 'Absolute Boyfriend', 17, 'completed', '2012-1-25', '2019-7-25', 199, 517721, 0.2);


create table chapter
(
    chapter_id  int not null
        primary key,
    comic_id    int not null,
	chap_num   int null,
    num_pages   int         null,
	update_date date null,
    views       int         null,
    likes       int         null,
    comments    int         null,
    link        varchar(20) null,
    constraint chapter_comic_comic_id_fk
        foreign key (comic_id) references comic (comic_id)
);
insert into chapter (chapter_id, comic_id, chap_num, num_pages, update_date, views, likes, comments, link) values
(1, 14, 1, 36, '2013-3-10' , 8335, 386, 492, ' link1' ), 
(2, 10, 1, 31, '2010-8-3' , 59, 763, 926, ' link2' ), 
(3, 1, 1, 36, '2016-1-17' , 5368, 567, 429, ' link3' ), 
(4, 3, 1, 30, '2012-11-27' , 3135, 929, 802, ' link4' ), 
(5, 13, 1, 38, '2018-10-18' , 8456, 11, 42, ' link5' ), 
(6, 10, 2, 33, '2019-2-6' , 8537, 198, 324, ' link6' ), 
(7, 6, 1, 30, '2006-7-18' , 8980, 956, 873, ' link7' ), 
(8, 3, 2, 30, '2005-8-9' , 925, 84, 327, ' link8' ), 
(9, 27, 1, 35, '2018-3-27' , 5857, 124, 895, ' link9' ), 
(10, 13, 2, 35, '2019-11-11' , 364, 43, 750, ' link10' ), 
(11, 8, 1, 38, '2013-10-13' , 3584, 403, 651, ' link11' ), 
(12, 15, 1, 39, '2016-9-13' , 3368, 739, 12, ' link12' ), 
(13, 17, 1, 36, '2005-10-19' , 570, 434, 378, ' link13' ), 
(14, 18, 1, 31, '2017-8-22' , 492, 652, 756, ' link14' ), 
(15, 2, 1, 30, '2005-1-7' , 9689, 444, 619, ' link15' ), 
(16, 11, 1, 39, '2017-4-4' , 5771, 481, 675, ' link16' ), 
(17, 10, 3, 37, '2007-6-12' , 2353, 586, 965, ' link17' ), 
(18, 17, 2, 33, '2018-8-12' , 2871, 732, 829, ' link18' ), 
(19, 4, 1, 39, '2018-6-11' , 6715, 340, 149, ' link19' ), 
(20, 7, 1, 33, '2016-5-19' , 3451, 921, 555, ' link20' ), 
(21, 30, 1, 38, '2006-9-17' , 2350, 193, 500, ' link21' ), 
(22, 15, 2, 34, '2007-9-5' , 5856, 743, 491, ' link22' ), 
(23, 18, 2, 35, '2012-7-4' , 2551, 437, 228, ' link23' ), 
(24, 6, 2, 37, '2013-9-27' , 4395, 29, 237, ' link24' ), 
(25, 16, 1, 33, '2008-7-11' , 1011, 928, 529, ' link25' ), 
(26, 27, 2, 34, '2013-3-12' , 4538, 606, 840, ' link26' ), 
(27, 5, 1, 38, '2014-1-1' , 7917, 917, 996, ' link27' ), 
(28, 15, 3, 33, '2010-8-7' , 5499, 772, 725, ' link28' ), 
(29, 5, 2, 30, '2019-5-26' , 9786, 669, 82, ' link29' ), 
(30, 13, 3, 34, '2005-4-6' , 8804, 348, 611, ' link30' ), 
(31, 3, 3, 38, '2006-1-28' , 5568, 340, 422, ' link31' ), 
(32, 12, 1, 30, '2006-2-22' , 3730, 878, 305, ' link32' ), 
(33, 1, 2, 36, '2017-10-17' , 3465, 708, 416, ' link33' ), 
(34, 13, 4, 38, '2017-1-1' , 5624, 600, 36, ' link34' ), 
(35, 3, 4, 39, '2013-3-20' , 71, 973, 131, ' link35' ), 
(36, 22, 1, 30, '2015-2-26' , 163, 199, 981, ' link36' ), 
(37, 30, 2, 36, '2018-4-4' , 9668, 190, 95, ' link37' ), 
(38, 27, 3, 36, '2015-1-17' , 7684, 376, 542, ' link38' ), 
(39, 7, 2, 37, '2009-4-26' , 8418, 887, 412, ' link39' ), 
(40, 29, 1, 32, '2016-7-8' , 5210, 342, 587, ' link40' ), 
(41, 7, 3, 31, '2006-6-14' , 1255, 819, 599, ' link41' ), 
(42, 22, 2, 34, '2010-9-24' , 5667, 705, 228, ' link42' ), 
(43, 18, 3, 30, '2005-9-5' , 9224, 422, 269, ' link43' ), 
(44, 27, 4, 31, '2012-2-11' , 1972, 672, 850, ' link44' ), 
(45, 26, 1, 35, '2015-8-3' , 6042, 898, 713, ' link45' ), 
(46, 9, 1, 30, '2019-11-25' , 8581, 819, 336, ' link46' ), 
(47, 13, 5, 35, '2019-2-19' , 4769, 273, 776, ' link47' ), 
(48, 1, 3, 35, '2019-1-17' , 5884, 993, 205, ' link48' ), 
(49, 12, 2, 37, '2006-4-21' , 2754, 326, 259, ' link49' ), 
(50, 5, 3, 32, '2019-8-15' , 2021, 842, 868, ' link50' ), 
(51, 19, 1, 39, '2008-8-9' , 498, 36, 808, ' link51' ), 
(52, 14, 2, 38, '2018-11-12' , 1648, 890, 754, ' link52' ), 
(53, 8, 2, 36, '2010-3-17' , 8046, 788, 797, ' link53' ), 
(54, 30, 3, 30, '2008-10-28' , 2497, 253, 892, ' link54' ), 
(55, 7, 4, 35, '2015-11-25' , 9188, 157, 729, ' link55' ), 
(56, 17, 3, 30, '2005-8-11' , 6304, 28, 27, ' link56' ), 
(57, 21, 1, 38, '2019-10-13' , 7697, 699, 43, ' link57' ), 
(58, 30, 4, 32, '2010-10-13' , 681, 647, 538, ' link58' ), 
(59, 20, 1, 31, '2009-4-24' , 1692, 215, 127, ' link59' ), 
(60, 25, 1, 39, '2010-4-18' , 6429, 343, 335, ' link60' ), 
(61, 28, 1, 30, '2019-2-3' , 289, 367, 988, ' link61' ), 
(62, 13, 6, 35, '2014-11-8' , 8390, 682, 340, ' link62' ), 
(63, 22, 3, 39, '2016-7-11' , 6042, 360, 117, ' link63' ), 
(64, 4, 2, 31, '2005-2-2' , 5425, 996, 367, ' link64' ), 
(65, 18, 4, 34, '2009-5-7' , 6057, 614, 168, ' link65' ), 
(66, 16, 2, 38, '2015-4-21' , 4346, 726, 994, ' link66' ), 
(67, 17, 4, 32, '2011-10-27' , 2290, 647, 970, ' link67' ), 
(68, 22, 4, 30, '2012-7-4' , 8627, 312, 886, ' link68' ), 
(69, 25, 2, 35, '2017-10-5' , 9479, 610, 969, ' link69' ), 
(70, 10, 4, 34, '2010-2-24' , 5433, 987, 888, ' link70' );

create table tags
(
    tag_id      int not null
        primary key,
    name        varchar(30) not null,
    description varchar(100) not null
);
insert into tags (tag_id, name, description) values
(1, 'Action',   ''  ),
(2, 'Adventure',  ''   ),
(3, 'Comedy',   ''  ),
(4, 'Crime and mystery',   ''  ),
(5, 'Fantasy',   ''  ),
(6, 'Historical',    '' ),
(7, 'Historical fiction',    '' ),
(8, 'Horror',  ''   ),
(9, 'Romance',   ''  ),
(10, 'Satire',    '' ),
(11, 'Science fiction',    '' ),
(12, 'Cyberpunk and derivatives',   ''  ),
(13, 'Speculative',   ''  ),
(14, 'Thriller',   ''  );

create table tagging
(
    tagging_id  int not null
        primary key,
    tag_id     int not null,
    comic_id   int not null
);
insert into tagging(tagging_id, tag_id, comic_id) values
(1, 1, 10),
(2, 12, 26),
(3, 2, 4),
(4, 13, 25),
(5, 2, 29),
(6, 3, 19),
(7, 1, 3),
(8, 13, 24),
(9, 10, 26),
(10, 11, 16),
(11, 8, 6),
(12, 4, 21),
(13, 4, 18),
(14, 3, 2),
(15, 11, 3),
(16, 10, 17),
(17, 2, 23),
(18, 6, 22),
(19, 11, 6),
(20, 10, 15),
(21, 2, 26),
(22, 4, 10),
(23, 5, 17),
(24, 6, 21),
(25, 5, 12),
(26, 2, 12),
(27, 1, 14),
(28, 3, 20),
(29, 12, 1),
(30, 7, 2),
(31, 11, 19),
(32, 11, 15),
(33, 2, 15),
(34, 5, 1),
(35, 12, 7),
(36, 13, 1),
(37, 1, 3),
(38, 4, 15),
(39, 10, 27),
(40, 8, 16),
(41, 3, 18),
(42, 13, 11),
(43, 2, 22),
(44, 8, 25),
(45, 10, 13),
(46, 11, 25),
(47, 5, 7),
(48, 8, 27),
(49, 4, 1);


create table accounts (
	account_id INT,
	display_name VARCHAR(50),
	username VARCHAR(50),
	password VARCHAR(50),
	email VARCHAR(50),
	created_time DATE,
    account_type VARCHAR(50)
);
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (1, 'Rozele Wackley', 'rwackley0', 'lP1bSYs5hfZ', 'rwackley0@reverbnation.com', '2019-09-28', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (2, 'Silvester McLleese', 'smclleese1', 'MwIQmq', 'smclleese1@google.ca', '2010-09-09', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (3, 'Justen Foch', 'jfoch2', 'FUcGzSMC', 'jfoch2@jimdo.com', '2013-02-13', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (4, 'Jillana Ealam', 'jealam3', 'oP74CmLqVJUr', 'jealam3@issuu.com', '2017-04-10', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (5, 'Parke Aulton', 'paulton4', 'KiWH1avMZ', 'paulton4@ebay.com', '2017-02-28', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (6, 'Agustin McPharlain', 'amcpharlain5', 'CpeHjmmkK', 'amcpharlain5@geocities.com', '2017-04-20', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (7, 'Jemie Martynka', 'jmartynka6', 'Hpxyf1RBje0', 'jmartynka6@indiatimes.com', '2013-07-18', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (8, 'Aristotle Prosser', 'aprosser7', 'NCrp6Mg6V', 'aprosser7@cornell.edu', '2013-08-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (9, 'Franklin Boath', 'fboath8', 'QJjYq1', 'fboath8@lulu.com', '2015-03-14', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (10, 'Izabel Dickens', 'idickens9', 'RSvLilNbC1', 'idickens9@wordpress.com', '2018-09-19', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (11, 'Peterus Von Hindenburg', 'pvona', 'NCIeIE', 'pvona@pen.io', '2017-06-09', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (12, 'Staford Kamall', 'skamallb', 'BcFqwG', 'skamallb@ca.gov', '2020-06-06', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (13, 'Teresita Pettie', 'tpettiec', 'bMIdu2wv8Nx', 'tpettiec@tmall.com', '2020-09-19', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (14, 'Rakel Wynes', 'rwynesd', 'wENJfGlBW', 'rwynesd@sciencedaily.com', '2014-11-13', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (15, 'Katharyn Dechelle', 'kdechellee', 'FhPi4uV', 'kdechellee@bloglines.com', '2014-10-04', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (16, 'Claudina Owen', 'cowenf', 'MJfE844MQmJd', 'cowenf@apple.com', '2017-10-30', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (17, 'Richardo McKeag', 'rmckeagg', '0zMBRG9Yk', 'rmckeagg@icio.us', '2017-01-06', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (18, 'Morganica Butterfint', 'mbutterfinth', 'UkDpFEWErxp', 'mbutterfinth@youtu.be', '2011-06-11', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (19, 'Wynnie Justis', 'wjustisi', 'uyotsnTQ', 'wjustisi@github.com', '2012-06-17', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (20, 'Maryann Chant', 'mchantj', '8H52uOK9', 'mchantj@clickbank.net', '2011-09-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (21, 'Swen Martel', 'smartelk', 't9SAzI3rEUKZ', 'smartelk@thetimes.co.uk', '2011-08-31', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (22, 'Mattheus MacShirie', 'mmacshiriel', 'j6s8nR', 'mmacshiriel@furl.net', '2016-01-26', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (23, 'Shir Dorkins', 'sdorkinsm', 'EtVPnVWiB', 'sdorkinsm@spotify.com', '2012-05-11', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (24, 'Hunfredo Critch', 'hcritchn', '5gOxc2', 'hcritchn@unblog.fr', '2014-01-16', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (25, 'Gustaf Brittles', 'gbrittleso', '7jaujxLqxT', 'gbrittleso@studiopress.com', '2010-12-16', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (26, 'Read Winterbourne', 'rwinterbournep', '8NbEHSu4EY', 'rwinterbournep@japanpost.jp', '2021-01-27', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (27, 'Maighdiln Linklater', 'mlinklaterq', 'FikuBGBK', 'mlinklaterq@businessweek.com', '2012-03-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (28, 'Sherye Sunnex', 'ssunnexr', 'ctDDfOW3iG', 'ssunnexr@google.co.uk', '2018-02-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (29, 'Fredrika Maughan', 'fmaughans', 'y1jrCPdeJS', 'fmaughans@seesaa.net', '2018-05-07', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (30, 'Craggie Colten', 'ccoltent', 'V4OE43', 'ccoltent@sourceforge.net', '2019-01-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (31, 'Sylvester Puller', 'spulleru', 'cYBn2xE', 'spulleru@patch.com', '2012-10-29', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (32, 'Temple Goundsy', 'tgoundsyv', 'fO60MYrb', 'tgoundsyv@moonfruit.com', '2019-03-27', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (33, 'Pooh Gilmore', 'pgilmorew', 'h2lzLKA', 'pgilmorew@sitemeter.com', '2018-07-14', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (34, 'Eba Mereweather', 'emereweatherx', 'p0rMAf', 'emereweatherx@taobao.com', '2018-04-24', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (35, 'Mina McMurty', 'mmcmurtyy', 'AAmM6xxbpLG4', 'mmcmurtyy@yandex.ru', '2018-04-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (36, 'Elspeth O''Doohaine', 'eodoohainez', 'bYdn5FSX', 'eodoohainez@zdnet.com', '2020-10-13', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (37, 'Rikki Pidgeon', 'rpidgeon10', '4oKJRsH', 'rpidgeon10@cnet.com', '2014-11-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (38, 'Christel Hansom', 'chansom11', 'KSirSx0Ibj1', 'chansom11@usatoday.com', '2017-06-07', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (39, 'Tessie Brimblecombe', 'tbrimblecombe12', 'Aj9mjSkrDor', 'tbrimblecombe12@washingtonpost.com', '2016-03-24', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (40, 'Lyell Beaney', 'lbeaney13', 'jSZJLTS4NzM', 'lbeaney13@youtu.be', '2013-10-16', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (41, 'Simonette Fullard', 'sfullard14', 'KxQxg3', 'sfullard14@elegantthemes.com', '2020-05-14', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (42, 'Fairlie Mathias', 'fmathias15', 'XFFSqV', 'fmathias15@google.com.au', '2016-11-10', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (43, 'Kerrill Phayre', 'kphayre16', 'X2P6siqV2', 'kphayre16@google.co.jp', '2015-11-07', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (44, 'Nadean McIlheran', 'nmcilheran17', 'VN5kefMWj', 'nmcilheran17@tmall.com', '2016-12-22', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (45, 'Mayer Augur', 'maugur18', 'notZEua', 'maugur18@networkadvertising.org', '2012-03-15', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (46, 'Joseph Petran', 'jpetran19', 'r8OGHTxM', 'jpetran19@liveinternet.ru', '2012-06-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (47, 'Philippe Belsher', 'pbelsher1a', 'DTQs8iz', 'pbelsher1a@nba.com', '2012-08-29', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (48, 'Hynda Mennear', 'hmennear1b', 'WJTXht', 'hmennear1b@mediafire.com', '2020-08-07', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (49, 'Bird Bamling', 'bbamling1c', 'AIdaFF2cCpRq', 'bbamling1c@fc2.com', '2017-03-15', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (50, 'Curr Furminger', 'cfurminger1d', 'y2W4bLdxh', 'cfurminger1d@trellian.com', '2017-02-24', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (51, 'Debee Bachshell', 'dbachshell1e', '6MNXb4FBy6jo', 'dbachshell1e@spiegel.de', '2019-07-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (52, 'Culley Abeau', 'cabeau1f', 'bPVkVy7', 'cabeau1f@miitbeian.gov.cn', '2020-12-07', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (53, 'Tandie Ousley', 'tousley1g', 'Ewtyd3mMR', 'tousley1g@cbc.ca', '2011-08-14', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (54, 'Winthrop Shelf', 'wshelf1h', 'sX7WyOGs0', 'wshelf1h@omniture.com', '2019-03-11', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (55, 'Modestia Sparwell', 'msparwell1i', 'DhXVtnOAV', 'msparwell1i@sbwire.com', '2016-02-10', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (56, 'Celeste Glennie', 'cglennie1j', 'NNbyd1AjjBH', 'cglennie1j@nytimes.com', '2015-01-07', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (57, 'Sawyere Armiger', 'sarmiger1k', 'Fh3PZjSo', 'sarmiger1k@networkadvertising.org', '2014-03-09', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (58, 'Niall Hanes', 'nhanes1l', 'Igu2NYvr', 'nhanes1l@twitter.com', '2018-04-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (59, 'Abbie Bullick', 'abullick1m', 'dNkhaq', 'abullick1m@about.com', '2014-01-02', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (60, 'Bathsheba Drust', 'bdrust1n', 'UVnjfnTfMY3', 'bdrust1n@paypal.com', '2014-01-08', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (61, 'Torry Yeomans', 'tyeomans1o', 'enkJbXuuB', 'tyeomans1o@woothemes.com', '2013-07-04', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (62, 'Jarib Van de Velde', 'jvan1p', 'W9Vgqt', 'jvan1p@ifeng.com', '2015-11-28', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (63, 'Nobie Skains', 'nskains1q', 'Krm2U7i', 'nskains1q@unicef.org', '2016-01-10', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (64, 'Sharia Winsiowiecki', 'swinsiowiecki1r', 'TcYR0MVfC', 'swinsiowiecki1r@ycombinator.com', '2011-11-18', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (65, 'Trstram Iianon', 'tiianon1s', 'v38Wl06xc', 'tiianon1s@gov.uk', '2011-02-03', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (66, 'Perrine Calan', 'pcalan1t', '49gTA5GcD', 'pcalan1t@illinois.edu', '2010-10-24', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (67, 'Carny Mara', 'cmara1u', 'MI3CkvZgd', 'cmara1u@bbb.org', '2012-01-09', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (68, 'Prentiss Huggen', 'phuggen1v', '1JDd6YcA9Irz', 'phuggen1v@yandex.ru', '2010-10-26', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (69, 'Franciskus Gherardi', 'fgherardi1w', 'HVwexP', 'fgherardi1w@t.co', '2015-09-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (70, 'Jillene Burd', 'jburd1x', 'VdtiGYKHn', 'jburd1x@reference.com', '2013-03-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (71, 'Sheppard Frediani', 'sfrediani1y', '1majGVn', 'sfrediani1y@alexa.com', '2017-09-06', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (72, 'Prudence Sollitt', 'psollitt1z', '4pV53Bg', 'psollitt1z@japanpost.jp', '2015-01-04', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (73, 'Eliot Fitchell', 'efitchell20', 'GGZbbGHxz', 'efitchell20@slashdot.org', '2016-01-15', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (74, 'Frasier Turneux', 'fturneux21', '5oaRKX5jB', 'fturneux21@wisc.edu', '2015-08-26', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (75, 'Brandy Gozard', 'bgozard22', 'fv11GK', 'bgozard22@census.gov', '2012-08-04', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (76, 'Gardiner Felgat', 'gfelgat23', 'jOWY5RaG', 'gfelgat23@japanpost.jp', '2017-12-08', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (77, 'Christiana Waddam', 'cwaddam24', 'PHe92TGbYqL3', 'cwaddam24@networksolutions.com', '2014-10-02', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (78, 'Derek Marquis', 'dmarquis25', 'cumvlL6', 'dmarquis25@icio.us', '2011-07-31', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (79, 'Sukey Duffell', 'sduffell26', 'HOqmGu5Z', 'sduffell26@cbsnews.com', '2016-12-13', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (80, 'Dill Sein', 'dsein27', 'kqIc6q48A', 'dsein27@wiley.com', '2018-11-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (81, 'Pauline Brett', 'pbrett28', 'Dg0yva', 'pbrett28@hc360.com', '2015-02-09', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (82, 'Georgeta Southernwood', 'gsouthernwood29', 'f0amV6kDMMwQ', 'gsouthernwood29@jiathis.com', '2016-11-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (83, 'Cristi Jorczyk', 'cjorczyk2a', 'jf0bl65c8Kin', 'cjorczyk2a@fotki.com', '2018-11-22', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (84, 'Morey Oldford', 'moldford2b', '8shb5jjh', 'moldford2b@ted.com', '2020-07-04', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (85, 'Cecily Franklen', 'cfranklen2c', 'wkneNAPEhsd', 'cfranklen2c@examiner.com', '2016-11-26', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (86, 'Markus Albro', 'malbro2d', 'QpULKx20U', 'malbro2d@google.co.jp', '2018-02-09', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (87, 'Mavra Keele', 'mkeele2e', '2iMMkvwN', 'mkeele2e@godaddy.com', '2021-04-06', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (88, 'Erika Ephgrave', 'eephgrave2f', 'XWhmDIT43vD', 'eephgrave2f@mysql.com', '2020-06-14', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (89, 'Una Rickson', 'urickson2g', '7UyX7GWn4', 'urickson2g@sogou.com', '2012-04-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (90, 'Lorelei Undy', 'lundy2h', '6iLWiA', 'lundy2h@mapy.cz', '2015-10-15', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (91, 'Nevins Rediers', 'nrediers2i', 'LlTWdSkJ', 'nrediers2i@blogtalkradio.com', '2011-11-26', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (92, 'Valaria Garretson', 'vgarretson2j', 'Dix0QQiOwIb', 'vgarretson2j@symantec.com', '2017-04-25', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (93, 'Naoma Pendered', 'npendered2k', 'u6JRga', 'npendered2k@latimes.com', '2021-01-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (94, 'Selig Winson', 'swinson2l', 'AZkGbeouCELn', 'swinson2l@creativecommons.org', '2016-11-23', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (95, 'Willa Dioniso', 'wdioniso2m', 'CofWTrY6', 'wdioniso2m@facebook.com', '2014-07-15', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (96, 'Giordano Kleinplatz', 'gkleinplatz2n', 'sdymJaIkBH', 'gkleinplatz2n@nifty.com', '2013-06-11', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (97, 'Maureen Andriesse', 'mandriesse2o', 'Z2w3iW6jA82', 'mandriesse2o@chicagotribune.com', '2019-08-14', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (98, 'Janos Bingell', 'jbingell2p', 'kDRw66mBXA', 'jbingell2p@zimbio.com', '2011-09-06', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (99, 'Irina Watman', 'iwatman2q', 'yDe635GKuPJn', 'iwatman2q@xing.com', '2014-01-18', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (100, 'Shaina Korneichik', 'skorneichik2r', 'uyhzXwuuwU', 'skorneichik2r@state.tx.us', '2015-01-05', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (101, 'Zachary Dockrell', 'zdockrell2s', 'sLzYCmhdTcx', 'zdockrell2s@umich.edu', '2020-09-06', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (102, 'Amelie Paszak', 'apaszak2t', 'JcWFxy9P', 'apaszak2t@google.nl', '2014-09-22', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (103, 'Sileas Flemmich', 'sflemmich2u', 'BEGRsTFk', 'sflemmich2u@studiopress.com', '2013-01-13', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (104, 'Isaac Tarling', 'itarling2v', 'mPoezyMB', 'itarling2v@people.com.cn', '2018-04-04', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (105, 'Finley Bote', 'fbote2w', 'HADx0CPEz3', 'fbote2w@delicious.com', '2021-01-23', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (106, 'Phelia Pablo', 'ppablo2x', '7i7yUS', 'ppablo2x@goo.ne.jp', '2018-07-12', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (107, 'Beverlee Fortman', 'bfortman2y', 'DPNXmGa2M', 'bfortman2y@xinhuanet.com', '2015-03-01', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (108, 'Kendell Tidman', 'ktidman2z', 'MaZKk5bTg2NB', 'ktidman2z@sourceforge.net', '2020-10-25', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (109, 'Marilee Aylesbury', 'maylesbury30', '3DtYrUwH', 'maylesbury30@guardian.co.uk', '2019-12-06', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (110, 'Eadmund Pascoe', 'epascoe31', '1iQjByrW42', 'epascoe31@istockphoto.com', '2012-07-08', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (111, 'Brandais Rosbottom', 'brosbottom32', 'uvXXTh9oe', 'brosbottom32@bravesites.com', '2012-08-01', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (112, 'Tamas Scates', 'tscates33', 'fgUpOUD0', 'tscates33@delicious.com', '2016-01-07', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (113, 'Gerry Descroix', 'gdescroix34', 'gmZSslT4', 'gdescroix34@foxnews.com', '2019-06-21', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (114, 'Andie Hurll', 'ahurll35', 'GcU3xz', 'ahurll35@noaa.gov', '2017-07-19', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (115, 'Silva Arghent', 'sarghent36', 'UFPXBIx3RnS', 'sarghent36@hp.com', '2019-04-11', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (116, 'Wendi Dysart', 'wdysart37', 'TkGf4xuas1', 'wdysart37@aol.com', '2013-07-24', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (117, 'Decca Burchatt', 'dburchatt38', '1Una3DN8Kk', 'dburchatt38@infoseek.co.jp', '2015-01-23', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (118, 'Irita Negus', 'inegus39', 'gP7FHeiq7cM', 'inegus39@dedecms.com', '2013-07-26', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (119, 'Javier Maulkin', 'jmaulkin3a', '7cbIM0qyY', 'jmaulkin3a@reuters.com', '2020-11-09', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (120, 'Susann Cockson', 'scockson3b', 'GwRFkSBm', 'scockson3b@alexa.com', '2016-04-24', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (121, 'Vitoria Hewes', 'vhewes3c', 'aMiR4jCY5', 'vhewes3c@virginia.edu', '2012-04-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (122, 'Sander Tradewell', 'stradewell3d', 'mGEa4gQ3', 'stradewell3d@chron.com', '2013-01-25', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (123, 'Lek Chezelle', 'lchezelle3e', 'Occ4O9', 'lchezelle3e@msu.edu', '2013-05-08', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (124, 'Patrizius Nanelli', 'pnanelli3f', '2cFYX0oM7hR', 'pnanelli3f@wikia.com', '2019-03-02', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (125, 'Norry Tideswell', 'ntideswell3g', 'EbUWmh13RB6h', 'ntideswell3g@cpanel.net', '2010-10-17', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (126, 'Meta Lahy', 'mlahy3h', 'pClm0wUnjoJ', 'mlahy3h@360.cn', '2021-03-11', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (127, 'Davine Vella', 'dvella3i', 'EOruMfy', 'dvella3i@amazon.co.jp', '2011-09-19', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (128, 'Davie Jeskin', 'djeskin3j', 'ee6Xt5Vjkp', 'djeskin3j@ftc.gov', '2011-12-02', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (129, 'Derry Rottcher', 'drottcher3k', 'mKQHAjOSuHD', 'drottcher3k@wikia.com', '2010-10-02', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (130, 'Lanni Loudyan', 'lloudyan3l', '5c4ycH5', 'lloudyan3l@icq.com', '2019-07-24', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (131, 'Martyn Fourcade', 'mfourcade3m', 'WnbgUB75rfr', 'mfourcade3m@tiny.cc', '2012-11-02', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (132, 'Rickie Routh', 'rrouth3n', 'vIGgLxakPL', 'rrouth3n@cornell.edu', '2011-11-08', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (133, 'Christyna Chucks', 'cchucks3o', '6YNCyKtIeDx', 'cchucks3o@about.com', '2016-05-13', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (134, 'Osbourne Gritsaev', 'ogritsaev3p', 'k2q5xJ', 'ogritsaev3p@merriam-webster.com', '2015-02-18', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (135, 'Marcelo Burles', 'mburles3q', 'CAnJxinvmd', 'mburles3q@nps.gov', '2017-02-23', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (136, 'Tiffany Tomowicz', 'ttomowicz3r', '6pZscq', 'ttomowicz3r@samsung.com', '2013-02-14', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (137, 'Maxim Corbitt', 'mcorbitt3s', 'VZreIl', 'mcorbitt3s@walmart.com', '2012-05-19', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (138, 'Morgana Fielden', 'mfielden3t', 'T8VZGGrDhGx3', 'mfielden3t@angelfire.com', '2011-08-04', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (139, 'Lauretta Cordoba', 'lcordoba3u', 'KkuNr9BeyYK', 'lcordoba3u@utexas.edu', '2016-06-03', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (140, 'Aaren Tapscott', 'atapscott3v', 'wSShi5R', 'atapscott3v@google.com.br', '2016-07-02', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (141, 'Jennie Cleator', 'jcleator3w', 'dActHLek1', 'jcleator3w@360.cn', '2016-04-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (142, 'Ber Hanrott', 'bhanrott3x', 'X7YSt9Aztet', 'bhanrott3x@unblog.fr', '2013-02-20', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (143, 'Philly Bodman', 'pbodman3y', 'EO3pFkeKxdv', 'pbodman3y@gov.uk', '2017-12-17', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (144, 'Joice Snoxell', 'jsnoxell3z', 'xZq9ty3uX', 'jsnoxell3z@t.co', '2016-05-25', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (145, 'Fredrika Hurlston', 'fhurlston40', 'k8vcINw', 'fhurlston40@mashable.com', '2018-09-02', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (146, 'Gretchen Humblestone', 'ghumblestone41', 'Yazk8enIIRE', 'ghumblestone41@angelfire.com', '2015-02-09', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (147, 'Wat Capaldi', 'wcapaldi42', 'kzHdjD3', 'wcapaldi42@mediafire.com', '2020-12-27', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (148, 'Tandy Acory', 'tacory43', 'K9tjrCrdHgQ', 'tacory43@army.mil', '2013-08-25', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (149, 'Valentine Giddy', 'vgiddy44', 'j6fHa3jTOk', 'vgiddy44@epa.gov', '2014-09-18', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (150, 'Gerianne Waulker', 'gwaulker45', 'MKlHzRrqno', 'gwaulker45@noaa.gov', '2020-10-21', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (151, 'Romonda Jerrold', 'rjerrold46', 'xXmYFlr', 'rjerrold46@csmonitor.com', '2018-06-01', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (152, 'Bent Lindfors', 'blindfors47', 'aHcVVmfboRAt', 'blindfors47@51.la', '2015-08-27', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (153, 'Maurie Every', 'mevery48', 'wl4XSFklemPc', 'mevery48@hud.gov', '2012-02-25', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (154, 'Glenna Oen', 'goen49', 'XEveQq0ro', 'goen49@gravatar.com', '2020-06-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (155, 'Lynea Woodier', 'lwoodier4a', 'eQtJTWD', 'lwoodier4a@amazon.com', '2013-11-17', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (156, 'Tanny Stammer', 'tstammer4b', 'QPzLJG5', 'tstammer4b@wikia.com', '2019-10-24', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (157, 'Shelley Dory', 'sdory4c', 'rnUJe4tEeR', 'sdory4c@pagesperso-orange.fr', '2018-03-16', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (158, 'Morris Smedley', 'msmedley4d', 'PriVEUkmtQAi', 'msmedley4d@t.co', '2016-08-19', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (159, 'Porter Duer', 'pduer4e', '5vm26ov', 'pduer4e@stanford.edu', '2019-12-31', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (160, 'Bengt Boeter', 'bboeter4f', 'ZM0j1pXDFfVM', 'bboeter4f@miitbeian.gov.cn', '2018-04-01', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (161, 'Theda Alred', 'talred4g', '8KoK8G', 'talred4g@cbc.ca', '2019-08-17', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (162, 'Jessamine De Lascy', 'jde4h', 'oC4py3RvsGg', 'jde4h@soup.io', '2019-11-04', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (163, 'Abbi Boffey', 'aboffey4i', 'pczdSX2j', 'aboffey4i@si.edu', '2015-12-31', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (164, 'Christen Tomlin', 'ctomlin4j', 'EYESe1YV', 'ctomlin4j@paginegialle.it', '2020-04-22', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (165, 'Shannah Gooddie', 'sgooddie4k', 'swD2sRJfYf', 'sgooddie4k@disqus.com', '2017-06-25', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (166, 'Skippy Vynehall', 'svynehall4l', 'SH5FpIKURARb', 'svynehall4l@dyndns.org', '2019-04-07', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (167, 'Tandie Gabriel', 'tgabriel4m', 'bLt8jDgr6h', 'tgabriel4m@cisco.com', '2015-10-25', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (168, 'Melicent McCarrick', 'mmccarrick4n', 'PDrbsYFq', 'mmccarrick4n@gov.uk', '2019-02-09', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (169, 'Jacintha Ragsdale', 'jragsdale4o', 'dhedFrEQ', 'jragsdale4o@pbs.org', '2014-05-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (170, 'Jim Jenny', 'jjenny4p', 'TKLXpfFXHxb2', 'jjenny4p@histats.com', '2012-04-10', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (171, 'Dulsea Jaxon', 'djaxon4q', 'Ir0ZxVy', 'djaxon4q@blog.com', '2012-07-17', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (172, 'Cammi Libero', 'clibero4r', 'EwMlNqwlJMS', 'clibero4r@youtube.com', '2019-03-20', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (173, 'Cristin Nanelli', 'cnanelli4s', '3sP72tO', 'cnanelli4s@wisc.edu', '2017-11-08', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (174, 'Othella Jenny', 'ojenny4t', 'Q68Zzam', 'ojenny4t@zdnet.com', '2010-09-05', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (175, 'Obadiah Rain', 'orain4u', 'Wg2d9fVc', 'orain4u@unesco.org', '2016-07-28', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (176, 'Mureil Van der Veldt', 'mvan4v', '8gwZY9NoPi8', 'mvan4v@paginegialle.it', '2011-07-30', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (177, 'Dacy Yanov', 'dyanov4w', 'bHdpjROb6Az', 'dyanov4w@forbes.com', '2012-09-17', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (178, 'Corine Gogarty', 'cgogarty4x', 'OOVNXgd', 'cgogarty4x@reddit.com', '2021-06-06', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (179, 'Juanita Glenny', 'jglenny4y', 'y626RywTv8', 'jglenny4y@furl.net', '2017-04-22', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (180, 'Carrie Ragdale', 'cragdale4z', 'WrNn1IAmxHY', 'cragdale4z@tuttocitta.it', '2018-11-02', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (181, 'Jena Ashborn', 'jashborn50', '0luyTixxpI', 'jashborn50@hexun.com', '2019-09-05', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (182, 'Hort Mincini', 'hmincini51', 'QbFr7o', 'hmincini51@myspace.com', '2016-04-23', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (183, 'Uriel MacAirt', 'umacairt52', 'VZHXwZ', 'umacairt52@wikia.com', '2013-09-23', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (184, 'Meridith Clubley', 'mclubley53', 'Bn6ub8rB1Y', 'mclubley53@arizona.edu', '2013-07-26', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (185, 'Abbot Andrea', 'aandrea54', 'FNYGalrAyo6r', 'aandrea54@tamu.edu', '2012-05-08', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (186, 'Loria Bertome', 'lbertome55', 'vOgJxLq', 'lbertome55@cnet.com', '2011-09-16', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (187, 'Cobb Farland', 'cfarland56', 'L8beb7kNU', 'cfarland56@yellowpages.com', '2012-04-30', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (188, 'Faulkner Stollenhof', 'fstollenhof57', 'sLkZFs', 'fstollenhof57@sohu.com', '2014-08-12', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (189, 'Shannon Beetles', 'sbeetles58', 'Ah6HE1Yzc', 'sbeetles58@nyu.edu', '2013-11-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (190, 'Artie Catton', 'acatton59', 'iyMFnln2SA', 'acatton59@w3.org', '2014-07-02', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (191, 'Sigismondo Newband', 'snewband5a', '0OIJdzpC', 'snewband5a@virginia.edu', '2016-07-09', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (192, 'Levy Crapper', 'lcrapper5b', 'pPkiMGRWCptv', 'lcrapper5b@scientificamerican.com', '2018-12-17', 'moderator');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (193, 'Standford McNee', 'smcnee5c', 'dgOxOIqqho', 'smcnee5c@eepurl.com', '2010-12-12', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (194, 'Ody Golding', 'ogolding5d', 'ZN4LAl', 'ogolding5d@usa.gov', '2017-06-06', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (195, 'Lisha Borthwick', 'lborthwick5e', 'CU1bkMUa8', 'lborthwick5e@telegraph.co.uk', '2015-03-15', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (196, 'Dallon Huot', 'dhuot5f', 'ZnecFZvo', 'dhuot5f@goo.gl', '2010-07-28', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (197, 'Shem Cosyns', 'scosyns5g', 'ZhNXEKXLA', 'scosyns5g@google.nl', '2016-11-25', 'banned');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (198, 'Alan Broadwell', 'abroadwell5h', 'XpLAvjK5R', 'abroadwell5h@fc2.com', '2016-09-15', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (199, 'Jeri Moncey', 'jmoncey5i', 'Shga1GE', 'jmoncey5i@constantcontact.com', '2012-03-28', 'normal');
insert into accounts (account_id, display_name, username, password, email, created_time, account_type) values (200, 'Elsey MacPhaden', 'emacphaden5j', '5zruJv', 'emacphaden5j@disqus.com', '2013-07-24', 'normal');







create table subscribe (
	subscribe_id INT,
	account_id INT,
	comic_id INT
);
insert into subscribe (subscribe_id, account_id, comic_id) values (1, 112, 25);
insert into subscribe (subscribe_id, account_id, comic_id) values (2, 158, 8);
insert into subscribe (subscribe_id, account_id, comic_id) values (3, 87, 9);
insert into subscribe (subscribe_id, account_id, comic_id) values (4, 197, 21);
insert into subscribe (subscribe_id, account_id, comic_id) values (5, 93, 9);
insert into subscribe (subscribe_id, account_id, comic_id) values (6, 65, 11);
insert into subscribe (subscribe_id, account_id, comic_id) values (7, 34, 26);
insert into subscribe (subscribe_id, account_id, comic_id) values (8, 111, 25);
insert into subscribe (subscribe_id, account_id, comic_id) values (9, 40, 26);
insert into subscribe (subscribe_id, account_id, comic_id) values (10, 113, 10);
insert into subscribe (subscribe_id, account_id, comic_id) values (11, 13, 20);
insert into subscribe (subscribe_id, account_id, comic_id) values (12, 77, 13);
insert into subscribe (subscribe_id, account_id, comic_id) values (13, 65, 29);
insert into subscribe (subscribe_id, account_id, comic_id) values (14, 81, 2);
insert into subscribe (subscribe_id, account_id, comic_id) values (15, 17, 20);
insert into subscribe (subscribe_id, account_id, comic_id) values (16, 9, 20);
insert into subscribe (subscribe_id, account_id, comic_id) values (17, 87, 9);
insert into subscribe (subscribe_id, account_id, comic_id) values (18, 136, 25);
insert into subscribe (subscribe_id, account_id, comic_id) values (19, 137, 11);
insert into subscribe (subscribe_id, account_id, comic_id) values (20, 112, 4);
insert into subscribe (subscribe_id, account_id, comic_id) values (21, 19, 14);
insert into subscribe (subscribe_id, account_id, comic_id) values (22, 12, 12);
insert into subscribe (subscribe_id, account_id, comic_id) values (23, 46, 25);
insert into subscribe (subscribe_id, account_id, comic_id) values (24, 48, 23);
insert into subscribe (subscribe_id, account_id, comic_id) values (25, 194, 14);
insert into subscribe (subscribe_id, account_id, comic_id) values (26, 99, 13);
insert into subscribe (subscribe_id, account_id, comic_id) values (27, 130, 27);
insert into subscribe (subscribe_id, account_id, comic_id) values (28, 128, 5);
insert into subscribe (subscribe_id, account_id, comic_id) values (29, 127, 19);
insert into subscribe (subscribe_id, account_id, comic_id) values (30, 94, 26);
insert into subscribe (subscribe_id, account_id, comic_id) values (31, 90, 20);
insert into subscribe (subscribe_id, account_id, comic_id) values (32, 29, 10);
insert into subscribe (subscribe_id, account_id, comic_id) values (33, 152, 7);
insert into subscribe (subscribe_id, account_id, comic_id) values (34, 57, 7);
insert into subscribe (subscribe_id, account_id, comic_id) values (35, 193, 14);
insert into subscribe (subscribe_id, account_id, comic_id) values (36, 118, 9);
insert into subscribe (subscribe_id, account_id, comic_id) values (37, 169, 18);
insert into subscribe (subscribe_id, account_id, comic_id) values (38, 131, 3);
insert into subscribe (subscribe_id, account_id, comic_id) values (39, 168, 9);
insert into subscribe (subscribe_id, account_id, comic_id) values (40, 59, 16);
insert into subscribe (subscribe_id, account_id, comic_id) values (41, 11, 15);
insert into subscribe (subscribe_id, account_id, comic_id) values (42, 3, 6);
insert into subscribe (subscribe_id, account_id, comic_id) values (43, 74, 22);
insert into subscribe (subscribe_id, account_id, comic_id) values (44, 81, 24);
insert into subscribe (subscribe_id, account_id, comic_id) values (45, 59, 25);
insert into subscribe (subscribe_id, account_id, comic_id) values (46, 145, 1);
insert into subscribe (subscribe_id, account_id, comic_id) values (47, 64, 28);
insert into subscribe (subscribe_id, account_id, comic_id) values (48, 40, 8);
insert into subscribe (subscribe_id, account_id, comic_id) values (49, 128, 28);
insert into subscribe (subscribe_id, account_id, comic_id) values (50, 128, 7);
insert into subscribe (subscribe_id, account_id, comic_id) values (51, 70, 11);
insert into subscribe (subscribe_id, account_id, comic_id) values (52, 102, 17);
insert into subscribe (subscribe_id, account_id, comic_id) values (53, 121, 26);
insert into subscribe (subscribe_id, account_id, comic_id) values (54, 39, 9);
insert into subscribe (subscribe_id, account_id, comic_id) values (55, 15, 18);
insert into subscribe (subscribe_id, account_id, comic_id) values (56, 134, 5);
insert into subscribe (subscribe_id, account_id, comic_id) values (57, 140, 27);
insert into subscribe (subscribe_id, account_id, comic_id) values (58, 35, 17);
insert into subscribe (subscribe_id, account_id, comic_id) values (59, 37, 2);
insert into subscribe (subscribe_id, account_id, comic_id) values (60, 176, 1);
insert into subscribe (subscribe_id, account_id, comic_id) values (61, 118, 8);
insert into subscribe (subscribe_id, account_id, comic_id) values (62, 156, 28);
insert into subscribe (subscribe_id, account_id, comic_id) values (63, 118, 17);
insert into subscribe (subscribe_id, account_id, comic_id) values (64, 83, 11);
insert into subscribe (subscribe_id, account_id, comic_id) values (65, 188, 23);
insert into subscribe (subscribe_id, account_id, comic_id) values (66, 169, 17);
insert into subscribe (subscribe_id, account_id, comic_id) values (67, 24, 27);
insert into subscribe (subscribe_id, account_id, comic_id) values (68, 190, 6);
insert into subscribe (subscribe_id, account_id, comic_id) values (69, 195, 28);
insert into subscribe (subscribe_id, account_id, comic_id) values (70, 153, 17);
insert into subscribe (subscribe_id, account_id, comic_id) values (71, 192, 18);
insert into subscribe (subscribe_id, account_id, comic_id) values (72, 122, 21);
insert into subscribe (subscribe_id, account_id, comic_id) values (73, 11, 14);
insert into subscribe (subscribe_id, account_id, comic_id) values (74, 58, 7);
insert into subscribe (subscribe_id, account_id, comic_id) values (75, 93, 14);
insert into subscribe (subscribe_id, account_id, comic_id) values (76, 189, 16);
insert into subscribe (subscribe_id, account_id, comic_id) values (77, 148, 30);
insert into subscribe (subscribe_id, account_id, comic_id) values (78, 44, 15);
insert into subscribe (subscribe_id, account_id, comic_id) values (79, 151, 20);
insert into subscribe (subscribe_id, account_id, comic_id) values (80, 66, 14);
insert into subscribe (subscribe_id, account_id, comic_id) values (81, 52, 17);
insert into subscribe (subscribe_id, account_id, comic_id) values (82, 53, 28);
insert into subscribe (subscribe_id, account_id, comic_id) values (83, 3, 26);
insert into subscribe (subscribe_id, account_id, comic_id) values (84, 8, 7);
insert into subscribe (subscribe_id, account_id, comic_id) values (85, 37, 12);
insert into subscribe (subscribe_id, account_id, comic_id) values (86, 34, 4);
insert into subscribe (subscribe_id, account_id, comic_id) values (87, 113, 21);
insert into subscribe (subscribe_id, account_id, comic_id) values (88, 41, 15);
insert into subscribe (subscribe_id, account_id, comic_id) values (89, 146, 14);
insert into subscribe (subscribe_id, account_id, comic_id) values (90, 160, 4);
insert into subscribe (subscribe_id, account_id, comic_id) values (91, 86, 27);
insert into subscribe (subscribe_id, account_id, comic_id) values (92, 118, 26);
insert into subscribe (subscribe_id, account_id, comic_id) values (93, 135, 29);
insert into subscribe (subscribe_id, account_id, comic_id) values (94, 23, 10);
insert into subscribe (subscribe_id, account_id, comic_id) values (95, 132, 21);
insert into subscribe (subscribe_id, account_id, comic_id) values (96, 38, 30);
insert into subscribe (subscribe_id, account_id, comic_id) values (97, 17, 15);
insert into subscribe (subscribe_id, account_id, comic_id) values (98, 175, 2);
insert into subscribe (subscribe_id, account_id, comic_id) values (99, 129, 19);
insert into subscribe (subscribe_id, account_id, comic_id) values (100, 67, 25);






create table read (
	read_id INT,
	chapter_id INT,
	account_id INT,
	date DATE
);
insert into read (read_id, chapter_id, account_id, date) values (1, 23, 176, '2020-09-23');
insert into read (read_id, chapter_id, account_id, date) values (2, 9, 170, '2021-01-06');
insert into read (read_id, chapter_id, account_id, date) values (3, 30, 132, '2020-09-16');
insert into read (read_id, chapter_id, account_id, date) values (4, 49, 55, '2021-04-27');
insert into read (read_id, chapter_id, account_id, date) values (5, 62, 64, '2020-08-15');
insert into read (read_id, chapter_id, account_id, date) values (6, 62, 126, '2021-02-09');
insert into read (read_id, chapter_id, account_id, date) values (7, 28, 57, '2020-08-25');
insert into read (read_id, chapter_id, account_id, date) values (8, 13, 43, '2021-01-27');
insert into read (read_id, chapter_id, account_id, date) values (9, 58, 31, '2020-10-10');
insert into read (read_id, chapter_id, account_id, date) values (10, 16, 151, '2021-02-12');
insert into read (read_id, chapter_id, account_id, date) values (11, 62, 65, '2021-01-11');
insert into read (read_id, chapter_id, account_id, date) values (12, 49, 96, '2021-02-20');
insert into read (read_id, chapter_id, account_id, date) values (13, 35, 17, '2021-02-01');
insert into read (read_id, chapter_id, account_id, date) values (14, 21, 166, '2021-03-26');
insert into read (read_id, chapter_id, account_id, date) values (15, 3, 153, '2020-07-27');
insert into read (read_id, chapter_id, account_id, date) values (16, 42, 28, '2021-04-19');
insert into read (read_id, chapter_id, account_id, date) values (17, 64, 176, '2020-07-26');
insert into read (read_id, chapter_id, account_id, date) values (18, 42, 142, '2020-07-23');
insert into read (read_id, chapter_id, account_id, date) values (19, 3, 200, '2020-09-08');
insert into read (read_id, chapter_id, account_id, date) values (20, 63, 146, '2021-01-11');
insert into read (read_id, chapter_id, account_id, date) values (21, 22, 59, '2020-11-06');
insert into read (read_id, chapter_id, account_id, date) values (22, 56, 101, '2021-03-09');
insert into read (read_id, chapter_id, account_id, date) values (23, 70, 91, '2020-12-02');
insert into read (read_id, chapter_id, account_id, date) values (24, 66, 6, '2020-09-27');
insert into read (read_id, chapter_id, account_id, date) values (25, 49, 126, '2020-09-25');
insert into read (read_id, chapter_id, account_id, date) values (26, 68, 6, '2021-01-28');
insert into read (read_id, chapter_id, account_id, date) values (27, 19, 10, '2020-12-01');
insert into read (read_id, chapter_id, account_id, date) values (28, 54, 67, '2020-11-07');
insert into read (read_id, chapter_id, account_id, date) values (29, 10, 167, '2021-05-28');
insert into read (read_id, chapter_id, account_id, date) values (30, 1, 179, '2020-11-12');
insert into read (read_id, chapter_id, account_id, date) values (31, 29, 50, '2020-11-08');
insert into read (read_id, chapter_id, account_id, date) values (32, 57, 104, '2020-07-07');
insert into read (read_id, chapter_id, account_id, date) values (33, 17, 50, '2021-02-03');
insert into read (read_id, chapter_id, account_id, date) values (34, 60, 148, '2021-04-05');
insert into read (read_id, chapter_id, account_id, date) values (35, 69, 156, '2020-07-09');
insert into read (read_id, chapter_id, account_id, date) values (36, 65, 190, '2021-03-16');
insert into read (read_id, chapter_id, account_id, date) values (37, 61, 92, '2020-06-29');
insert into read (read_id, chapter_id, account_id, date) values (38, 54, 179, '2020-09-16');
insert into read (read_id, chapter_id, account_id, date) values (39, 20, 62, '2021-02-21');
insert into read (read_id, chapter_id, account_id, date) values (40, 32, 68, '2021-03-09');
insert into read (read_id, chapter_id, account_id, date) values (41, 63, 85, '2020-06-20');
insert into read (read_id, chapter_id, account_id, date) values (42, 9, 105, '2021-01-17');
insert into read (read_id, chapter_id, account_id, date) values (43, 58, 54, '2020-12-17');
insert into read (read_id, chapter_id, account_id, date) values (44, 25, 135, '2021-03-01');
insert into read (read_id, chapter_id, account_id, date) values (45, 11, 150, '2021-06-07');
insert into read (read_id, chapter_id, account_id, date) values (46, 35, 194, '2021-02-27');
insert into read (read_id, chapter_id, account_id, date) values (47, 5, 75, '2020-12-01');
insert into read (read_id, chapter_id, account_id, date) values (48, 59, 166, '2021-05-13');
insert into read (read_id, chapter_id, account_id, date) values (49, 49, 66, '2020-10-20');
insert into read (read_id, chapter_id, account_id, date) values (50, 10, 54, '2021-01-01');
insert into read (read_id, chapter_id, account_id, date) values (51, 5, 43, '2020-09-27');
insert into read (read_id, chapter_id, account_id, date) values (52, 2, 151, '2021-04-27');
insert into read (read_id, chapter_id, account_id, date) values (53, 30, 132, '2020-06-22');
insert into read (read_id, chapter_id, account_id, date) values (54, 66, 71, '2021-06-04');
insert into read (read_id, chapter_id, account_id, date) values (55, 42, 97, '2021-05-04');
insert into read (read_id, chapter_id, account_id, date) values (56, 55, 159, '2020-12-26');
insert into read (read_id, chapter_id, account_id, date) values (57, 15, 191, '2020-11-02');
insert into read (read_id, chapter_id, account_id, date) values (58, 19, 48, '2020-09-15');
insert into read (read_id, chapter_id, account_id, date) values (59, 66, 103, '2021-03-23');
insert into read (read_id, chapter_id, account_id, date) values (60, 37, 74, '2021-01-27');
insert into read (read_id, chapter_id, account_id, date) values (61, 6, 153, '2021-04-17');
insert into read (read_id, chapter_id, account_id, date) values (62, 60, 71, '2020-12-01');
insert into read (read_id, chapter_id, account_id, date) values (63, 28, 156, '2020-07-17');
insert into read (read_id, chapter_id, account_id, date) values (64, 18, 138, '2021-04-20');
insert into read (read_id, chapter_id, account_id, date) values (65, 11, 120, '2020-08-19');
insert into read (read_id, chapter_id, account_id, date) values (66, 18, 115, '2020-07-30');
insert into read (read_id, chapter_id, account_id, date) values (67, 62, 89, '2020-11-27');
insert into read (read_id, chapter_id, account_id, date) values (68, 59, 63, '2021-02-24');
insert into read (read_id, chapter_id, account_id, date) values (69, 54, 72, '2020-09-10');
insert into read (read_id, chapter_id, account_id, date) values (70, 8, 65, '2021-01-31');
insert into read (read_id, chapter_id, account_id, date) values (71, 21, 162, '2021-01-03');
insert into read (read_id, chapter_id, account_id, date) values (72, 68, 79, '2021-04-09');
insert into read (read_id, chapter_id, account_id, date) values (73, 14, 123, '2020-08-15');
insert into read (read_id, chapter_id, account_id, date) values (74, 14, 123, '2020-10-26');
insert into read (read_id, chapter_id, account_id, date) values (75, 1, 17, '2020-11-11');
insert into read (read_id, chapter_id, account_id, date) values (76, 29, 157, '2021-05-19');
insert into read (read_id, chapter_id, account_id, date) values (77, 68, 187, '2021-04-12');
insert into read (read_id, chapter_id, account_id, date) values (78, 46, 45, '2020-06-23');
insert into read (read_id, chapter_id, account_id, date) values (79, 43, 113, '2021-04-07');
insert into read (read_id, chapter_id, account_id, date) values (80, 27, 71, '2021-03-17');
insert into read (read_id, chapter_id, account_id, date) values (81, 12, 117, '2020-11-14');
insert into read (read_id, chapter_id, account_id, date) values (82, 64, 49, '2021-05-15');
insert into read (read_id, chapter_id, account_id, date) values (83, 52, 9, '2021-04-06');
insert into read (read_id, chapter_id, account_id, date) values (84, 39, 37, '2020-08-27');
insert into read (read_id, chapter_id, account_id, date) values (85, 31, 164, '2021-04-27');
insert into read (read_id, chapter_id, account_id, date) values (86, 29, 57, '2020-08-26');
insert into read (read_id, chapter_id, account_id, date) values (87, 19, 127, '2021-01-17');
insert into read (read_id, chapter_id, account_id, date) values (88, 30, 107, '2020-07-01');
insert into read (read_id, chapter_id, account_id, date) values (89, 1, 185, '2020-08-08');
insert into read (read_id, chapter_id, account_id, date) values (90, 69, 62, '2020-09-19');
insert into read (read_id, chapter_id, account_id, date) values (91, 7, 2, '2020-11-18');
insert into read (read_id, chapter_id, account_id, date) values (92, 34, 169, '2020-09-12');
insert into read (read_id, chapter_id, account_id, date) values (93, 44, 5, '2020-09-25');
insert into read (read_id, chapter_id, account_id, date) values (94, 59, 22, '2021-01-21');
insert into read (read_id, chapter_id, account_id, date) values (95, 22, 197, '2020-11-18');
insert into read (read_id, chapter_id, account_id, date) values (96, 24, 14, '2021-05-14');
insert into read (read_id, chapter_id, account_id, date) values (97, 62, 172, '2021-01-20');
insert into read (read_id, chapter_id, account_id, date) values (98, 38, 148, '2021-04-29');
insert into read (read_id, chapter_id, account_id, date) values (99, 22, 23, '2020-12-28');
insert into read (read_id, chapter_id, account_id, date) values (100, 29, 149, '2020-08-01');
insert into read (read_id, chapter_id, account_id, date) values (101, 40, 168, '2021-06-12');
insert into read (read_id, chapter_id, account_id, date) values (102, 56, 118, '2020-06-16');
insert into read (read_id, chapter_id, account_id, date) values (103, 38, 157, '2020-10-04');
insert into read (read_id, chapter_id, account_id, date) values (104, 53, 171, '2021-05-14');
insert into read (read_id, chapter_id, account_id, date) values (105, 69, 48, '2020-12-24');
insert into read (read_id, chapter_id, account_id, date) values (106, 60, 129, '2021-04-13');
insert into read (read_id, chapter_id, account_id, date) values (107, 43, 67, '2020-08-24');
insert into read (read_id, chapter_id, account_id, date) values (108, 36, 181, '2021-06-11');
insert into read (read_id, chapter_id, account_id, date) values (109, 8, 20, '2020-11-24');
insert into read (read_id, chapter_id, account_id, date) values (110, 20, 138, '2021-04-30');
insert into read (read_id, chapter_id, account_id, date) values (111, 21, 161, '2021-04-15');
insert into read (read_id, chapter_id, account_id, date) values (112, 59, 180, '2020-07-18');
insert into read (read_id, chapter_id, account_id, date) values (113, 66, 144, '2021-01-18');
insert into read (read_id, chapter_id, account_id, date) values (114, 5, 33, '2021-04-02');
insert into read (read_id, chapter_id, account_id, date) values (115, 20, 182, '2020-08-29');
insert into read (read_id, chapter_id, account_id, date) values (116, 31, 144, '2021-05-29');
insert into read (read_id, chapter_id, account_id, date) values (117, 70, 145, '2021-01-23');
insert into read (read_id, chapter_id, account_id, date) values (118, 16, 54, '2020-09-24');
insert into read (read_id, chapter_id, account_id, date) values (119, 44, 43, '2020-11-29');
insert into read (read_id, chapter_id, account_id, date) values (120, 31, 74, '2021-03-24');
insert into read (read_id, chapter_id, account_id, date) values (121, 58, 3, '2020-10-08');
insert into read (read_id, chapter_id, account_id, date) values (122, 67, 138, '2021-02-10');
insert into read (read_id, chapter_id, account_id, date) values (123, 37, 134, '2020-10-05');
insert into read (read_id, chapter_id, account_id, date) values (124, 46, 43, '2020-09-03');
insert into read (read_id, chapter_id, account_id, date) values (125, 45, 117, '2020-07-04');
insert into read (read_id, chapter_id, account_id, date) values (126, 28, 84, '2021-03-22');
insert into read (read_id, chapter_id, account_id, date) values (127, 35, 42, '2021-02-16');
insert into read (read_id, chapter_id, account_id, date) values (128, 25, 166, '2021-02-02');
insert into read (read_id, chapter_id, account_id, date) values (129, 61, 57, '2020-12-06');
insert into read (read_id, chapter_id, account_id, date) values (130, 42, 127, '2020-12-14');
insert into read (read_id, chapter_id, account_id, date) values (131, 57, 174, '2021-04-09');
insert into read (read_id, chapter_id, account_id, date) values (132, 23, 45, '2020-07-22');
insert into read (read_id, chapter_id, account_id, date) values (133, 30, 5, '2021-04-19');
insert into read (read_id, chapter_id, account_id, date) values (134, 20, 24, '2021-05-15');
insert into read (read_id, chapter_id, account_id, date) values (135, 10, 61, '2020-11-12');
insert into read (read_id, chapter_id, account_id, date) values (136, 54, 49, '2020-07-09');
insert into read (read_id, chapter_id, account_id, date) values (137, 70, 117, '2020-09-21');
insert into read (read_id, chapter_id, account_id, date) values (138, 3, 63, '2020-12-31');
insert into read (read_id, chapter_id, account_id, date) values (139, 62, 27, '2020-08-09');
insert into read (read_id, chapter_id, account_id, date) values (140, 69, 24, '2021-05-27');
insert into read (read_id, chapter_id, account_id, date) values (141, 14, 72, '2020-11-09');
insert into read (read_id, chapter_id, account_id, date) values (142, 62, 103, '2021-01-14');
insert into read (read_id, chapter_id, account_id, date) values (143, 29, 73, '2020-11-17');
insert into read (read_id, chapter_id, account_id, date) values (144, 60, 144, '2020-09-24');
insert into read (read_id, chapter_id, account_id, date) values (145, 48, 112, '2020-07-31');
insert into read (read_id, chapter_id, account_id, date) values (146, 44, 16, '2021-04-02');
insert into read (read_id, chapter_id, account_id, date) values (147, 39, 48, '2020-10-11');
insert into read (read_id, chapter_id, account_id, date) values (148, 25, 120, '2020-11-28');
insert into read (read_id, chapter_id, account_id, date) values (149, 55, 36, '2021-05-20');
insert into read (read_id, chapter_id, account_id, date) values (150, 25, 38, '2020-07-14');
insert into read (read_id, chapter_id, account_id, date) values (151, 68, 119, '2021-02-23');
insert into read (read_id, chapter_id, account_id, date) values (152, 24, 18, '2020-06-30');
insert into read (read_id, chapter_id, account_id, date) values (153, 34, 189, '2021-02-26');
insert into read (read_id, chapter_id, account_id, date) values (154, 43, 66, '2020-06-22');
insert into read (read_id, chapter_id, account_id, date) values (155, 20, 69, '2021-03-26');
insert into read (read_id, chapter_id, account_id, date) values (156, 23, 93, '2021-06-14');
insert into read (read_id, chapter_id, account_id, date) values (157, 26, 104, '2020-10-03');
insert into read (read_id, chapter_id, account_id, date) values (158, 24, 3, '2021-05-22');
insert into read (read_id, chapter_id, account_id, date) values (159, 8, 64, '2021-05-25');
insert into read (read_id, chapter_id, account_id, date) values (160, 21, 172, '2021-03-25');
insert into read (read_id, chapter_id, account_id, date) values (161, 15, 72, '2020-10-14');
insert into read (read_id, chapter_id, account_id, date) values (162, 38, 5, '2020-06-20');
insert into read (read_id, chapter_id, account_id, date) values (163, 37, 149, '2021-06-03');
insert into read (read_id, chapter_id, account_id, date) values (164, 32, 145, '2020-11-19');
insert into read (read_id, chapter_id, account_id, date) values (165, 46, 7, '2020-09-14');
insert into read (read_id, chapter_id, account_id, date) values (166, 50, 120, '2021-01-27');
insert into read (read_id, chapter_id, account_id, date) values (167, 50, 71, '2020-09-20');
insert into read (read_id, chapter_id, account_id, date) values (168, 45, 196, '2020-08-21');
insert into read (read_id, chapter_id, account_id, date) values (169, 68, 92, '2021-02-22');
insert into read (read_id, chapter_id, account_id, date) values (170, 63, 158, '2020-08-20');
insert into read (read_id, chapter_id, account_id, date) values (171, 15, 152, '2020-08-02');
insert into read (read_id, chapter_id, account_id, date) values (172, 28, 146, '2020-07-14');
insert into read (read_id, chapter_id, account_id, date) values (173, 24, 125, '2020-12-08');
insert into read (read_id, chapter_id, account_id, date) values (174, 7, 21, '2020-06-21');
insert into read (read_id, chapter_id, account_id, date) values (175, 58, 75, '2020-09-08');
insert into read (read_id, chapter_id, account_id, date) values (176, 34, 178, '2020-06-21');
insert into read (read_id, chapter_id, account_id, date) values (177, 62, 122, '2020-06-18');
insert into read (read_id, chapter_id, account_id, date) values (178, 9, 68, '2020-11-14');
insert into read (read_id, chapter_id, account_id, date) values (179, 24, 87, '2021-05-02');
insert into read (read_id, chapter_id, account_id, date) values (180, 32, 110, '2021-02-11');
insert into read (read_id, chapter_id, account_id, date) values (181, 67, 120, '2020-06-17');
insert into read (read_id, chapter_id, account_id, date) values (182, 39, 163, '2020-09-26');
insert into read (read_id, chapter_id, account_id, date) values (183, 69, 87, '2020-09-09');
insert into read (read_id, chapter_id, account_id, date) values (184, 34, 71, '2020-08-24');
insert into read (read_id, chapter_id, account_id, date) values (185, 60, 134, '2020-12-19');
insert into read (read_id, chapter_id, account_id, date) values (186, 37, 65, '2020-09-18');
insert into read (read_id, chapter_id, account_id, date) values (187, 17, 181, '2020-07-05');
insert into read (read_id, chapter_id, account_id, date) values (188, 63, 139, '2021-01-04');
insert into read (read_id, chapter_id, account_id, date) values (189, 48, 97, '2020-06-16');
insert into read (read_id, chapter_id, account_id, date) values (190, 38, 170, '2021-01-21');
insert into read (read_id, chapter_id, account_id, date) values (191, 36, 8, '2020-07-15');
insert into read (read_id, chapter_id, account_id, date) values (192, 45, 125, '2020-09-28');
insert into read (read_id, chapter_id, account_id, date) values (193, 8, 5, '2020-08-14');
insert into read (read_id, chapter_id, account_id, date) values (194, 53, 136, '2020-07-05');
insert into read (read_id, chapter_id, account_id, date) values (195, 3, 139, '2020-09-22');
insert into read (read_id, chapter_id, account_id, date) values (196, 13, 106, '2021-02-18');
insert into read (read_id, chapter_id, account_id, date) values (197, 35, 63, '2020-09-22');
insert into read (read_id, chapter_id, account_id, date) values (198, 48, 8, '2021-02-05');
insert into read (read_id, chapter_id, account_id, date) values (199, 57, 71, '2021-05-16');
insert into read (read_id, chapter_id, account_id, date) values (200, 23, 133, '2020-12-31');
insert into read (read_id, chapter_id, account_id, date) values (201, 28, 111, '2021-01-20');
insert into read (read_id, chapter_id, account_id, date) values (202, 57, 109, '2020-12-11');
insert into read (read_id, chapter_id, account_id, date) values (203, 42, 79, '2021-02-03');
insert into read (read_id, chapter_id, account_id, date) values (204, 36, 25, '2021-04-30');
insert into read (read_id, chapter_id, account_id, date) values (205, 65, 112, '2021-02-28');
insert into read (read_id, chapter_id, account_id, date) values (206, 47, 142, '2021-04-03');
insert into read (read_id, chapter_id, account_id, date) values (207, 53, 91, '2021-04-04');
insert into read (read_id, chapter_id, account_id, date) values (208, 8, 168, '2021-02-28');
insert into read (read_id, chapter_id, account_id, date) values (209, 40, 53, '2021-06-15');
insert into read (read_id, chapter_id, account_id, date) values (210, 35, 117, '2020-10-14');
insert into read (read_id, chapter_id, account_id, date) values (211, 18, 37, '2020-09-18');
insert into read (read_id, chapter_id, account_id, date) values (212, 10, 166, '2020-08-17');
insert into read (read_id, chapter_id, account_id, date) values (213, 53, 172, '2021-01-31');
insert into read (read_id, chapter_id, account_id, date) values (214, 48, 48, '2020-10-05');
insert into read (read_id, chapter_id, account_id, date) values (215, 41, 168, '2020-10-17');
insert into read (read_id, chapter_id, account_id, date) values (216, 1, 83, '2021-01-07');
insert into read (read_id, chapter_id, account_id, date) values (217, 41, 131, '2020-11-23');
insert into read (read_id, chapter_id, account_id, date) values (218, 44, 82, '2020-06-21');
insert into read (read_id, chapter_id, account_id, date) values (219, 64, 174, '2020-09-08');
insert into read (read_id, chapter_id, account_id, date) values (220, 37, 130, '2020-07-10');
insert into read (read_id, chapter_id, account_id, date) values (221, 5, 121, '2021-01-27');
insert into read (read_id, chapter_id, account_id, date) values (222, 51, 81, '2020-12-20');
insert into read (read_id, chapter_id, account_id, date) values (223, 54, 58, '2021-02-23');
insert into read (read_id, chapter_id, account_id, date) values (224, 37, 120, '2020-06-17');
insert into read (read_id, chapter_id, account_id, date) values (225, 15, 123, '2020-11-12');
insert into read (read_id, chapter_id, account_id, date) values (226, 63, 90, '2020-06-28');
insert into read (read_id, chapter_id, account_id, date) values (227, 42, 142, '2021-04-05');
insert into read (read_id, chapter_id, account_id, date) values (228, 17, 22, '2020-10-05');
insert into read (read_id, chapter_id, account_id, date) values (229, 56, 179, '2021-03-15');
insert into read (read_id, chapter_id, account_id, date) values (230, 15, 173, '2021-05-18');
insert into read (read_id, chapter_id, account_id, date) values (231, 9, 24, '2020-12-01');
insert into read (read_id, chapter_id, account_id, date) values (232, 44, 11, '2020-11-23');
insert into read (read_id, chapter_id, account_id, date) values (233, 55, 134, '2021-03-30');
insert into read (read_id, chapter_id, account_id, date) values (234, 7, 145, '2020-12-27');
insert into read (read_id, chapter_id, account_id, date) values (235, 49, 132, '2020-12-03');
insert into read (read_id, chapter_id, account_id, date) values (236, 46, 63, '2021-06-11');
insert into read (read_id, chapter_id, account_id, date) values (237, 44, 34, '2021-02-11');
insert into read (read_id, chapter_id, account_id, date) values (238, 49, 69, '2020-07-07');
insert into read (read_id, chapter_id, account_id, date) values (239, 42, 6, '2020-09-21');
insert into read (read_id, chapter_id, account_id, date) values (240, 52, 158, '2021-04-09');
insert into read (read_id, chapter_id, account_id, date) values (241, 69, 136, '2020-11-29');
insert into read (read_id, chapter_id, account_id, date) values (242, 60, 39, '2020-12-01');
insert into read (read_id, chapter_id, account_id, date) values (243, 26, 171, '2021-03-04');
insert into read (read_id, chapter_id, account_id, date) values (244, 65, 185, '2020-07-24');
insert into read (read_id, chapter_id, account_id, date) values (245, 15, 198, '2020-12-26');
insert into read (read_id, chapter_id, account_id, date) values (246, 20, 18, '2020-12-23');
insert into read (read_id, chapter_id, account_id, date) values (247, 30, 161, '2020-08-05');
insert into read (read_id, chapter_id, account_id, date) values (248, 10, 7, '2020-12-23');
insert into read (read_id, chapter_id, account_id, date) values (249, 6, 197, '2021-05-02');
insert into read (read_id, chapter_id, account_id, date) values (250, 46, 126, '2020-07-31');
insert into read (read_id, chapter_id, account_id, date) values (251, 19, 143, '2021-03-03');
insert into read (read_id, chapter_id, account_id, date) values (252, 23, 160, '2021-03-19');
insert into read (read_id, chapter_id, account_id, date) values (253, 13, 184, '2021-02-12');
insert into read (read_id, chapter_id, account_id, date) values (254, 69, 113, '2020-10-30');
insert into read (read_id, chapter_id, account_id, date) values (255, 64, 174, '2020-10-23');
insert into read (read_id, chapter_id, account_id, date) values (256, 58, 93, '2020-10-24');
insert into read (read_id, chapter_id, account_id, date) values (257, 31, 75, '2021-02-14');
insert into read (read_id, chapter_id, account_id, date) values (258, 18, 183, '2021-02-26');
insert into read (read_id, chapter_id, account_id, date) values (259, 10, 63, '2021-06-14');
insert into read (read_id, chapter_id, account_id, date) values (260, 44, 98, '2020-12-07');
insert into read (read_id, chapter_id, account_id, date) values (261, 60, 13, '2020-11-13');
insert into read (read_id, chapter_id, account_id, date) values (262, 43, 194, '2021-02-09');
insert into read (read_id, chapter_id, account_id, date) values (263, 37, 92, '2021-06-01');
insert into read (read_id, chapter_id, account_id, date) values (264, 15, 69, '2021-01-08');
insert into read (read_id, chapter_id, account_id, date) values (265, 42, 60, '2020-10-04');
insert into read (read_id, chapter_id, account_id, date) values (266, 52, 147, '2021-01-10');
insert into read (read_id, chapter_id, account_id, date) values (267, 44, 93, '2021-03-23');
insert into read (read_id, chapter_id, account_id, date) values (268, 44, 158, '2020-07-11');
insert into read (read_id, chapter_id, account_id, date) values (269, 20, 74, '2021-01-28');
insert into read (read_id, chapter_id, account_id, date) values (270, 66, 54, '2020-11-01');
insert into read (read_id, chapter_id, account_id, date) values (271, 50, 167, '2021-05-18');
insert into read (read_id, chapter_id, account_id, date) values (272, 36, 147, '2021-05-10');
insert into read (read_id, chapter_id, account_id, date) values (273, 16, 182, '2020-09-14');
insert into read (read_id, chapter_id, account_id, date) values (274, 70, 35, '2020-09-22');
insert into read (read_id, chapter_id, account_id, date) values (275, 40, 148, '2020-07-14');
insert into read (read_id, chapter_id, account_id, date) values (276, 17, 114, '2021-05-06');
insert into read (read_id, chapter_id, account_id, date) values (277, 29, 15, '2020-07-27');
insert into read (read_id, chapter_id, account_id, date) values (278, 27, 55, '2021-05-27');
insert into read (read_id, chapter_id, account_id, date) values (279, 37, 82, '2020-11-24');
insert into read (read_id, chapter_id, account_id, date) values (280, 16, 147, '2020-06-21');
insert into read (read_id, chapter_id, account_id, date) values (281, 52, 108, '2021-05-30');
insert into read (read_id, chapter_id, account_id, date) values (282, 36, 178, '2020-12-23');
insert into read (read_id, chapter_id, account_id, date) values (283, 36, 21, '2021-01-07');
insert into read (read_id, chapter_id, account_id, date) values (284, 49, 117, '2020-07-07');
insert into read (read_id, chapter_id, account_id, date) values (285, 27, 179, '2020-11-04');
insert into read (read_id, chapter_id, account_id, date) values (286, 39, 56, '2020-07-17');
insert into read (read_id, chapter_id, account_id, date) values (287, 69, 134, '2021-05-27');
insert into read (read_id, chapter_id, account_id, date) values (288, 33, 13, '2020-10-31');
insert into read (read_id, chapter_id, account_id, date) values (289, 59, 189, '2021-02-12');
insert into read (read_id, chapter_id, account_id, date) values (290, 38, 99, '2021-04-21');
insert into read (read_id, chapter_id, account_id, date) values (291, 30, 70, '2021-03-09');
insert into read (read_id, chapter_id, account_id, date) values (292, 3, 110, '2021-02-18');
insert into read (read_id, chapter_id, account_id, date) values (293, 54, 33, '2021-06-15');
insert into read (read_id, chapter_id, account_id, date) values (294, 22, 77, '2021-03-18');
insert into read (read_id, chapter_id, account_id, date) values (295, 61, 31, '2021-05-04');
insert into read (read_id, chapter_id, account_id, date) values (296, 61, 98, '2021-01-19');
insert into read (read_id, chapter_id, account_id, date) values (297, 63, 182, '2020-09-28');
insert into read (read_id, chapter_id, account_id, date) values (298, 24, 46, '2020-11-08');
insert into read (read_id, chapter_id, account_id, date) values (299, 32, 197, '2020-07-12');
insert into read (read_id, chapter_id, account_id, date) values (300, 37, 128, '2021-03-22');
insert into read (read_id, chapter_id, account_id, date) values (301, 35, 199, '2020-12-24');
insert into read (read_id, chapter_id, account_id, date) values (302, 63, 157, '2020-07-06');
insert into read (read_id, chapter_id, account_id, date) values (303, 16, 137, '2021-02-18');
insert into read (read_id, chapter_id, account_id, date) values (304, 48, 99, '2021-04-02');
insert into read (read_id, chapter_id, account_id, date) values (305, 10, 31, '2020-09-23');
insert into read (read_id, chapter_id, account_id, date) values (306, 68, 47, '2021-04-20');
insert into read (read_id, chapter_id, account_id, date) values (307, 2, 61, '2021-03-29');
insert into read (read_id, chapter_id, account_id, date) values (308, 5, 24, '2020-07-26');
insert into read (read_id, chapter_id, account_id, date) values (309, 16, 66, '2020-07-16');
insert into read (read_id, chapter_id, account_id, date) values (310, 68, 103, '2020-08-28');
insert into read (read_id, chapter_id, account_id, date) values (311, 53, 121, '2021-06-13');
insert into read (read_id, chapter_id, account_id, date) values (312, 37, 60, '2020-10-06');
insert into read (read_id, chapter_id, account_id, date) values (313, 11, 63, '2021-04-19');
insert into read (read_id, chapter_id, account_id, date) values (314, 11, 20, '2020-08-21');
insert into read (read_id, chapter_id, account_id, date) values (315, 35, 105, '2020-08-03');
insert into read (read_id, chapter_id, account_id, date) values (316, 63, 168, '2021-03-19');
insert into read (read_id, chapter_id, account_id, date) values (317, 29, 119, '2020-11-23');
insert into read (read_id, chapter_id, account_id, date) values (318, 36, 66, '2021-02-16');
insert into read (read_id, chapter_id, account_id, date) values (319, 2, 99, '2021-01-31');
insert into read (read_id, chapter_id, account_id, date) values (320, 5, 178, '2020-09-14');
insert into read (read_id, chapter_id, account_id, date) values (321, 51, 67, '2021-06-09');
insert into read (read_id, chapter_id, account_id, date) values (322, 65, 58, '2020-10-16');
insert into read (read_id, chapter_id, account_id, date) values (323, 67, 130, '2021-06-02');
insert into read (read_id, chapter_id, account_id, date) values (324, 6, 19, '2020-07-02');
insert into read (read_id, chapter_id, account_id, date) values (325, 26, 156, '2020-12-28');
insert into read (read_id, chapter_id, account_id, date) values (326, 9, 63, '2020-12-07');
insert into read (read_id, chapter_id, account_id, date) values (327, 5, 56, '2020-06-28');
insert into read (read_id, chapter_id, account_id, date) values (328, 62, 52, '2021-05-02');
insert into read (read_id, chapter_id, account_id, date) values (329, 8, 98, '2020-07-18');
insert into read (read_id, chapter_id, account_id, date) values (330, 41, 171, '2021-02-24');
insert into read (read_id, chapter_id, account_id, date) values (331, 4, 38, '2020-07-02');
insert into read (read_id, chapter_id, account_id, date) values (332, 1, 164, '2021-03-09');
insert into read (read_id, chapter_id, account_id, date) values (333, 25, 141, '2021-02-27');
insert into read (read_id, chapter_id, account_id, date) values (334, 42, 10, '2021-05-15');
insert into read (read_id, chapter_id, account_id, date) values (335, 15, 12, '2021-03-12');
insert into read (read_id, chapter_id, account_id, date) values (336, 50, 104, '2020-11-13');
insert into read (read_id, chapter_id, account_id, date) values (337, 53, 24, '2021-03-10');
insert into read (read_id, chapter_id, account_id, date) values (338, 34, 63, '2020-10-08');
insert into read (read_id, chapter_id, account_id, date) values (339, 53, 167, '2021-06-02');
insert into read (read_id, chapter_id, account_id, date) values (340, 59, 32, '2020-09-05');
insert into read (read_id, chapter_id, account_id, date) values (341, 67, 171, '2020-11-23');
insert into read (read_id, chapter_id, account_id, date) values (342, 29, 142, '2021-03-14');
insert into read (read_id, chapter_id, account_id, date) values (343, 27, 117, '2021-03-07');
insert into read (read_id, chapter_id, account_id, date) values (344, 53, 107, '2020-11-08');
insert into read (read_id, chapter_id, account_id, date) values (345, 62, 180, '2021-03-19');
insert into read (read_id, chapter_id, account_id, date) values (346, 68, 177, '2021-05-01');
insert into read (read_id, chapter_id, account_id, date) values (347, 66, 187, '2020-11-13');
insert into read (read_id, chapter_id, account_id, date) values (348, 38, 94, '2020-10-12');
insert into read (read_id, chapter_id, account_id, date) values (349, 47, 102, '2021-02-23');
insert into read (read_id, chapter_id, account_id, date) values (350, 54, 117, '2020-09-29');
insert into read (read_id, chapter_id, account_id, date) values (351, 6, 189, '2020-10-02');
insert into read (read_id, chapter_id, account_id, date) values (352, 70, 3, '2020-10-12');
insert into read (read_id, chapter_id, account_id, date) values (353, 20, 168, '2021-01-17');
insert into read (read_id, chapter_id, account_id, date) values (354, 16, 134, '2020-09-11');
insert into read (read_id, chapter_id, account_id, date) values (355, 36, 12, '2021-03-08');
insert into read (read_id, chapter_id, account_id, date) values (356, 27, 200, '2020-09-19');
insert into read (read_id, chapter_id, account_id, date) values (357, 46, 92, '2021-02-21');
insert into read (read_id, chapter_id, account_id, date) values (358, 24, 168, '2021-06-13');
insert into read (read_id, chapter_id, account_id, date) values (359, 27, 31, '2021-04-17');
insert into read (read_id, chapter_id, account_id, date) values (360, 12, 123, '2021-02-13');
insert into read (read_id, chapter_id, account_id, date) values (361, 9, 1, '2021-06-13');
insert into read (read_id, chapter_id, account_id, date) values (362, 52, 140, '2020-08-23');
insert into read (read_id, chapter_id, account_id, date) values (363, 50, 16, '2020-10-22');
insert into read (read_id, chapter_id, account_id, date) values (364, 30, 19, '2020-08-01');
insert into read (read_id, chapter_id, account_id, date) values (365, 18, 71, '2021-03-22');
insert into read (read_id, chapter_id, account_id, date) values (366, 21, 67, '2021-04-17');
insert into read (read_id, chapter_id, account_id, date) values (367, 27, 97, '2021-03-27');
insert into read (read_id, chapter_id, account_id, date) values (368, 51, 80, '2020-12-30');
insert into read (read_id, chapter_id, account_id, date) values (369, 32, 48, '2020-06-20');
insert into read (read_id, chapter_id, account_id, date) values (370, 28, 141, '2020-07-31');
insert into read (read_id, chapter_id, account_id, date) values (371, 55, 155, '2020-11-17');
insert into read (read_id, chapter_id, account_id, date) values (372, 16, 173, '2021-05-17');
insert into read (read_id, chapter_id, account_id, date) values (373, 58, 10, '2021-04-11');
insert into read (read_id, chapter_id, account_id, date) values (374, 53, 112, '2021-03-06');
insert into read (read_id, chapter_id, account_id, date) values (375, 50, 68, '2021-02-18');
insert into read (read_id, chapter_id, account_id, date) values (376, 24, 30, '2020-09-11');
insert into read (read_id, chapter_id, account_id, date) values (377, 16, 115, '2021-03-14');
insert into read (read_id, chapter_id, account_id, date) values (378, 12, 75, '2020-07-26');
insert into read (read_id, chapter_id, account_id, date) values (379, 22, 33, '2020-08-13');
insert into read (read_id, chapter_id, account_id, date) values (380, 67, 103, '2021-04-08');
insert into read (read_id, chapter_id, account_id, date) values (381, 34, 140, '2020-08-10');
insert into read (read_id, chapter_id, account_id, date) values (382, 70, 139, '2020-09-12');
insert into read (read_id, chapter_id, account_id, date) values (383, 50, 4, '2020-07-27');
insert into read (read_id, chapter_id, account_id, date) values (384, 52, 83, '2021-02-25');
insert into read (read_id, chapter_id, account_id, date) values (385, 21, 160, '2020-10-04');
insert into read (read_id, chapter_id, account_id, date) values (386, 34, 32, '2021-04-25');
insert into read (read_id, chapter_id, account_id, date) values (387, 66, 121, '2021-01-12');
insert into read (read_id, chapter_id, account_id, date) values (388, 34, 156, '2021-05-22');
insert into read (read_id, chapter_id, account_id, date) values (389, 64, 34, '2021-01-11');
insert into read (read_id, chapter_id, account_id, date) values (390, 26, 176, '2021-05-11');
insert into read (read_id, chapter_id, account_id, date) values (391, 49, 35, '2021-05-23');
insert into read (read_id, chapter_id, account_id, date) values (392, 26, 37, '2020-09-29');
insert into read (read_id, chapter_id, account_id, date) values (393, 56, 41, '2021-05-26');
insert into read (read_id, chapter_id, account_id, date) values (394, 51, 49, '2021-02-23');
insert into read (read_id, chapter_id, account_id, date) values (395, 37, 199, '2020-09-09');
insert into read (read_id, chapter_id, account_id, date) values (396, 24, 161, '2020-12-15');
insert into read (read_id, chapter_id, account_id, date) values (397, 59, 1, '2020-10-01');
insert into read (read_id, chapter_id, account_id, date) values (398, 58, 30, '2021-01-09');
insert into read (read_id, chapter_id, account_id, date) values (399, 61, 158, '2020-12-21');
insert into read (read_id, chapter_id, account_id, date) values (400, 43, 72, '2020-09-20');
insert into read (read_id, chapter_id, account_id, date) values (401, 69, 46, '2021-02-13');
insert into read (read_id, chapter_id, account_id, date) values (402, 21, 101, '2020-11-17');
insert into read (read_id, chapter_id, account_id, date) values (403, 6, 200, '2021-02-26');
insert into read (read_id, chapter_id, account_id, date) values (404, 27, 91, '2021-03-31');
insert into read (read_id, chapter_id, account_id, date) values (405, 21, 160, '2021-05-14');
insert into read (read_id, chapter_id, account_id, date) values (406, 34, 172, '2020-08-27');
insert into read (read_id, chapter_id, account_id, date) values (407, 54, 44, '2020-10-21');
insert into read (read_id, chapter_id, account_id, date) values (408, 41, 4, '2020-07-18');
insert into read (read_id, chapter_id, account_id, date) values (409, 20, 9, '2021-02-07');
insert into read (read_id, chapter_id, account_id, date) values (410, 36, 168, '2020-10-26');
insert into read (read_id, chapter_id, account_id, date) values (411, 52, 2, '2020-11-05');
insert into read (read_id, chapter_id, account_id, date) values (412, 34, 197, '2020-10-20');
insert into read (read_id, chapter_id, account_id, date) values (413, 44, 105, '2020-07-08');
insert into read (read_id, chapter_id, account_id, date) values (414, 70, 175, '2020-07-22');
insert into read (read_id, chapter_id, account_id, date) values (415, 5, 65, '2021-04-03');
insert into read (read_id, chapter_id, account_id, date) values (416, 34, 83, '2020-08-01');
insert into read (read_id, chapter_id, account_id, date) values (417, 36, 96, '2021-01-01');
insert into read (read_id, chapter_id, account_id, date) values (418, 43, 78, '2021-01-14');
insert into read (read_id, chapter_id, account_id, date) values (419, 34, 194, '2021-05-02');
insert into read (read_id, chapter_id, account_id, date) values (420, 66, 164, '2021-02-23');
insert into read (read_id, chapter_id, account_id, date) values (421, 5, 154, '2021-04-13');
insert into read (read_id, chapter_id, account_id, date) values (422, 58, 164, '2021-03-17');
insert into read (read_id, chapter_id, account_id, date) values (423, 57, 38, '2021-03-01');
insert into read (read_id, chapter_id, account_id, date) values (424, 46, 188, '2020-10-14');
insert into read (read_id, chapter_id, account_id, date) values (425, 20, 23, '2020-09-14');
insert into read (read_id, chapter_id, account_id, date) values (426, 3, 140, '2021-01-29');
insert into read (read_id, chapter_id, account_id, date) values (427, 18, 198, '2020-07-01');
insert into read (read_id, chapter_id, account_id, date) values (428, 64, 10, '2020-09-13');
insert into read (read_id, chapter_id, account_id, date) values (429, 55, 195, '2021-01-18');
insert into read (read_id, chapter_id, account_id, date) values (430, 44, 16, '2020-10-23');
insert into read (read_id, chapter_id, account_id, date) values (431, 31, 36, '2021-03-14');
insert into read (read_id, chapter_id, account_id, date) values (432, 3, 4, '2021-06-12');
insert into read (read_id, chapter_id, account_id, date) values (433, 5, 133, '2020-07-29');
insert into read (read_id, chapter_id, account_id, date) values (434, 11, 175, '2020-08-31');
insert into read (read_id, chapter_id, account_id, date) values (435, 32, 28, '2020-11-13');
insert into read (read_id, chapter_id, account_id, date) values (436, 37, 11, '2021-06-15');
insert into read (read_id, chapter_id, account_id, date) values (437, 40, 102, '2020-06-27');
insert into read (read_id, chapter_id, account_id, date) values (438, 34, 13, '2020-07-30');
insert into read (read_id, chapter_id, account_id, date) values (439, 1, 184, '2020-08-11');
insert into read (read_id, chapter_id, account_id, date) values (440, 27, 191, '2020-12-03');
insert into read (read_id, chapter_id, account_id, date) values (441, 21, 189, '2021-01-22');
insert into read (read_id, chapter_id, account_id, date) values (442, 25, 140, '2020-11-05');
insert into read (read_id, chapter_id, account_id, date) values (443, 47, 153, '2021-04-20');
insert into read (read_id, chapter_id, account_id, date) values (444, 24, 83, '2021-03-12');
insert into read (read_id, chapter_id, account_id, date) values (445, 6, 62, '2020-08-04');
insert into read (read_id, chapter_id, account_id, date) values (446, 55, 61, '2020-07-15');
insert into read (read_id, chapter_id, account_id, date) values (447, 66, 178, '2020-10-09');
insert into read (read_id, chapter_id, account_id, date) values (448, 62, 31, '2020-06-19');
insert into read (read_id, chapter_id, account_id, date) values (449, 13, 110, '2021-05-23');
insert into read (read_id, chapter_id, account_id, date) values (450, 33, 127, '2020-08-15');
insert into read (read_id, chapter_id, account_id, date) values (451, 61, 75, '2020-09-24');
insert into read (read_id, chapter_id, account_id, date) values (452, 57, 94, '2020-10-08');
insert into read (read_id, chapter_id, account_id, date) values (453, 47, 43, '2020-09-07');
insert into read (read_id, chapter_id, account_id, date) values (454, 58, 19, '2021-05-07');
insert into read (read_id, chapter_id, account_id, date) values (455, 46, 46, '2021-02-17');
insert into read (read_id, chapter_id, account_id, date) values (456, 49, 125, '2020-11-02');
insert into read (read_id, chapter_id, account_id, date) values (457, 44, 143, '2021-05-11');
insert into read (read_id, chapter_id, account_id, date) values (458, 17, 164, '2021-06-06');
insert into read (read_id, chapter_id, account_id, date) values (459, 33, 86, '2021-01-12');
insert into read (read_id, chapter_id, account_id, date) values (460, 26, 110, '2020-08-20');
insert into read (read_id, chapter_id, account_id, date) values (461, 45, 126, '2021-03-22');
insert into read (read_id, chapter_id, account_id, date) values (462, 7, 175, '2020-08-04');
insert into read (read_id, chapter_id, account_id, date) values (463, 3, 91, '2020-08-19');
insert into read (read_id, chapter_id, account_id, date) values (464, 59, 123, '2020-07-24');
insert into read (read_id, chapter_id, account_id, date) values (465, 9, 64, '2021-01-29');
insert into read (read_id, chapter_id, account_id, date) values (466, 1, 164, '2020-10-30');
insert into read (read_id, chapter_id, account_id, date) values (467, 45, 186, '2020-12-15');
insert into read (read_id, chapter_id, account_id, date) values (468, 34, 37, '2021-05-22');
insert into read (read_id, chapter_id, account_id, date) values (469, 6, 5, '2020-08-04');
insert into read (read_id, chapter_id, account_id, date) values (470, 70, 116, '2020-09-18');
insert into read (read_id, chapter_id, account_id, date) values (471, 10, 1, '2021-03-10');
insert into read (read_id, chapter_id, account_id, date) values (472, 48, 141, '2021-02-14');
insert into read (read_id, chapter_id, account_id, date) values (473, 12, 29, '2020-09-29');
insert into read (read_id, chapter_id, account_id, date) values (474, 9, 1, '2020-12-25');
insert into read (read_id, chapter_id, account_id, date) values (475, 22, 108, '2020-08-09');
insert into read (read_id, chapter_id, account_id, date) values (476, 68, 60, '2021-06-06');
insert into read (read_id, chapter_id, account_id, date) values (477, 65, 67, '2021-04-09');
insert into read (read_id, chapter_id, account_id, date) values (478, 37, 105, '2020-08-10');
insert into read (read_id, chapter_id, account_id, date) values (479, 31, 190, '2021-02-09');
insert into read (read_id, chapter_id, account_id, date) values (480, 29, 80, '2020-10-30');
insert into read (read_id, chapter_id, account_id, date) values (481, 47, 112, '2021-05-18');
insert into read (read_id, chapter_id, account_id, date) values (482, 41, 169, '2020-09-15');
insert into read (read_id, chapter_id, account_id, date) values (483, 25, 65, '2021-01-01');
insert into read (read_id, chapter_id, account_id, date) values (484, 31, 53, '2021-03-13');
insert into read (read_id, chapter_id, account_id, date) values (485, 2, 190, '2021-02-27');
insert into read (read_id, chapter_id, account_id, date) values (486, 46, 54, '2021-04-19');
insert into read (read_id, chapter_id, account_id, date) values (487, 43, 34, '2021-06-11');
insert into read (read_id, chapter_id, account_id, date) values (488, 45, 147, '2020-09-20');
insert into read (read_id, chapter_id, account_id, date) values (489, 9, 40, '2021-02-14');
insert into read (read_id, chapter_id, account_id, date) values (490, 40, 145, '2020-10-29');
insert into read (read_id, chapter_id, account_id, date) values (491, 17, 11, '2020-08-13');
insert into read (read_id, chapter_id, account_id, date) values (492, 50, 26, '2020-11-19');
insert into read (read_id, chapter_id, account_id, date) values (493, 28, 81, '2021-04-24');
insert into read (read_id, chapter_id, account_id, date) values (494, 31, 138, '2021-01-17');
insert into read (read_id, chapter_id, account_id, date) values (495, 35, 195, '2020-12-06');
insert into read (read_id, chapter_id, account_id, date) values (496, 56, 44, '2020-11-02');
insert into read (read_id, chapter_id, account_id, date) values (497, 38, 109, '2020-07-21');
insert into read (read_id, chapter_id, account_id, date) values (498, 52, 182, '2020-09-30');
insert into read (read_id, chapter_id, account_id, date) values (499, 43, 16, '2021-03-18');
insert into read (read_id, chapter_id, account_id, date) values (500, 48, 66, '2021-04-13');


create table likes (
	like_id INT,
	chapter_id INT,
	account_id INT,
	date DATE
);
insert into likes (like_id, chapter_id, account_id, date) values (1, 23, 129, '2020-11-18');
insert into likes (like_id, chapter_id, account_id, date) values (2, 1, 108, '2020-09-25');
insert into likes (like_id, chapter_id, account_id, date) values (3, 34, 6, '2020-08-27');
insert into likes (like_id, chapter_id, account_id, date) values (4, 37, 177, '2020-09-13');
insert into likes (like_id, chapter_id, account_id, date) values (5, 69, 167, '2020-12-07');
insert into likes (like_id, chapter_id, account_id, date) values (6, 17, 83, '2021-05-11');
insert into likes (like_id, chapter_id, account_id, date) values (7, 56, 67, '2020-07-13');
insert into likes (like_id, chapter_id, account_id, date) values (8, 39, 9, '2021-05-09');
insert into likes (like_id, chapter_id, account_id, date) values (9, 65, 155, '2020-07-11');
insert into likes (like_id, chapter_id, account_id, date) values (10, 14, 56, '2020-08-10');
insert into likes (like_id, chapter_id, account_id, date) values (11, 9, 84, '2021-04-26');
insert into likes (like_id, chapter_id, account_id, date) values (12, 61, 86, '2020-07-18');
insert into likes (like_id, chapter_id, account_id, date) values (13, 25, 145, '2020-10-24');
insert into likes (like_id, chapter_id, account_id, date) values (14, 45, 98, '2021-05-28');
insert into likes (like_id, chapter_id, account_id, date) values (15, 25, 123, '2021-04-19');
insert into likes (like_id, chapter_id, account_id, date) values (16, 40, 169, '2020-08-13');
insert into likes (like_id, chapter_id, account_id, date) values (17, 25, 140, '2021-02-12');
insert into likes (like_id, chapter_id, account_id, date) values (18, 52, 183, '2021-02-04');
insert into likes (like_id, chapter_id, account_id, date) values (19, 63, 114, '2021-05-15');
insert into likes (like_id, chapter_id, account_id, date) values (20, 53, 96, '2020-09-19');
insert into likes (like_id, chapter_id, account_id, date) values (21, 15, 143, '2020-07-30');
insert into likes (like_id, chapter_id, account_id, date) values (22, 52, 155, '2021-02-26');
insert into likes (like_id, chapter_id, account_id, date) values (23, 33, 30, '2021-03-24');
insert into likes (like_id, chapter_id, account_id, date) values (24, 68, 172, '2021-04-29');
insert into likes (like_id, chapter_id, account_id, date) values (25, 12, 67, '2021-05-30');
insert into likes (like_id, chapter_id, account_id, date) values (26, 41, 41, '2020-09-01');
insert into likes (like_id, chapter_id, account_id, date) values (27, 35, 25, '2021-03-12');
insert into likes (like_id, chapter_id, account_id, date) values (28, 28, 119, '2021-05-23');
insert into likes (like_id, chapter_id, account_id, date) values (29, 29, 94, '2021-05-28');
insert into likes (like_id, chapter_id, account_id, date) values (30, 61, 189, '2020-06-23');
insert into likes (like_id, chapter_id, account_id, date) values (31, 10, 34, '2020-09-02');
insert into likes (like_id, chapter_id, account_id, date) values (32, 26, 183, '2020-12-28');
insert into likes (like_id, chapter_id, account_id, date) values (33, 30, 80, '2020-06-24');
insert into likes (like_id, chapter_id, account_id, date) values (34, 13, 195, '2020-09-22');
insert into likes (like_id, chapter_id, account_id, date) values (35, 39, 84, '2020-10-07');
insert into likes (like_id, chapter_id, account_id, date) values (36, 37, 116, '2020-10-04');
insert into likes (like_id, chapter_id, account_id, date) values (37, 13, 144, '2020-07-14');
insert into likes (like_id, chapter_id, account_id, date) values (38, 11, 149, '2021-05-22');
insert into likes (like_id, chapter_id, account_id, date) values (39, 28, 96, '2020-10-22');
insert into likes (like_id, chapter_id, account_id, date) values (40, 15, 20, '2020-08-15');
insert into likes (like_id, chapter_id, account_id, date) values (41, 25, 104, '2021-02-10');
insert into likes (like_id, chapter_id, account_id, date) values (42, 26, 55, '2020-06-18');
insert into likes (like_id, chapter_id, account_id, date) values (43, 69, 163, '2020-11-20');
insert into likes (like_id, chapter_id, account_id, date) values (44, 40, 107, '2021-03-27');
insert into likes (like_id, chapter_id, account_id, date) values (45, 63, 94, '2020-11-25');
insert into likes (like_id, chapter_id, account_id, date) values (46, 17, 99, '2020-11-14');
insert into likes (like_id, chapter_id, account_id, date) values (47, 23, 93, '2020-11-26');
insert into likes (like_id, chapter_id, account_id, date) values (48, 67, 174, '2020-06-18');
insert into likes (like_id, chapter_id, account_id, date) values (49, 29, 12, '2021-03-17');
insert into likes (like_id, chapter_id, account_id, date) values (50, 13, 72, '2021-04-16');
insert into likes (like_id, chapter_id, account_id, date) values (51, 29, 119, '2020-12-16');
insert into likes (like_id, chapter_id, account_id, date) values (52, 55, 147, '2021-04-28');
insert into likes (like_id, chapter_id, account_id, date) values (53, 39, 197, '2021-02-17');
insert into likes (like_id, chapter_id, account_id, date) values (54, 43, 4, '2020-09-28');
insert into likes (like_id, chapter_id, account_id, date) values (55, 61, 180, '2020-12-29');
insert into likes (like_id, chapter_id, account_id, date) values (56, 28, 142, '2020-09-08');
insert into likes (like_id, chapter_id, account_id, date) values (57, 5, 137, '2020-09-10');
insert into likes (like_id, chapter_id, account_id, date) values (58, 53, 157, '2020-11-07');
insert into likes (like_id, chapter_id, account_id, date) values (59, 2, 24, '2021-04-07');
insert into likes (like_id, chapter_id, account_id, date) values (60, 50, 36, '2020-12-09');
insert into likes (like_id, chapter_id, account_id, date) values (61, 40, 142, '2020-08-23');
insert into likes (like_id, chapter_id, account_id, date) values (62, 56, 137, '2021-02-03');
insert into likes (like_id, chapter_id, account_id, date) values (63, 54, 4, '2021-05-13');
insert into likes (like_id, chapter_id, account_id, date) values (64, 18, 109, '2020-11-22');
insert into likes (like_id, chapter_id, account_id, date) values (65, 8, 61, '2021-02-16');
insert into likes (like_id, chapter_id, account_id, date) values (66, 28, 165, '2020-11-11');
insert into likes (like_id, chapter_id, account_id, date) values (67, 56, 76, '2020-08-15');
insert into likes (like_id, chapter_id, account_id, date) values (68, 68, 145, '2020-06-19');
insert into likes (like_id, chapter_id, account_id, date) values (69, 12, 155, '2020-11-28');
insert into likes (like_id, chapter_id, account_id, date) values (70, 47, 39, '2020-11-05');
insert into likes (like_id, chapter_id, account_id, date) values (71, 33, 156, '2021-04-23');
insert into likes (like_id, chapter_id, account_id, date) values (72, 36, 199, '2021-05-11');
insert into likes (like_id, chapter_id, account_id, date) values (73, 1, 23, '2021-04-16');
insert into likes (like_id, chapter_id, account_id, date) values (74, 31, 15, '2020-12-10');
insert into likes (like_id, chapter_id, account_id, date) values (75, 61, 194, '2021-04-28');
insert into likes (like_id, chapter_id, account_id, date) values (76, 29, 74, '2021-01-06');
insert into likes (like_id, chapter_id, account_id, date) values (77, 56, 99, '2020-10-17');
insert into likes (like_id, chapter_id, account_id, date) values (78, 6, 28, '2021-01-29');
insert into likes (like_id, chapter_id, account_id, date) values (79, 59, 184, '2020-06-20');
insert into likes (like_id, chapter_id, account_id, date) values (80, 36, 11, '2020-12-19');
insert into likes (like_id, chapter_id, account_id, date) values (81, 13, 81, '2021-02-06');
insert into likes (like_id, chapter_id, account_id, date) values (82, 38, 46, '2021-02-20');
insert into likes (like_id, chapter_id, account_id, date) values (83, 49, 8, '2021-02-05');
insert into likes (like_id, chapter_id, account_id, date) values (84, 48, 177, '2021-03-27');
insert into likes (like_id, chapter_id, account_id, date) values (85, 20, 171, '2021-04-25');
insert into likes (like_id, chapter_id, account_id, date) values (86, 61, 85, '2020-10-01');
insert into likes (like_id, chapter_id, account_id, date) values (87, 21, 132, '2021-03-30');
insert into likes (like_id, chapter_id, account_id, date) values (88, 68, 118, '2020-12-22');
insert into likes (like_id, chapter_id, account_id, date) values (89, 54, 74, '2021-05-27');
insert into likes (like_id, chapter_id, account_id, date) values (90, 10, 173, '2021-01-09');
insert into likes (like_id, chapter_id, account_id, date) values (91, 64, 32, '2021-05-14');
insert into likes (like_id, chapter_id, account_id, date) values (92, 27, 139, '2021-06-07');
insert into likes (like_id, chapter_id, account_id, date) values (93, 27, 153, '2021-01-07');
insert into likes (like_id, chapter_id, account_id, date) values (94, 1, 43, '2020-11-05');
insert into likes (like_id, chapter_id, account_id, date) values (95, 27, 17, '2021-04-04');
insert into likes (like_id, chapter_id, account_id, date) values (96, 7, 119, '2021-04-28');
insert into likes (like_id, chapter_id, account_id, date) values (97, 62, 38, '2020-09-30');
insert into likes (like_id, chapter_id, account_id, date) values (98, 35, 36, '2021-05-07');
insert into likes (like_id, chapter_id, account_id, date) values (99, 65, 93, '2021-06-11');
insert into likes (like_id, chapter_id, account_id, date) values (100, 27, 74, '2020-11-19');
insert into likes (like_id, chapter_id, account_id, date) values (101, 42, 90, '2021-01-25');
insert into likes (like_id, chapter_id, account_id, date) values (102, 61, 55, '2021-04-16');
insert into likes (like_id, chapter_id, account_id, date) values (103, 7, 31, '2020-08-09');
insert into likes (like_id, chapter_id, account_id, date) values (104, 67, 195, '2020-10-17');
insert into likes (like_id, chapter_id, account_id, date) values (105, 51, 179, '2021-01-05');
insert into likes (like_id, chapter_id, account_id, date) values (106, 3, 45, '2021-04-12');
insert into likes (like_id, chapter_id, account_id, date) values (107, 33, 170, '2021-01-09');
insert into likes (like_id, chapter_id, account_id, date) values (108, 27, 25, '2020-06-19');
insert into likes (like_id, chapter_id, account_id, date) values (109, 15, 191, '2021-03-09');
insert into likes (like_id, chapter_id, account_id, date) values (110, 24, 20, '2021-01-30');
insert into likes (like_id, chapter_id, account_id, date) values (111, 66, 140, '2021-03-09');
insert into likes (like_id, chapter_id, account_id, date) values (112, 18, 47, '2020-07-18');
insert into likes (like_id, chapter_id, account_id, date) values (113, 68, 29, '2020-08-15');
insert into likes (like_id, chapter_id, account_id, date) values (114, 18, 45, '2020-12-12');
insert into likes (like_id, chapter_id, account_id, date) values (115, 18, 152, '2020-12-26');
insert into likes (like_id, chapter_id, account_id, date) values (116, 41, 167, '2021-05-20');
insert into likes (like_id, chapter_id, account_id, date) values (117, 26, 66, '2021-02-06');
insert into likes (like_id, chapter_id, account_id, date) values (118, 22, 102, '2020-10-08');
insert into likes (like_id, chapter_id, account_id, date) values (119, 26, 172, '2021-05-02');
insert into likes (like_id, chapter_id, account_id, date) values (120, 7, 108, '2021-04-29');
insert into likes (like_id, chapter_id, account_id, date) values (121, 56, 16, '2021-05-06');
insert into likes (like_id, chapter_id, account_id, date) values (122, 64, 41, '2020-10-13');
insert into likes (like_id, chapter_id, account_id, date) values (123, 12, 30, '2020-07-19');
insert into likes (like_id, chapter_id, account_id, date) values (124, 60, 183, '2020-10-15');
insert into likes (like_id, chapter_id, account_id, date) values (125, 31, 53, '2020-09-17');
insert into likes (like_id, chapter_id, account_id, date) values (126, 6, 93, '2021-04-27');
insert into likes (like_id, chapter_id, account_id, date) values (127, 23, 58, '2020-12-06');
insert into likes (like_id, chapter_id, account_id, date) values (128, 16, 90, '2020-12-13');
insert into likes (like_id, chapter_id, account_id, date) values (129, 43, 29, '2021-04-04');
insert into likes (like_id, chapter_id, account_id, date) values (130, 58, 98, '2020-09-08');
insert into likes (like_id, chapter_id, account_id, date) values (131, 25, 148, '2021-05-18');
insert into likes (like_id, chapter_id, account_id, date) values (132, 47, 104, '2020-07-14');
insert into likes (like_id, chapter_id, account_id, date) values (133, 14, 147, '2020-11-11');
insert into likes (like_id, chapter_id, account_id, date) values (134, 52, 35, '2021-06-07');
insert into likes (like_id, chapter_id, account_id, date) values (135, 16, 158, '2020-12-08');
insert into likes (like_id, chapter_id, account_id, date) values (136, 53, 122, '2021-03-20');
insert into likes (like_id, chapter_id, account_id, date) values (137, 7, 41, '2021-04-14');
insert into likes (like_id, chapter_id, account_id, date) values (138, 63, 199, '2021-05-26');
insert into likes (like_id, chapter_id, account_id, date) values (139, 55, 138, '2020-11-20');
insert into likes (like_id, chapter_id, account_id, date) values (140, 7, 129, '2021-05-01');
insert into likes (like_id, chapter_id, account_id, date) values (141, 15, 8, '2021-01-04');
insert into likes (like_id, chapter_id, account_id, date) values (142, 38, 109, '2020-12-26');
insert into likes (like_id, chapter_id, account_id, date) values (143, 68, 137, '2020-09-29');
insert into likes (like_id, chapter_id, account_id, date) values (144, 66, 190, '2021-03-17');
insert into likes (like_id, chapter_id, account_id, date) values (145, 56, 124, '2021-04-29');
insert into likes (like_id, chapter_id, account_id, date) values (146, 2, 11, '2021-04-28');
insert into likes (like_id, chapter_id, account_id, date) values (147, 25, 134, '2020-10-03');
insert into likes (like_id, chapter_id, account_id, date) values (148, 46, 6, '2021-03-29');
insert into likes (like_id, chapter_id, account_id, date) values (149, 14, 8, '2021-02-06');
insert into likes (like_id, chapter_id, account_id, date) values (150, 55, 14, '2020-09-09');

create table comments (
	comment_id INT,
	chapter_id INT,
	account_id INT,
	date DATE,
	content VARCHAR(50)
);
insert into comments (comment_id, chapter_id, account_id, date, content) values (1, 36, 91, '2021-04-01', 'Organized');
insert into comments (comment_id, chapter_id, account_id, date, content) values (2, 64, 3, '2020-09-27', 'pricing structure');
insert into comments (comment_id, chapter_id, account_id, date, content) values (3, 10, 185, '2021-01-06', 'encompassing');
insert into comments (comment_id, chapter_id, account_id, date, content) values (4, 60, 148, '2020-11-24', 'migration');
insert into comments (comment_id, chapter_id, account_id, date, content) values (5, 69, 34, '2021-01-11', 'real-time');
insert into comments (comment_id, chapter_id, account_id, date, content) values (6, 2, 8, '2020-12-17', 'cohesive');
insert into comments (comment_id, chapter_id, account_id, date, content) values (7, 3, 99, '2020-12-30', 'demand-driven');
insert into comments (comment_id, chapter_id, account_id, date, content) values (8, 20, 53, '2020-10-15', '24/7');
insert into comments (comment_id, chapter_id, account_id, date, content) values (9, 2, 13, '2020-10-23', 'Sharable');
insert into comments (comment_id, chapter_id, account_id, date, content) values (10, 43, 158, '2020-11-30', 'dedicated');
insert into comments (comment_id, chapter_id, account_id, date, content) values (11, 68, 45, '2021-02-14', '24 hour');
insert into comments (comment_id, chapter_id, account_id, date, content) values (12, 20, 62, '2020-07-14', 'national');
insert into comments (comment_id, chapter_id, account_id, date, content) values (13, 29, 6, '2020-12-06', 'paradigm');
insert into comments (comment_id, chapter_id, account_id, date, content) values (14, 29, 162, '2020-07-22', 'optimal');
insert into comments (comment_id, chapter_id, account_id, date, content) values (15, 40, 172, '2020-11-30', '24/7');
insert into comments (comment_id, chapter_id, account_id, date, content) values (16, 58, 134, '2020-11-28', 'Phased');
insert into comments (comment_id, chapter_id, account_id, date, content) values (17, 65, 153, '2021-03-07', 'encoding');
insert into comments (comment_id, chapter_id, account_id, date, content) values (18, 33, 69, '2021-02-15', 'intranet');
insert into comments (comment_id, chapter_id, account_id, date, content) values (19, 57, 184, '2021-03-09', 'multi-state');
insert into comments (comment_id, chapter_id, account_id, date, content) values (20, 62, 41, '2020-08-30', 'upward-trending');
insert into comments (comment_id, chapter_id, account_id, date, content) values (21, 52, 196, '2020-10-04', 'Face to face');
insert into comments (comment_id, chapter_id, account_id, date, content) values (22, 20, 15, '2021-04-02', 'background');
insert into comments (comment_id, chapter_id, account_id, date, content) values (23, 61, 11, '2020-12-16', 'Integrated');
insert into comments (comment_id, chapter_id, account_id, date, content) values (24, 21, 187, '2020-07-09', 'value-added');
insert into comments (comment_id, chapter_id, account_id, date, content) values (25, 37, 127, '2020-09-12', 'data-warehouse');
insert into comments (comment_id, chapter_id, account_id, date, content) values (26, 34, 28, '2021-02-27', 'analyzing');
insert into comments (comment_id, chapter_id, account_id, date, content) values (27, 32, 19, '2021-05-17', 'interactive');
insert into comments (comment_id, chapter_id, account_id, date, content) values (28, 13, 69, '2021-02-01', 'time-frame');
insert into comments (comment_id, chapter_id, account_id, date, content) values (29, 9, 41, '2020-07-30', 'Switchable');
insert into comments (comment_id, chapter_id, account_id, date, content) values (30, 34, 135, '2020-10-31', 'help-desk');
insert into comments (comment_id, chapter_id, account_id, date, content) values (31, 39, 40, '2020-07-27', 'process improvement');
insert into comments (comment_id, chapter_id, account_id, date, content) values (32, 67, 136, '2020-09-05', 'Future-proofed');
insert into comments (comment_id, chapter_id, account_id, date, content) values (33, 59, 111, '2020-12-05', 'hybrid');
insert into comments (comment_id, chapter_id, account_id, date, content) values (34, 50, 138, '2021-01-25', 'zero tolerance');
insert into comments (comment_id, chapter_id, account_id, date, content) values (35, 42, 23, '2021-04-21', 'service-desk');
insert into comments (comment_id, chapter_id, account_id, date, content) values (36, 29, 140, '2021-01-25', 'Grass-roots');
insert into comments (comment_id, chapter_id, account_id, date, content) values (37, 1, 26, '2020-08-20', 'responsive');
insert into comments (comment_id, chapter_id, account_id, date, content) values (38, 7, 62, '2021-02-16', 'Multi-layered');
insert into comments (comment_id, chapter_id, account_id, date, content) values (39, 42, 53, '2020-07-20', 'system engine');
insert into comments (comment_id, chapter_id, account_id, date, content) values (40, 25, 134, '2020-12-21', 'Customer-focused');
insert into comments (comment_id, chapter_id, account_id, date, content) values (41, 37, 129, '2021-02-09', 'De-engineered');
insert into comments (comment_id, chapter_id, account_id, date, content) values (42, 48, 128, '2021-06-10', 'Function-based');
insert into comments (comment_id, chapter_id, account_id, date, content) values (43, 2, 161, '2021-01-16', 'Open-architected');
insert into comments (comment_id, chapter_id, account_id, date, content) values (44, 24, 151, '2020-08-08', 'time-frame');
insert into comments (comment_id, chapter_id, account_id, date, content) values (45, 67, 147, '2020-08-24', 'Configurable');
insert into comments (comment_id, chapter_id, account_id, date, content) values (46, 40, 105, '2020-12-16', 'superstructure');
insert into comments (comment_id, chapter_id, account_id, date, content) values (47, 43, 157, '2021-02-19', 'non-volatile');
insert into comments (comment_id, chapter_id, account_id, date, content) values (48, 55, 166, '2020-07-11', 'structure');
insert into comments (comment_id, chapter_id, account_id, date, content) values (49, 13, 22, '2020-12-18', 'knowledge user');
insert into comments (comment_id, chapter_id, account_id, date, content) values (50, 29, 20, '2021-04-02', 'protocol');



create table follows (
	follow_id INT,
	author_id INT,
	account_id INT,
	last_read_day DATE
);
insert into follows (follow_id, author_id, account_id, last_read_day) values (1, 21, 52, '2021-05-19');
insert into follows (follow_id, author_id, account_id, last_read_day) values (2, 4, 92, '2020-07-27');
insert into follows (follow_id, author_id, account_id, last_read_day) values (3, 27, 149, '2020-07-30');
insert into follows (follow_id, author_id, account_id, last_read_day) values (4, 10, 156, '2020-09-29');
insert into follows (follow_id, author_id, account_id, last_read_day) values (5, 26, 99, '2021-06-12');
insert into follows (follow_id, author_id, account_id, last_read_day) values (6, 30, 164, '2021-02-24');
insert into follows (follow_id, author_id, account_id, last_read_day) values (7, 11, 1, '2020-06-30');
insert into follows (follow_id, author_id, account_id, last_read_day) values (8, 7, 110, '2020-09-10');
insert into follows (follow_id, author_id, account_id, last_read_day) values (9, 8, 57, '2020-09-22');
insert into follows (follow_id, author_id, account_id, last_read_day) values (10, 8, 124, '2021-02-18');
insert into follows (follow_id, author_id, account_id, last_read_day) values (11, 17, 179, '2020-07-20');
insert into follows (follow_id, author_id, account_id, last_read_day) values (12, 7, 25, '2021-03-16');
insert into follows (follow_id, author_id, account_id, last_read_day) values (13, 14, 35, '2021-04-28');
insert into follows (follow_id, author_id, account_id, last_read_day) values (14, 30, 143, '2021-05-10');
insert into follows (follow_id, author_id, account_id, last_read_day) values (15, 28, 187, '2020-07-09');
insert into follows (follow_id, author_id, account_id, last_read_day) values (16, 3, 26, '2020-07-18');
insert into follows (follow_id, author_id, account_id, last_read_day) values (17, 16, 10, '2021-05-25');
insert into follows (follow_id, author_id, account_id, last_read_day) values (18, 28, 55, '2021-03-04');
insert into follows (follow_id, author_id, account_id, last_read_day) values (19, 24, 50, '2020-10-30');
insert into follows (follow_id, author_id, account_id, last_read_day) values (20, 26, 101, '2021-01-12');
insert into follows (follow_id, author_id, account_id, last_read_day) values (21, 22, 48, '2020-11-27');
insert into follows (follow_id, author_id, account_id, last_read_day) values (22, 24, 51, '2021-05-01');
insert into follows (follow_id, author_id, account_id, last_read_day) values (23, 13, 126, '2020-12-25');
insert into follows (follow_id, author_id, account_id, last_read_day) values (24, 5, 80, '2021-05-06');
insert into follows (follow_id, author_id, account_id, last_read_day) values (25, 9, 172, '2021-05-30');
insert into follows (follow_id, author_id, account_id, last_read_day) values (26, 12, 140, '2020-08-08');
insert into follows (follow_id, author_id, account_id, last_read_day) values (27, 26, 196, '2021-03-12');
insert into follows (follow_id, author_id, account_id, last_read_day) values (28, 20, 181, '2020-10-12');
insert into follows (follow_id, author_id, account_id, last_read_day) values (29, 17, 182, '2021-05-21');
insert into follows (follow_id, author_id, account_id, last_read_day) values (30, 12, 106, '2020-07-05');
insert into follows (follow_id, author_id, account_id, last_read_day) values (31, 10, 105, '2021-03-03');
insert into follows (follow_id, author_id, account_id, last_read_day) values (32, 13, 124, '2021-02-13');
insert into follows (follow_id, author_id, account_id, last_read_day) values (33, 30, 54, '2020-09-23');
insert into follows (follow_id, author_id, account_id, last_read_day) values (34, 26, 84, '2020-12-06');
insert into follows (follow_id, author_id, account_id, last_read_day) values (35, 30, 139, '2021-03-06');
insert into follows (follow_id, author_id, account_id, last_read_day) values (36, 15, 142, '2021-02-19');
insert into follows (follow_id, author_id, account_id, last_read_day) values (37, 8, 57, '2020-11-23');
insert into follows (follow_id, author_id, account_id, last_read_day) values (38, 8, 193, '2020-09-19');
insert into follows (follow_id, author_id, account_id, last_read_day) values (39, 14, 163, '2020-09-06');
insert into follows (follow_id, author_id, account_id, last_read_day) values (40, 1, 8, '2020-09-26');
insert into follows (follow_id, author_id, account_id, last_read_day) values (41, 16, 181, '2020-12-09');
insert into follows (follow_id, author_id, account_id, last_read_day) values (42, 28, 106, '2020-08-31');
insert into follows (follow_id, author_id, account_id, last_read_day) values (43, 11, 44, '2021-04-19');
insert into follows (follow_id, author_id, account_id, last_read_day) values (44, 17, 143, '2020-12-20');
insert into follows (follow_id, author_id, account_id, last_read_day) values (45, 1, 190, '2021-03-11');
insert into follows (follow_id, author_id, account_id, last_read_day) values (46, 14, 175, '2020-12-28');
insert into follows (follow_id, author_id, account_id, last_read_day) values (47, 23, 189, '2021-02-24');
insert into follows (follow_id, author_id, account_id, last_read_day) values (48, 8, 127, '2021-02-13');
insert into follows (follow_id, author_id, account_id, last_read_day) values (49, 25, 55, '2020-11-29');
insert into follows (follow_id, author_id, account_id, last_read_day) values (50, 17, 58, '2020-08-13');
insert into follows (follow_id, author_id, account_id, last_read_day) values (51, 24, 145, '2021-04-13');
insert into follows (follow_id, author_id, account_id, last_read_day) values (52, 6, 7, '2021-03-01');
insert into follows (follow_id, author_id, account_id, last_read_day) values (53, 22, 75, '2020-07-27');
insert into follows (follow_id, author_id, account_id, last_read_day) values (54, 18, 143, '2020-09-13');
insert into follows (follow_id, author_id, account_id, last_read_day) values (55, 28, 57, '2021-02-08');
insert into follows (follow_id, author_id, account_id, last_read_day) values (56, 4, 131, '2021-02-14');
insert into follows (follow_id, author_id, account_id, last_read_day) values (57, 7, 136, '2021-02-24');
insert into follows (follow_id, author_id, account_id, last_read_day) values (58, 1, 7, '2021-05-22');
insert into follows (follow_id, author_id, account_id, last_read_day) values (59, 2, 25, '2020-09-03');
insert into follows (follow_id, author_id, account_id, last_read_day) values (60, 12, 163, '2021-01-14');
insert into follows (follow_id, author_id, account_id, last_read_day) values (61, 19, 6, '2021-03-25');
insert into follows (follow_id, author_id, account_id, last_read_day) values (62, 1, 5, '2021-05-10');
insert into follows (follow_id, author_id, account_id, last_read_day) values (63, 6, 25, '2020-11-19');
insert into follows (follow_id, author_id, account_id, last_read_day) values (64, 3, 132, '2020-07-21');
insert into follows (follow_id, author_id, account_id, last_read_day) values (65, 22, 44, '2020-09-30');
insert into follows (follow_id, author_id, account_id, last_read_day) values (66, 23, 161, '2021-05-13');
insert into follows (follow_id, author_id, account_id, last_read_day) values (67, 5, 181, '2020-10-18');
insert into follows (follow_id, author_id, account_id, last_read_day) values (68, 27, 75, '2020-08-23');
insert into follows (follow_id, author_id, account_id, last_read_day) values (69, 10, 146, '2021-04-02');
insert into follows (follow_id, author_id, account_id, last_read_day) values (70, 22, 84, '2020-12-22');
insert into follows (follow_id, author_id, account_id, last_read_day) values (71, 11, 169, '2021-02-08');
insert into follows (follow_id, author_id, account_id, last_read_day) values (72, 30, 78, '2021-04-19');
insert into follows (follow_id, author_id, account_id, last_read_day) values (73, 17, 11, '2020-09-14');
insert into follows (follow_id, author_id, account_id, last_read_day) values (74, 11, 177, '2021-02-10');
insert into follows (follow_id, author_id, account_id, last_read_day) values (75, 10, 150, '2020-10-29');
insert into follows (follow_id, author_id, account_id, last_read_day) values (76, 23, 21, '2020-08-19');
insert into follows (follow_id, author_id, account_id, last_read_day) values (77, 7, 135, '2021-02-22');
insert into follows (follow_id, author_id, account_id, last_read_day) values (78, 15, 69, '2021-05-14');
insert into follows (follow_id, author_id, account_id, last_read_day) values (79, 4, 30, '2020-12-03');
insert into follows (follow_id, author_id, account_id, last_read_day) values (80, 28, 71, '2021-05-11');
insert into follows (follow_id, author_id, account_id, last_read_day) values (81, 26, 179, '2020-06-20');
insert into follows (follow_id, author_id, account_id, last_read_day) values (82, 22, 73, '2020-12-11');
insert into follows (follow_id, author_id, account_id, last_read_day) values (83, 6, 40, '2020-06-17');
insert into follows (follow_id, author_id, account_id, last_read_day) values (84, 29, 61, '2020-10-07');
insert into follows (follow_id, author_id, account_id, last_read_day) values (85, 12, 52, '2020-07-06');
insert into follows (follow_id, author_id, account_id, last_read_day) values (86, 17, 188, '2020-08-31');
insert into follows (follow_id, author_id, account_id, last_read_day) values (87, 19, 94, '2021-04-11');
insert into follows (follow_id, author_id, account_id, last_read_day) values (88, 27, 196, '2021-06-10');
insert into follows (follow_id, author_id, account_id, last_read_day) values (89, 23, 36, '2020-07-07');
insert into follows (follow_id, author_id, account_id, last_read_day) values (90, 10, 172, '2021-03-18');
insert into follows (follow_id, author_id, account_id, last_read_day) values (91, 1, 143, '2021-01-12');
insert into follows (follow_id, author_id, account_id, last_read_day) values (92, 8, 57, '2020-12-31');
insert into follows (follow_id, author_id, account_id, last_read_day) values (93, 30, 45, '2021-01-12');
insert into follows (follow_id, author_id, account_id, last_read_day) values (94, 5, 106, '2020-08-28');
insert into follows (follow_id, author_id, account_id, last_read_day) values (95, 24, 46, '2020-11-27');
insert into follows (follow_id, author_id, account_id, last_read_day) values (96, 17, 42, '2020-08-24');
insert into follows (follow_id, author_id, account_id, last_read_day) values (97, 2, 16, '2021-03-19');
insert into follows (follow_id, author_id, account_id, last_read_day) values (98, 28, 28, '2020-06-17');
insert into follows (follow_id, author_id, account_id, last_read_day) values (99, 25, 142, '2021-03-28');
insert into follows (follow_id, author_id, account_id, last_read_day) values (100, 4, 144, '2020-07-14');


