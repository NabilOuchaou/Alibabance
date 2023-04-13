CREATE DATABASE IF NOT EXISTS glo_2005_webapp_2023;
use glo_2005_webapp_2023;


drop table if exists Favoris;
drop table if exists Livraisons;
DROP TABLE if exists Commandes;
DROP TABLE if exists Paniers;
DROP TABLE if exists Produits;
drop table if exists Inventaire;



CREATE TABLE if not exists Utilisateurs (email varchar (40) PRIMARY KEY, nom varchar (20), prenom varchar (20), telephone integer(11),age integer(2));
CREATE TABLE if not exists Inventaire (id_produit integer PRIMARY KEY, nom char(60),stock integer,taille double, cout_produit double);
CREATE TABLE IF NOT EXISTS Produits(id_modele integer PRIMARY KEY AUTO_INCREMENT, image varchar(900), nom_produit varchar (45),couleur varchar(10), prix_produit double, en_stock integer (1));
create table if not exists Passwords(email varchar (40),mot_de_passe varchar (50), FOREIGN KEY (email) REFERENCES Utilisateurs(email));


CREATE TABLE IF NOT EXISTS Paniers (id_Produit integer, email varchar (40), FOREIGN KEY (email) REFERENCES utilisateurs (email), FOREIGN KEY (id_Produit) REFERENCES Inventaire(id_produit));
CREATE TABLE IF NOT EXISTS Commandes(id_commande integer PRIMARY KEY NOT NULL AUTO_INCREMENT,adresse CHAR(20), email varchar (40), prix_totalCommande double, FOREIGN KEY (email) REFERENCES utilisateurs (email));
CREATE TABLE IF NOT EXISTS Livraisons(id_commande integer, adresse CHAR(30), jour char(20), FOREIGN KEY (id_commande) REFERENCES Commandes(id_commande));
create table if not exists Favoris(id_Produit integer, id_utilisateur integer);

INSERT INTO Inventaire VALUES (1, "Yeezy Slides Rouge",50, 5.0, 20.0), (2,"Yeezy Slides Rouge", 75, 5.5, 22.0), (3,"Yeezy Slides Rouge", 100, 6.0, 25.0), (4,"Yeezy slides noir", 120, 6.0, 21.0), (5,"Yeezy slides rouge", 80, 6.5, 30.0),(6,"Yeezy slides mauve", 60, 6.5, 28.0),(7,"Yeezy slides rouge", 45, 7.0, 25.0),(8,"Yeezy slides noir", 30, 7.0, 27.0),(9,"Yeezy slides rouge", 20, 7.5, 20.0),(10,"Yeezy slides jaune", 10, 7.5, 22.0);
INSERT INTO Inventaire VALUES (11,"Yeezy Slides Beige", 5, 8.0, 20.0),(12,"Yeezy Slides Rouge", 2, 8.0, 27.0),(13,"Yeezy Slides Rouge", 1, 8.5, 25.0),(14,"Yeezy Slides beige", 30, 8.5, 22.0),(15,"Yeezy Slides beige", 40, 9.0, 25.0),(16,"Yeezy Slides rouge", 50, 9.0, 27.0),(17, "Yeezy Slides beige",10, 9.5, 20.0),(18,"Yeezy Slides noir", 8, 9.5, 28.0),(19,"Yeezy Slides beige", 88, 10.0, 29.0),(20,"Yeezy Slides gris", 72, 10.0, 37.0);
INSERT INTO Inventaire VALUES(21,"Yeezy Slides beige", 0, 10.5, 20.0),(22,"Yeezy Slides bleu", 10, 10.5, 22.0),(23,"Yeezy Slides bleu", 30, 11.0, 25.0),(24,"Yeezy Slides beige", 7, 11.0, 37.0),(25,"Yeezy Slides beige", 30, 11.5, 30.0),(26,"Yeezy Slides bleu", 18, 11.5, 22.0),(27,"Yeezy Slides beige", 12, 12.0, 35.0),(28,"Yeezy Slides bleu", 6, 12.0, 37.0);
INSERT INTO Inventaire VALUES (29,"Yeezy Slides noir", 10, 12.0, 20.0), (30,"Yeezy Slides mauve", 30, 12.0, 23.0),(31,"Yeezy Slides noir", 20, 11.0, 20.0),(32,"Yeezy Slides mauve", 20, 11.0, 20.0),(33,"Yeezy Slides noir", 30, 8.5, 20.0),(34,"Yeezy Slides noir", 80, 7.5, 20.0),(35,"Yeezy Slides noir", 90, 6.0, 22.0),(36,"Yeezy Slides noir", 20, 8.0, 21.0),(37,"Yeezy Slides mauve", 30, 11.5, 20.0),(38,"Yeezy slides turquoise", 40, 9.5, 26.0),(39,"Yeezy slides turquoise", 10, 10.0, 30.0);
INSERT INTO Inventaire VALUES (40,"Yeezy Slides noir", 10, 8.0, 23.0),(41,"Yeezy slides turquoise", 10, 8.5, 24.0),(42,"Yeezy Slides noir", 10, 11.5, 25.0),(43,"Yeezy Slides vert pâle", 10, 7.0, 28.0),(44,"Yeezy Slides brun foncé", 50, 7.0, 32.0), (45,"Yeezy Slides vert pâle", 50, 7.5, 32.0),(46,"Yeezy Slides jaune", 80, 7.5, 32.0),(47,"Yeezy Slides jaune", 90, 7.0, 20.0),(48,"Yeezy Slides mauve", 60, 7.0, 20.0),(49,"Yeezy Slides brun foncé", 60, 7.5, 20.0);
INSERT INTO Inventaire VALUES(50,"Yeezy slides turquoise", 10, 7.5, 20.0),(51,"Yeezy slides turquoise", 20, 8.0, 20.0),(52,"Yeezy Slides mauve", 20, 8.0, 20.0),(53,"Yeezy Slides mauve", 30, 8.5, 20.0),(54,"Yeezy Slides vert pâle", 33, 8.5, 20.0),(55,"Yeezy Slides brun", 133, 9.0, 20.0),(56,"Yeezy Slides brun", 90, 10.0, 20.0),(57,"Yeezy Slides brun", 89, 10.5, 20.0),(58,"Yeezy Slides brun", 100, 9.5, 20.0),(59,"Yeezy Slides brun", 80, 8.0, 20.0),(60,"Yeezy Slides brun foncé", 60, 9.0, 20.0);
INSERT INTO Inventaire VALUES (61,"Yeezy Slides gris", 50, 6.0, 23.0),(62,"Yeezy Slides gris", 75, 6.5, 25.0),(63,"Yeezy Slides gris", 100, 7.0, 27.0),(64,"Yeezy Slides gris", 120, 7.0, 21.0),(65,"Yeezy Slides gris", 80, 7.5, 28.0),(66,"Yeezy Slides gris clair", 60, 7.5, 26.0),(67,"Yeezy Slides gris", 45, 8.0, 23.0),(68,"Yeezy Slides gris clair", 30, 8.0, 25.0),(69,"Yeezy Slides gris", 20, 8.5, 20.0),(70,"Yeezy Slides gris clair", 10, 8.5, 22.0),(71,"Yeezy Slides vert", 50, 9.0, 23.0),(72,"Yeezy Slides vert", 75, 9.5, 25.0),(73,"Yeezy Slides vert", 100, 10.0, 27.0),(74,"Yeezy Slides vert", 120, 10.0, 21.0),(75,"Yeezy Slides vert", 80, 10.5, 28.0),(76,"Yeezy Slides vert pâle", 60, 10.5, 26.0),(77,"Yeezy Slides vert", 45, 11.0, 23.0),(78,"Yeezy Slides vert pâle", 30, 11.0, 25.0),(79,"Yeezy Slides vert", 20, 11.5, 20.0),(80,"Yeezy Slides orange", 10, 11.5, 22.0),(81,"Yeezy Slides orange", 50, 12.0, 23.0),(82,"Yeezy Slides orange", 75, 6.0, 25.0),(83,"Yeezy Slides orange", 100, 7.5, 27.0),(84,"Yeezy Slides gris clair", 120, 7.5, 21.0),(85,"Yeezy Slides orange", 80, 9.0, 28.0),(86,"Yeezy Slides blanc", 60, 9.0, 26.0),(87,"Yeezy Slides blanc", 45, 10.5, 23.0),(88,"Yeezy Slides turquoise", 30, 10.5, 25.0),(89,"Yeezy Slides blanc", 20, 6.5, 20.0),(90,"Yeezy Slides gris clair", 10, 6.5, 22.0),(91,"Yeezy Slides blanc", 50, 7.0, 23.0),(92,"Yeezy Slides blanc", 75, 7.5, 25.0),(93,"Yeezy Slides blanc", 100, 8.0, 27.0),(94,"Yeezy Slides jaune", 120, 8.0, 21.0),(95,"Yeezy Slides blanc", 80, 8.5, 28.0),(96,"Yeezy Slides blanc", 60, 8.5, 26.0),(97,"Yeezy Slides blanc", 45, 9.0, 23.0),(98,"Yeezy Slides jaune", 30, 9.0, 25.0),(99,"Yeezy Slides brun foncé", 20, 9.5, 20.0),(100,"Yeezy Slides gris clair", 10, 9.5, 22.0);
INSERT INTO Inventaire VALUES (101, "Manteau Canada Goose Noir", 10, 1.0, 500),(102, "Manteau Canada Goose Bleu", 10, 1.0, 500),(103, "Manteau Canada Goose Rouge", 10, 1.0, 500),(104, "Manteau Canada Goose Gris", 10, 1.0, 500),(105, "Basket Adidas Superstar Blanche", 20, 8.0, 100.0),(106, "Basket Nike Air Max 97 Argentée", 15, 9.0, 150.0),(107, "Basket Puma Suede Noire", 25, 7.0, 80.0),(108, "Maillot de football PSG Domicile 2022 ", 10, 1.0, 90.0),(109, "Maillot de football Real Madrid Extérieur 2022 ", 8, 3, 90.0),(110, "Maillot de basketball Nike Lakers Jaune", 5, 3.0, 120.0),(111, "Pantalon de jogging Adidas Noir", 30, 1.0, 60.0),(112, "Sweat à capuche Adidas Gris", 25, 2.0, 80.0),(113, "T-shirt Lacoste Blanc", 50, 2.0, 50.0);
INSERT INTO Inventaire VALUES
(114, 'Casquette noir', 15, 2.0, 150.0),(115, 'Casquette rouge', 40, 1.0, 70.0),(116, 'Casquette blanche', 20, 1.0, 30.0),
(117, 'Casquette jaune', 30, 1.0, 100.0),(118, 'Casquette mauve', 12, 2.0, 200.0),(119, 'Casquette grise', 5, 1.0, 600.0),
(120, 'Casquette orange', 8, 2.0, 500.0),(121, 'Casquette verte', 10, 1.0, 250.0),(122, 'Moncler Maya Bleu', 7, 1.0, 1000.0),(123, 'Moncler Maya Noir', 20, 2.0, 1200.0),
(124, 'Moncler Maya Rouge', 15, 1.0, 1500.0),(125, 'Moncler Maya Mauve', 5, 2.0, 1400.0),(126, 'Moncler Maya Blanc', 30, 3.0, 1800.0),
(127, 'Nike Survet Rouge ', 10, 2.0, 200.0),(128, 'Nike Survet Noir', 8, 3.0, 300.0),(129, 'Nike survet Blanc', 25, 2.0, 100.0),
(130, 'Nike Survet Gris', 12, 1.0, 150.0),(131, 'Maillot de football PSG ', 18, 3.0, 80.0),(132, 'Maillot de football FC Barcelone ', 20, 3.0, 80.0),
(133, 'Maillot de basketball Los Angeles Lakers ', 15, 3.0, 70.0),(134, 'Doudoune noir', 10, 8.0, 1100.0),(135, 'Doudoune blanche', 12, 7.0, 900.0),
(136, 'Doudoune bleu', 5, 3.0, 900.0),(137, 'Doudoune rouge', 7, 2.0, 400.0),(138, 'Foulard bleu', 20, 2.0, 150.0),(139, 'Foulard blanc', 30, 1.0, 80.0),
(140, 'Foulard rouge', 15, 2.0, 100.0),(141, 'Foulard noir', 20, 1.0, 150.0),(142, 'Foulard gris', 25, 1.0, 120.0),
(143, 'Foulard turquoise', 18, 2.0, 90.0),(144, 'Foulard mauve', 22, 2.0, 70.0),(145, 'Foulard vert', 17, '41', 110.0),
(146, 'Manteau Burberry', 6, 9.5, 450.0),
(147, 'Parka à capuche Canada Goose ', 8, 1.0, 800.0),
(148, 'Chemise noir', 14, 1.0,60.0);

INSERT INTO Inventaire VALUES (149, 'Chemise blanche', 20, 1.0, 50),
(150, 'Chemise bleu pâle', 30, 1.0, 25),
(151, 'Chemise rouge', 40, 1.0, 30),
(152, 'Chemise rose', 25, 1.0, 70),
(153, 'T-shirt Manchester United', 15, 1.0, 80),
(154, 'T-shirt Chelsea', 5, 2.0, 150),
(155, 'T-shirt Roma', 10,1.0, 100),
(156, 'T-shirt Tottenham', 5, 2.0, 120),
(157, 'T-shirt Juventus', 20, 2.0, 20),
(158, 'T-shirt Manchester City', 15, 1.0, 60),
(159, 'T-shirt Bayern', 10, 1.0, 40),
(160, 'T-shirt Puma', 20, 1.0, 25),
(161, 'Survet Lacoste', 30, 3.0, 65),
(162, 'Survet Nike', 5, 2.0, 120),
(163, 'Survet NB', 25, 2.0, 80),
(164, 'Hoodie jaune', 10, 1.0, 90),
(165, 'Hoodie bleu', 5, 1.0, 110),
(166, 'Hoodie mauve', 15, 1.0, 100),
(167, 'Hoodie blanc', 20, 1.0, 45);

INSERT INTO Inventaire VALUES (168, 'Veste noir', 20, 1.0, 60),
(169, 'Veste blanche', 30, 1.0, 120),
(170, 'Veste mauve', 25, 1.0, 150),
(171, 'Pull Nike rouge', 20, 1.0, 90),
(172, 'Sweat à capuche Dior gris', 15, 1.0, 250),
(173, 'Sac bandoulière Dior beige', 10, 1.0, 300),
(174, 'Veste coupe-vent Nike noire', 30, 1.0, 130),
(175, 'Chaussures de basket Nike Jordan', 40, 9.0, 200),
(176, 'Blouson Dior en cuir', 15, 1.0, 700),
(177, 'Chaussettes Nike noires', 50, 1.0, 10),
(178, 'Short de sport Nike noir', 35, 1.0, 60),
(179, 'Veste en jean Dior', 20, 1.0, 400),
(180, 'Chaussures de foot Nike Phantom GT', 25, 1.0, 250),
(181, 'Sweat-shirt Nike gris', 25, 1.0, 80),
(182, 'Sac banane Dior noir', 15, 2.0, 350),
(183, 'Veste à capuche Nike Tech Fleece', 30, 2.0, 150),
(184, 'T-shirt Dior noir', 20, 2.0, 170),
(185, 'Chaussures de running Nike Air Zoom Structure 25', 30, 2.0, 140),
(186, 'Pantalon de survêtement Nike noir', 35, 2.0, 100),
(187, 'Casquette Dior noire', 40, 2.0, 120),
(188, 'Polo Nike rouge', 25, 2.0, 70),
(189, 'Blouson aviateur Dior noir', 15, 2.0, 800),
(190, 'Sac à dos Dior beige', 20, 2.0, 400),
(191, 'Chaussures de skate Nike SB', 30, 2.0, 100),
(192, 'T-shirt Nike blanc', 20, 2.0, 40),
(193, 'Sweat à capuche Dior noir', 15, 2.0, 300),
(194, 'Chaussettes Dior blanches', 50, 2.0, 20),
(195, 'Pantalon de survêtement Dior noir', 20, 2.0, 250),
(196, 'Veste coupe-vent Nike rouge', 30,1.0,100 ),
 (197, 'Veste turquoise', 20, 1.0, 60),
(198, 'Veste beige', 30, 1.0, 120),
(199, 'Veste rose', 25, 1.0, 150),
(200, 'Pull Nike brun', 20, 1.0, 90);

INSERT INTO Produits VALUES (1,"https://cdn.shopify.com/s/files/1/0295/2563/9247/products/YeezySlidesRed_800x.png","Yeezy slides", "rouge",20.0,1), (4,"https://cdn.shopify.com/s/files/1/1622/9929/products/AdidasYeezySlideOnyxMen_s1.png?v=1648277878","Yeezy slides","noir", 21.0,1),(6,"https://i.pinimg.com/originals/e6/6e/eb/e66eeb307ed9669c01a3aa1a26a485b5.png","Yeezy slides","mauve", 28.0,1),(10,"https://static.ticimax.cloud/41550/uploads/urunresimleri/thumb/cabani-yeezy-slide-kadin-terlik-yezy-1-b7cc-7.jpg","Yeezy slides","jaune",22.0,1);
INSERT INTO Produits VALUES (11,"https://image.goat.com/1000/attachments/product_template_pictures/images/075/054/238/original/952291_00.png.png","Yeezy slides", "beige", 20.0,1),(20,"https://cdn.shopify.com/s/files/1/2482/7148/products/1_19b7eeb6-89e6-40e0-8378-ed934b2a5722_2048x2048.jpg?v=1650915125","Yeezy slides", "gris", 37.0,1),(23,"https://sneakernews.com/wp-content/uploads/2022/08/adidas-Yeezy-Slide-Azure-2022.jpg","Yeezy slides", "bleu", 25.0,1),(38,"https://media.callitspring.com/v3/product/julep/440-002-041/julep_blue_440-002-041_alt2_sq_wt_1200x1200.jpg","Yeezy slides", "turquoise", 26.0,1);
INSERT INTO Produits VALUES (43,"https://i.ebayimg.com/images/g/syAAAOSwgVxieozc/s-l500.jpg","Yeezy slides", "vert pâle",28.0,1),(44,"https://cdn.shopify.com/s/files/1/0549/8136/1745/products/3505939eaabdf134c3bf6b99b1c8f452.jpg?v=1660573716","Yeezy slides", "brun foncé", 32.0,1),(55,"https://cdn.shopify.com/s/files/1/0549/8136/1745/products/GW1931-3_600x600_crop_center.jpg?v=1640870556","Yeezy slides", "brun", 20.0,1);
INSERT INTO Produits VALUES (66,"https://cdn.sneakers123.com/release/445934/adidas-adidas-yeezy-slide-bone-2022-kids-fz5902.jpg","Yeezy slides", "gris clair", 26.0,1),(71,"https://cdn.shopify.com/s/files/1/2358/2817/products/yeezy-slide-resin-892836.png?v=1638814962","Yeezy slides", "vert",23.0,1),(80,"https://sneakernews.com/wp-content/uploads/2021/03/adidas-yeezy-slide-orange.jpg?w=1140","Yeezy slides", "orange",22.0,1),(86,"https://i.etsystatic.com/36459986/r/il/cac3a3/4103565368/il_fullxfull.4103565368_aw8k.jpg","Yeezy slides", "blanc", 26.0,1);


insert into Utilisateurs value ("hamid@gmail.com","Lihwak","hamid",418569293,20);
insert into Passwords value ("hamid@gmail.com","String123");


SELECT mot_de_passe FROM Passwords P WHERE P.mot_de_passe = 'String123' and P.email = 'hamid@gmail.com'



select count(*) from Inventaire where nom like "%Yeezy slides Rouge%"