INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ana', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_VISITOR')
INSERT INTO tb_role (authority) VALUES ('ROLE_MEMBER')

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_genre (name) VALUES ('Action');
INSERT INTO tb_genre (name) VALUES ('Comedy');

INSERT INTO tb_movie (img_url, sub_title, synopsis, title, year, genre_id) VALUES ('https://cars', 'Rio de Janeiro' ,'An amazing movie', 'Fast and Furious', 2011, 1)
INSERT INTO tb_movie (img_url, sub_title, synopsis, title, year, genre_id) VALUES ('https://mom', 'O filme' ,'An amazing movie', 'Minha mãe é uma peça 3', 2019, 2)

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Perfect!', 1, 1)
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Incredible!', 2, 2)
