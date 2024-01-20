create table books(id serial primary key ,
                   book_name varchar,
                   book_country varchar,
                   book_published_year date,
                   price numeric,
                   genre genre);
create type genre as enum ('DETECTIVE','DRAMA','HISTORY','ROMANCE','BIOGRAPHY','FANTASY');
create table authors(id serial primary key ,first_name varchar,last_name varchar,
                     email varchar  , author_date_of_birth date,author_country varchar,gender gender
);
drop table authors ;
drop table authors;
create type gender as enum ('Male','Female');
drop type gender;


create table publishers(id serial primary key ,publisher_name varchar);
create table languages (id serial primary key,language_name varchar );
alter table authors add constraint email_unique unique (email);
alter table languages alter column  language_name set not null ;
alter table books add column language_id int references languages(id);
alter table books add column publisher_id int references publishers(id);
alter table books add column author_id int references authors(id);
insert into publishers(publisher_name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');
insert into authors(first_name, last_name, email, author_date_of_birth, author_country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '9/25/1968', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '10/31/1965', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '5/16/1980', 'Germany', 'Male'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '4/24/1964', 'United States', 'Male'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7/3/1967', 'France', 'Male'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '12/29/1964', 'Russia', 'Male'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '12/14/1983', 'China', 'Female'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1/29/1960', 'United States', 'Female'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '11/17/1978', 'France', 'Male'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9/8/1962', 'Germany', 'Male'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '12/3/1984', 'Russia', 'Female'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '8/28/1983', 'Germany', 'Male'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '3/28/1980', 'Russia', 'Female'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8/5/1966', 'Spain', 'Male'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '10/17/1962', 'United States', 'Female');

insert into languages(language_name)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(book_name, book_country, book_published_year, price, genre, language_id, publisher_id, author_id)
values('Taina', 'Russia', '11/12/2021', '568','DETECTIVE', '5', '12', '6'),
      ('Zvezdopad', 'Russia', '12/9/2004', '446', 'ROMANCE', '5', '13', '11'),
      ('Homo Faber', 'Germany', '4/10/2022', '772','FANTASY', '3', '5', '3'),
      ('Der Richter und Sein Henker', 'Germany', '2/1/2011', '780','DETECTIVE', '3', '3', '10'),
      ('Lord of the Flies', 'United States', '7/11/2015', '900','FANTASY', '1', '2', '4'),
      ('Un soir au club', 'France', '1/12/2018', '480','DRAMA', '2', '1', '1'),
      ('Voina', 'Russia', '12/6/2004', '880',  'HISTORY', '5', '4', '13'),
      ('Sun Tzu', 'China', '9/5/2022', '349',  'HISTORY', '4', '4', '2'),


      ('Emil und die Detektive', 'Germany', '6/11/2010', '228','DETECTIVE','3', '5', '10'),
      ('Coule la Seine', 'France', '3/1/2015', '732','FANTASY', '2', '6', '1'),
      ('Love and hatred', 'Russia', '2/3/2012', '763', 'ROMANCE', '5', '14', '13'),
      ('Fantastic Mr Fox', 'United States', '3/10/2018', '309','FANTASY', '1', '9', '8'),
      ('Contes de la Bécasse', 'France', '10/5/2019', '378', 'ROMANCE', '2', '6', '9'),
      ('“The Death of Ivan Ilyich', 'Russia', '9/24/2000', '814','DRAMA', '5', '6', '6'),
      ('Bonjour Tristesse', 'France', '8/2/2015', '502', 'ROMANCE', '2', '8', '5'),
      ('Die Verwandlung', 'Germany', '6/19/2008', '305', 'DETECTIVE','3','7', '12'),
      ('The Inspector Barlach Mysteries', 'Germany', '3/10/2007', '566','DETECTIVE', '3', '3', '3'),
      ('LÉtranger', 'France', '11/14/2017', '422', 'ROMANCE', '2', '8', '5'),
      ('Lao Tse', 'China', '7/16/2005', '900','FANTASY', '4', '4', '2'),
      ('Semya', 'Russia', '4/12/2004', '194','DRAMA', '5', '13', '11'),
      ('Empty World', 'United States', '1/4/2008', '324','FANTASY', '1', '11', '15'),
      ('Domainer', 'Germany', '1/6/2020', '420', 'ROMANCE', '3', '5', '10'),
      ('The Fault in Our Stars', 'United States', '2/13/2008', '396', 'ROMANCE','1', '9', '4'),
      ('Die R uber', 'Germany', '6/25/2020', '300', 'ROMANCE', '3', '7', '12'),
      ('Jung Chang', 'China', '5/14/2021', '600',  'HISTORY', '4', '10', '7'),
      ('Les Aventures de Tintin', 'France', '4/10/2015', '582','DRAMA', '2', '1', '5'),
      ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269','DETECTIVE', '3', '5', '10'),
      ('Amy Tan', 'China', '1/9/2023', '486','DRAMA', '4', '4', '7'),
      ('Krasnaya luna', 'Russia', '2/7/2020', '550','FANTASY', '5', '12', '11'),
      ('Emma', 'United States', '10/11/2021', '599', 'BIOGRAPHY','1', '2', '15');
truncate books;
truncate authors;
-- 1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select b.book_name,b.book_published_year,b.genre from books b;
-- 2.Авторлордун мамлекеттери уникалдуу чыксын.
select distinct author_country from authors;
-- 3.2020-2023 жылдардын арасындагы китептер чыксын.
select * from books where book_published_year between '2020-01-01' and '2023-01-01';
-- 4.Детектив китептер жана алардын аттары чыксын.
select * from books where genre = 'DETECTIVE';
-- 5.Автордун аты-жону author деген бир колонкага чыксын.
select  concat(a.first_name,' ', a.last_name) as author from authors a;
-- 6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select * from authors where author_country in ('Germany', 'France') order by first_name,last_name ;
-- 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
select b.book_name,b.book_country,b.book_published_year,b.price from books b where genre <> 'ROMANCE' and price <500;
-- 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select * from authors where gender = 'Female' limit 3;
-- 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select * from authors where length(first_name)=4 and email like '%.com'  and  gender = 'Female';
-- 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select count(a.id),author_country from authors a group by author_country order by author_country;
-- 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select a.author_country from authors a group by author_country having count(a.id)>=3 order by author_country;
-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select count(b.id),b.genre from books b group by b.genre;
-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select b.price,book_name,b.genre from books b where b.genre in ('ROMANCE','DETECTIVE') order by b.price  ;
-- 14.История жана Биографиялык китептердин сандарын чыгарыныз
select count(b.id),b.genre from books b where genre in ('HISTORY' , 'BIOGRAPHY') group by b.genre;
-- 15.Китептердин , издательстволордун аттары жана тили чыксын
select p.publisher_name,l.language_name from books b
                                                 inner join publishers p on b.publisher_id=p.id
                                                 inner join languages l on b.language_id = l.id;
-- 156Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select p.publisher_name, concat(a.first_name,' ',a.last_name) as fullname from authors a
                                                                                   left join  books b on b.author_id = a.id
                                                                                   left join publishers p on b.publisher_id = p.id;
-- 17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select a.first_name,a.last_name from authors a right join books b on b.author_id = a.id;
-- 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select count(b.id),language_name  from books b  inner join languages l on b.language_id = l.id  group by language_name;
-- 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select p.publisher_name,b.price from publishers p inner join
                                     books b on p.id = b.publisher_id order by price;
-- 20.2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select b.book_name,b.book_published_year,(a.first_name,' ',a.last_name) as fullname from books b inner join authors a on b.author_id=a.id where book_published_year between '2010-01-01' and '2015-01-01';
-- 21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
select a.first_name,sum(b.price) from authors a inner join books b  on b.author_id=a.id
where b.book_published_year between '2010-01-01' and '2014-01-01'
group by a.first_name ;
select * from authors where first_name ='Hilliard';