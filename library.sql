create table books
(
    id              serial primary key,
    Title           varchar(50),
    Author          varchar(50),
    Publisher       varchar(50),
    Production_date date,
    NumberOfCopies  int
);

create table reader
(
    id           serial primary key,
    First_name   varchar(50),
    Last_name    varchar(50),
    Address      varchar(50),
    Phone_number int,
    Email        varchar(50)
);

create table genre
(
    id   serial primary key,
    Name varchar(30)
);

create table author
(
    id         serial primary key,
    First_name varchar(50),
    Last_name  varchar(50),
    Birth_year int,
    Death_year int
);

create table loan
(
    id          serial primary key,
    book_id     int,
    reader_id   int,
    loan_date   date,
    return_date date,
    FOREIGN KEY (book_id) references books (id),
    foreign key (reader_id) references reader (id)
);
create table authorship
(
    id        serial primary key,
    book_id   int,
    author_id int,
    FOREIGN KEY (book_id) references books (id),
    Foreign Key (author_id) references author (id)
);

create table GenreAssignment
(
    id       serial primary key,
    book_id  int,
    genre_id int,
    foreign key (book_id) references books (id),
    foreign key (genre_id) references genre (id)
);
insert into books(title, author, publisher, production_date, numberofcopies)
values ('A Tale of Two Cities', ' Charles Dickens', 'Chapman & Hall', '1775-05-30', 500),
       ('The Hound of the Baskervilles', 'Arthur Conan Doyle', 'George Newnes Ltd', '1902-04-25', 250),
       ('War and Peace', 'Leo Tolstoy', ' Russian Messenger', '1867-01-01', 200),
       ('Oliver Twist', ' Charles Dickens', 'Richard Bentley', '1839-04-28', 300),
       ('Animal Farm', 'George Orwell', 'Secker and Warburg', '1945-08-18', 500);

INSERT INTO Reader (First_name, Last_Name, Address, Phone_Number, Email)
VALUES ('John', 'Doe', 'Goven St', '5551234', 'john@gmail.com'),
       ('Jane', 'Smith', 'Elm St', '5555678', 'jane@gmail.com'),
       ('Alisa', 'Wonder', 'Man St', '5551343', 'alisa@gmail.com');

insert into genre(Name)
values ('war'),
       ('detective'),
       ('historical friction'),
       ('fiction'),
       ('satire');

insert into author (First_name, Last_name, Birth_year, Death_year)
VALUES ('Charles', 'Dickens', 1821, 1870),
       ('Arthur', 'Conan', 1859, 1930),
       ('Leo', 'Tolstoy', 1829, 1910),
       ('George', 'Orwell', 1903, 1950);

insert into loan(book_id, reader_id, loan_date, return_date)
VALUES (2, 1, '2023-05-07', '2023-06-01'),
       (1, 3, '2023-07-01', null),
       (5, 2, '2023-07-10', null);

insert into authorship(book_id, author_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 1),
       (5, 4);

insert into genreassignment (book_id, genre_id)
VALUES (1, 3),
       (2, 2),
       (3, 1),
       (4, 4),
       (5, 4);

