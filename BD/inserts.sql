#categories

insert into categorie (cat_name) values ('Eletrónica');          # cat_id = 1
insert into categorie (cat_name) values ('Moda');                # cat_id = 2
insert into categorie (cat_name) values ('Casa');                # cat_id = 3
insert into categorie (cat_name) values ('Desporto');            # cat_id = 4
insert into categorie (cat_name) values ('Colecionáveis');       # cat_id = 5
insert into categorie (cat_name) values ('Videojogos');          # cat_id = 6
insert into categorie (cat_name) values ('Automóveis');          # cat_id = 7
insert into categorie (cat_name) values ('Livros');              # cat_id = 8

#users

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Rodrigo Canto', 'rodrigocanto@hotmail.com', 'canto', 'M', 20, 'rodrigo_canto.jpg', 'Estudante e fã de tecnologia.', 120, 'admin', str_to_date('2025.10.20','%Y.%m.%d'));        # usr_id = 1

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Rodrigo Daibert', 'rodrigodaibert@hotmail.com', '1234', 'M', 20, 'rodrigo_daibert.jpg', 'Gosto de leilões e gaming.', 95, 'normaluser', str_to_date('2025.10.22','%Y.%m.%d'));       # usr_id = 2

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Marco Fonseca', 'mf2006@gmail.com', 'hash1', 'M', 19, 'marco_fonseca.jpg', 'Colecionador e vendedor ocasional.', 180, 'normaluser', str_to_date('2025.10.24','%Y.%m.%d'));            # usr_id = 3

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Luis Quirim', 'luisquirim@gmail.com', 'hash1', 'M', 21, 'luis_quirim.jpg', 'Interesso-me por artigos para casa e carros.', 60, 'normaluser', str_to_date('2025.10.28','%Y.%m.%d'));    # usr_id = 4

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Sandra Estrela', 'sandra@hotmail.com', 'hash1', 'F', 22, 'sandra_estrela.jpg', 'Adoro moda e decoração.', 140, 'normaluser', str_to_date('2025.10.30','%Y.%m.%d'));                 # usr_id = 5

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Daniel Paulo', 'dexpaulo@hotmail.com', 'hash1', 'M', 20, 'daniel_paulo.jpg', 'Utilizador ativo na plataforma.', 75, 'normaluser', str_to_date('2025.11.01','%Y.%m.%d'));               # usr_id = 6

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Jocy Grangeiro', 'jocy12@gmail.com', 'hash1', 'F', 21, 'jocy_grangeiro.jpg', 'Gosto de oportunidades e prémios.', 110, 'normaluser', str_to_date('2025.11.04','%Y.%m.%d'));            # usr_id = 7

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Paulo Alberto', 'pauloencomendas@gmail.com', 'hash1', 'M', 24, 'paulo_alberto.jpg', 'Interessa-me eletrónica e desporto.', 90, 'normaluser', str_to_date('2025.11.09','%Y.%m.%d'));     # usr_id = 8

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Patricia Daibert', 'patriciadaibert@hotmail.com', 'hash1', 'F', 23, 'patricia_daibert.jpg', 'Procuro artigos de moda e casa.', 130, 'normaluser', str_to_date('2025.11.13','%Y.%m.%d')); # usr_id = 9

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Martim Fonseca', 'mrmartim@hotmail.com', 'hash1', 'M', 19, 'martim_fonseca.jpg', 'Curioso por videojogos e gadgets.', 55, 'normaluser', str_to_date('2025.12.01','%Y.%m.%d'));          # usr_id = 10

insert into userss (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_photo, usr_bio, usr_xp, usr_role, usr_created_at)
values ('Tomas Lebre', 'tomaslebre@gmail.com', 'hash1', 'M', 20, 'tomas_lebre.jpg', 'Participante frequente em leilões.', 70, 'normaluser', str_to_date('2025.12.02','%Y.%m.%d'));               # usr_id = 11

#products

insert into product (prd_name, prd_description, prd_cat_id, prd_usr_id, prd_condition, prd_start_price, prd_location, prd_latitude, prd_longitude, prd_status, prd_ends_at, prd_created_at)
values ('iPhone 13', 'iPhone 13 em excelente estado, 128GB.', 1, 1, 'very good', 450.00, 'Lisboa', 38.7223000, -9.1393000, 'active', str_to_date('2025.12.20','%Y.%m.%d'), str_to_date('2025.12.10','%Y.%m.%d'));   # prd_id = 1

insert into product (prd_name, prd_description, prd_cat_id, prd_usr_id, prd_condition, prd_start_price, prd_location, prd_latitude, prd_longitude, prd_status, prd_ends_at, prd_created_at)
values ('PlayStation 5', 'Consola PS5 com comando incluído.', 6, 3, 'good', 380.00, 'Almada', 38.6800000, -9.1580000, 'active', str_to_date('2025.12.21','%Y.%m.%d'), str_to_date('2025.12.11','%Y.%m.%d'));    # prd_id = 2

insert into product (prd_name, prd_description, prd_cat_id, prd_usr_id, prd_condition, prd_start_price, prd_location, prd_latitude, prd_longitude, prd_status, prd_ends_at, prd_created_at)
values ('Casaco de Pele', 'Casaco em muito bom estado, tamanho M.', 2, 5, 'good', 60.00, 'Porto', 41.1579000, -8.6291000, 'active', str_to_date('2025.12.22','%Y.%m.%d'), str_to_date('2025.12.12','%Y.%m.%d')); # prd_id = 3

insert into product (prd_name, prd_description, prd_cat_id, prd_usr_id, prd_condition, prd_start_price, prd_location, prd_latitude, prd_longitude, prd_status, prd_ends_at, prd_created_at)
values ('Bicicleta BTT', 'Bicicleta de montanha com pouco uso.', 4, 1, 'good', 150.00, 'Braga', 41.5454000, -8.4265000, 'active', str_to_date('2025.12.24','%Y.%m.%d'), str_to_date('2025.12.12','%Y.%m.%d'));   # prd_id = 4

insert into product (prd_name, prd_description, prd_cat_id, prd_usr_id, prd_condition, prd_start_price, prd_location, prd_latitude, prd_longitude, prd_status, prd_ends_at, prd_created_at)
values ('Relógio Vintage', 'Relógio colecionável dos anos 80.', 5, 3, 'satisfactory', 90.00, 'Coimbra', 40.2033000, -8.4103000, 'active', str_to_date('2025.12.23','%Y.%m.%d'), str_to_date('2025.12.13','%Y.%m.%d'));  # prd_id = 5

insert into product (prd_name, prd_description, prd_cat_id, prd_usr_id, prd_condition, prd_start_price, prd_location, prd_latitude, prd_longitude, prd_status, prd_ends_at, prd_created_at)
values ('Mesa de Jantar', 'Mesa de madeira para 6 pessoas.', 3, 5, 'good', 120.00, 'Setúbal', 38.5244000, -8.8882000, 'active', str_to_date('2025.12.26','%Y.%m.%d'), str_to_date('2025.12.14','%Y.%m.%d'));     # prd_id = 6

insert into product (prd_name, prd_description, prd_cat_id, prd_usr_id, prd_condition, prd_start_price, prd_location, prd_latitude, prd_longitude, prd_status, prd_ends_at, prd_created_at)
values ('Livro Java', 'Livro técnico de programação em Java.', 8, 1, 'very good', 25.00, 'Aveiro', 40.6405000, -8.6538000, 'active', str_to_date('2025.12.27','%Y.%m.%d'), str_to_date('2025.12.15','%Y.%m.%d'));      # prd_id = 7

insert into product (prd_name, prd_description, prd_cat_id, prd_usr_id, prd_condition, prd_start_price, prd_location, prd_latitude, prd_longitude, prd_status, prd_ends_at, prd_created_at)
values ('Jantes 18 Polegadas', 'Conjunto de 4 jantes em bom estado.', 7, 3, 'good', 300.00, 'Sintra', 38.8029000, -9.3817000, 'active', str_to_date('2025.12.28','%Y.%m.%d'), str_to_date('2025.12.16','%Y.%m.%d')); # prd_id = 8

#product_images

insert into product_image (img_prd_id, img_path)
values (1, 'iphone13_1.jpg');   # img_id = 1

insert into product_image (img_prd_id, img_path)
values (1, 'iphone13_2.jpg');   # img_id = 2

insert into product_image (img_prd_id, img_path)
values (2, 'ps5_1.jpg');        # img_id = 3

insert into product_image (img_prd_id, img_path)
values (2, 'ps5_2.jpg');        # img_id = 4

insert into product_image (img_prd_id, img_path)
values (3, 'casaco_pele_1.jpg'); # img_id = 5

insert into product_image (img_prd_id, img_path)
values (4, 'bicicleta_btt_1.jpg'); # img_id = 6

insert into product_image (img_prd_id, img_path)
values (4, 'bicicleta_btt_2.jpg'); # img_id = 7

insert into product_image (img_prd_id, img_path)
values (5, 'relogio_vintage_1.jpg'); # img_id = 8

insert into product_image (img_prd_id, img_path)
values (6, 'mesa_jantar_1.jpg'); # img_id = 9

insert into product_image (img_prd_id, img_path)
values (7, 'livro_java_1.jpg'); # img_id = 10

insert into product_image (img_prd_id, img_path)
values (8, 'jantes_18_1.jpg');  # img_id = 11

insert into product_image (img_prd_id, img_path)
values (8, 'jantes_18_2.jpg');  # img_id = 12

#bids

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (1, 2, 460.00, str_to_date('2025.12.10 10:00','%Y.%m.%d %H:%i'));  # bid_id = 1

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (1, 6, 480.00, str_to_date('2025.12.10 12:30','%Y.%m.%d %H:%i'));  # bid_id = 2

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (1, 8, 500.00, str_to_date('2025.12.11 09:15','%Y.%m.%d %H:%i'));  # bid_id = 3

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (2, 4, 390.00, str_to_date('2025.12.11 11:00','%Y.%m.%d %H:%i'));  # bid_id = 4

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (2, 7, 420.00, str_to_date('2025.12.11 14:20','%Y.%m.%d %H:%i'));  # bid_id = 5

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (3, 2, 65.00, str_to_date('2025.12.12 10:10','%Y.%m.%d %H:%i'));   # bid_id = 6

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (3, 9, 75.00, str_to_date('2025.12.12 13:45','%Y.%m.%d %H:%i'));   # bid_id = 7

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (4, 11, 160.00, str_to_date('2025.12.12 16:00','%Y.%m.%d %H:%i')); # bid_id = 8

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (4, 6, 180.00, str_to_date('2025.12.13 09:30','%Y.%m.%d %H:%i'));  # bid_id = 9

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (5, 8, 100.00, str_to_date('2025.12.13 11:00','%Y.%m.%d %H:%i'));  # bid_id = 10

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (5, 2, 120.00, str_to_date('2025.12.13 15:20','%Y.%m.%d %H:%i'));  # bid_id = 11

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (6, 7, 130.00, str_to_date('2025.12.14 10:00','%Y.%m.%d %H:%i'));  # bid_id = 12

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (7, 10, 30.00, str_to_date('2025.12.15 12:00','%Y.%m.%d %H:%i'));  # bid_id = 13

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (7, 11, 35.00, str_to_date('2025.12.15 14:10','%Y.%m.%d %H:%i'));  # bid_id = 14

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (8, 4, 320.00, str_to_date('2025.12.16 10:00','%Y.%m.%d %H:%i'));  # bid_id = 15

insert into bid (bid_prd_id, bid_usr_id, bid_amount, bid_created_at)
values (8, 8, 350.00, str_to_date('2025.12.16 13:30','%Y.%m.%d %H:%i'));  # bid_id = 16

#gamification

insert into gamification (gme_name, gme_description, gme_xp_reward, gme_prd_id, gme_latitude, gme_longitude, gme_radius, gme_status, gme_starts_at, gme_ends_at, gme_created_at)
values ('Tesouro Lisboa Centro', 'Encontra o iPhone escondido no centro de Lisboa.', 50, 1, 38.7223000, -9.1393000, 30, 'active', str_to_date('2025.12.05 10:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.05 18:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.05','%Y.%m.%d'));   # gme_id = 1

insert into gamification (gme_name, gme_description, gme_xp_reward, gme_prd_id, gme_latitude, gme_longitude, gme_radius, gme_status, gme_starts_at, gme_ends_at, gme_created_at)
values ('Tesouro Almada Fórum', 'Procura a PS5 escondida em Almada.', 40, 2, 38.6610000, -9.1580000, 25, 'active', str_to_date('2025.12.06 10:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.06 18:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.06','%Y.%m.%d'));      # gme_id = 2

insert into gamification (gme_name, gme_description, gme_xp_reward, gme_prd_id, gme_latitude, gme_longitude, gme_radius, gme_status, gme_starts_at, gme_ends_at, gme_created_at)
values ('Tesouro Porto Baixa', 'Casaco escondido na baixa do Porto.', 60, 3, 41.1579000, -8.6291000, 35, 'active', str_to_date('2025.12.07 10:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.07 18:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.07','%Y.%m.%d'));      # gme_id = 3

insert into gamification (gme_name, gme_description, gme_xp_reward, gme_prd_id, gme_latitude, gme_longitude, gme_radius, gme_status, gme_starts_at, gme_ends_at, gme_created_at)
values ('Tesouro Braga Centro', 'Bicicleta escondida em Braga.', 45, 4, 41.5454000, -8.4265000, 30, 'active', str_to_date('2025.12.08 10:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.08 18:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.08','%Y.%m.%d'));            # gme_id = 4

insert into gamification (gme_name, gme_description, gme_xp_reward, gme_prd_id, gme_latitude, gme_longitude, gme_radius, gme_status, gme_starts_at, gme_ends_at, gme_created_at)
values ('Tesouro Coimbra Praça', 'Relógio vintage escondido em Coimbra.', 55, 5, 40.2033000, -8.4103000, 30, 'active', str_to_date('2025.12.09 10:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.09 18:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.09','%Y.%m.%d')); # gme_id = 5

insert into gamification (gme_name, gme_description, gme_xp_reward, gme_prd_id, gme_latitude, gme_longitude, gme_radius, gme_status, gme_starts_at, gme_ends_at, gme_created_at)
values ('Tesouro Setúbal Mercado', 'Mesa escondida em Setúbal.', 35, 6, 38.5244000, -8.8882000, 20, 'active', str_to_date('2025.12.10 10:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.10 18:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.10','%Y.%m.%d'));    # gme_id = 6

insert into gamification (gme_name, gme_description, gme_xp_reward, gme_prd_id, gme_latitude, gme_longitude, gme_radius, gme_status, gme_starts_at, gme_ends_at, gme_created_at)
values ('Tesouro Aveiro Ria', 'Livro Java escondido em Aveiro.', 50, 7, 40.6405000, -8.6538000, 25, 'active', str_to_date('2025.12.11 10:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.11 18:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.11','%Y.%m.%d'));              # gme_id = 7

insert into gamification (gme_name, gme_description, gme_xp_reward, gme_prd_id, gme_latitude, gme_longitude, gme_radius, gme_status, gme_starts_at, gme_ends_at, gme_created_at)
values ('Tesouro Sintra Vila', 'Jantes escondidas em Sintra.', 70, 8, 38.8029000, -9.3817000, 40, 'active', str_to_date('2025.12.12 10:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.12 18:00','%Y.%m.%d %H:%i'), str_to_date('2025.12.12','%Y.%m.%d'));      # gme_id = 8

#gamification_claim

insert into gamification_claim (gcl_gme_id, gcl_usr_id, gcl_claimed_at, gcl_status)
values (1, 2, str_to_date('2025.12.05 10:30','%Y.%m.%d %H:%i'), 'winner');

insert into gamification_claim (gcl_gme_id, gcl_usr_id, gcl_claimed_at, gcl_status)
values (1, 6, str_to_date('2025.12.05 11:00','%Y.%m.%d %H:%i'), 'invalid');

insert into gamification_claim (gcl_gme_id, gcl_usr_id, gcl_claimed_at, gcl_status)
values (2, 4, str_to_date('2025.12.06 10:45','%Y.%m.%d %H:%i'), 'winner');

insert into gamification_claim (gcl_gme_id, gcl_usr_id, gcl_claimed_at, gcl_status)
values (2, 7, str_to_date('2025.12.06 11:15','%Y.%m.%d %H:%i'), 'invalid');

insert into gamification_claim (gcl_gme_id, gcl_usr_id, gcl_claimed_at, gcl_status)
values (3, 8, str_to_date('2025.12.07 12:00','%Y.%m.%d %H:%i'), 'winner');

insert into gamification_claim (gcl_gme_id, gcl_usr_id, gcl_claimed_at, gcl_status)
values (3, 9, str_to_date('2025.12.07 12:30','%Y.%m.%d %H:%i'), 'invalid');
