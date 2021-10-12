

/* Creating App Notes database */
drop database if exists magic_notes;
CREATE DATABASE magic_notes;
USE magic_notes;

/* creating users table */

CREATE table users(
id int unsigned not null auto_increment,
first_name varchar(100) not null, 
last_name varchar(100) not null, 
email varchar(320) not null unique,
primary key (id)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/* filling  users table with fake data*/

insert into users 
values 
(1, 'Iggy', 'Bonnaire', 'ibonnaire0@latimes.com'), 
(2, 'Ingamar', 'Djakovic', 'idjakovic1@nymag.com'),
(3, 'Gerrie', 'De Ambrosi', 'gdeambrosi2@usda.gov'),
(4, 'Ardyth', 'Faulds', 'afaulds3@craigslist.org'),
(5, 'Hadley', 'Habert', 'hhabert4@friendfeed.com'),
(6, 'Ashien', 'Johnsey', 'ajohnsey5@geocities.jp'),
(7, 'Sibyl', 'Pisco', 'spisco6@slate.com'),
(8, 'Joellyn', 'Moughtin', 'jmoughtin7@blogtalkradio.com'),
(9, 'Hesther', 'Povey', 'hpovey8@pen.io'),
(10, 'Cordell', 'Bradtke', 'cbradtke9@theglobeandmail.com');

/* creating notes table */

create table notes(
id int unsigned not null auto_increment,
title varchar(100) not null, 
created_at date not null,
last_updated date not null,
description text not null,
can_be_eliminated tinyint not null,
user_id int unsigned not null,
primary key (id),
foreign key (user_id) references users (id)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/* filling  users table with fake data*/

insert into notes
values
(1, 'Year One, The (L''an 01)', '2021-01-05', '2021-09-25', 'Nullam varius. Nulla facilisi.', 1, 9),
(2, 'Virginia', '2021-05-17', '2021-07-22', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 0, 3),
(3, 'Krays, The', '2021-09-24', '2021-01-06', 'In quis justo.', 0, 3),
(4, 'Clean Slate', '2021-08-25', '2021-02-18', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 0, 3),
(5, 'Prefab People, The (Panelkapcsolat)', '2021-05-13', '2021-10-09', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 0, 10),
(6, 'Wicked Blood', '2021-02-10', '2021-09-20', 'Etiam faucibus cursus urna.', 0, 9),
(7, 'Jew in the Lotus, The', '2020-10-15', '2021-05-01', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.', 1, 10),
(8, '3000 Miles to Graceland', '2021-03-19', '2021-06-12', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 1, 7),
(9, 'Fright Night', '2021-08-26', '2021-02-22', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 0, 1),
(10, 'Boogie Man: The Lee Atwater Story', '2021-06-03', '2021-06-26', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 0, 10);



/* creating category table */

create table category(
id int unsigned not null auto_increment,
description varchar(100) not null,
primary key(id)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/* filling  category table with fake data*/

insert into category
values
(1, 'Aquamarine'),
(2, 'Maroon'),
(3, 'Crimson'),
(4, 'Fuscia'),
(5, 'Fuscia'),
(6, 'Puce'),
(7, 'Turquoise'),
(8, 'Indigo'),
(9, 'Mauv'),
(10, 'Red');

/* creating note_category table */

create table note_category(
id int unsigned not null auto_increment,
note_id int unsigned not null, 
category_id int unsigned not null,
primary key(id),
foreign key (note_id) references notes(id),
foreign key (category_id) references category(id)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/* filling  note_category table with fake data*/

insert into note_category
values
(1, 3, 3),
(2, 5, 10),
(3, 1, 4),
(4, 9, 7),
(5, 4, 4),
(6, 8, 1),
(7, 5, 5),
(8, 1, 5),
(9, 4, 9),
(10, 7, 1);





