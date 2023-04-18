CREATE DATABASE IF NOT EXISTS glo_2005_webapp_2023;
use glo_2005_webapp_2023;


drop table if exists Favoris;
drop table if exists Livraisons;
DROP TABLE if exists Commandes;
DROP TABLE if exists Paniers;
DROP TABLE if exists Produits;
drop table if exists Inventaire;



CREATE TABLE if not exists Utilisateurs (email varchar (40) PRIMARY KEY, nom varchar (20), prenom varchar (20), telephone varchar(11),age integer(2));
CREATE TABLE if not exists Inventaire (id_produit integer PRIMARY KEY,id_modele integer, nom char(60),stock integer,taille double, cout_produit double);
CREATE TABLE IF NOT EXISTS Produits(id_modele integer PRIMARY KEY AUTO_INCREMENT, image varchar(10000), nom_produit varchar (45),couleur varchar(30), prix_produit double, en_stock integer (1));
create table if not exists Passwords(email varchar (40),mot_de_passe varchar (255), FOREIGN KEY (email) REFERENCES Utilisateurs(email));


CREATE TABLE IF NOT EXISTS Paniers(id_Produit integer, email varchar (40), FOREIGN KEY (email) REFERENCES utilisateurs (email), FOREIGN KEY (id_Produit) REFERENCES Inventaire(id_produit));
CREATE TABLE IF NOT EXISTS Commandes(id_commande integer PRIMARY KEY NOT NULL AUTO_INCREMENT, email varchar (40), prix_totalCommande DECIMAL(10, 2), FOREIGN KEY (email) REFERENCES utilisateurs (email));
CREATE TABLE IF NOT EXISTS Livraisons(id_commande integer, adresse CHAR(30), jour char(20), FOREIGN KEY (id_commande) REFERENCES Commandes(id_commande));
create table if not exists Favoris(id_Produit integer, id_utilisateur integer);

INSERT INTO Inventaire VALUES (1,1, "Yeezy Slides Rouge",50, 5.0, 20.0), (2,1,"Yeezy Slides Rouge", 75, 5.5, 22.0), (3,1,"Yeezy Slides Rouge", 100, 6.0, 25.0), (4,2,"Yeezy slides noir", 120, 6.0, 21.0), (5,1,"Yeezy slides rouge", 80, 6.5, 30.0),(6,3,"Yeezy slides mauve", 60, 6.5, 28.0),(7,1,"Yeezy slides rouge", 45, 7.0, 25.0),(8,2,"Yeezy slides noir", 30, 7.0, 27.0),(9,1,"Yeezy slides rouge", 20, 7.5, 20.0),(10,4,"Yeezy slides jaune", 10, 7.5, 22.0);
INSERT INTO Inventaire VALUES (11,5,"Yeezy Slides Beige", 5, 8.0, 20.0),(12,1,"Yeezy Slides Rouge", 2, 8.0, 27.0),(13,1,"Yeezy Slides Rouge", 1, 8.5, 25.0),(14,5,"Yeezy Slides beige", 30, 8.5, 22.0),(15,5,"Yeezy Slides beige", 40, 9.0, 25.0),(16,1,"Yeezy Slides rouge", 50, 9.0, 27.0),(17,5, "Yeezy Slides beige",10, 9.5, 20.0),(18,1,"Yeezy Slides noir", 8, 9.5, 28.0),(19,5,"Yeezy Slides beige", 88, 10.0, 29.0),(20,6,"Yeezy Slides gris", 72, 10.0, 37.0);
INSERT INTO Inventaire VALUES(21,5,"Yeezy Slides beige", 0, 10.5, 20.0),(22,7,"Yeezy Slides bleu", 10, 10.5, 22.0),(23,7,"Yeezy Slides bleu", 30, 11.0, 25.0),(24,5,"Yeezy Slides beige", 7, 11.0, 37.0),(25,5,"Yeezy Slides beige", 30, 11.5, 30.0),(26,7,"Yeezy Slides bleu", 18, 11.5, 22.0),(27,5,"Yeezy Slides beige", 12, 12.0, 35.0),(28,7,"Yeezy Slides bleu", 6, 12.0, 37.0);
INSERT INTO Inventaire VALUES (29,2,"Yeezy Slides noir", 10, 12.0, 20.0), (30,3,"Yeezy Slides mauve", 30, 12.0, 23.0),(31,2,"Yeezy Slides noir", 20, 11.0, 20.0),(32,3,"Yeezy Slides mauve", 20, 11.0, 20.0),(33,2,"Yeezy Slides noir", 30, 8.5, 20.0),(34,2,"Yeezy Slides noir", 80, 7.5, 20.0),(35,2,"Yeezy Slides noir", 90, 6.0, 22.0),(36,2,"Yeezy Slides noir", 20, 8.0, 21.0),(37,3,"Yeezy Slides mauve", 30, 11.5, 20.0),(38,8,"Yeezy slides turquoise", 40, 9.5, 26.0),(39,8,"Yeezy slides turquoise", 10, 10.0, 30.0);
INSERT INTO Inventaire VALUES (40,2,"Yeezy Slides noir", 10, 8.0, 23.0),(41,8,"Yeezy slides turquoise", 10, 8.5, 24.0),(42,2,"Yeezy Slides noir", 10, 11.5, 25.0),(43,9,"Yeezy Slides vert pâle", 10, 7.0, 28.0),(44,10,"Yeezy Slides brun foncé", 50, 7.0, 32.0), (45,9,"Yeezy Slides vert pâle", 50, 7.5, 32.0),(46,4,"Yeezy Slides jaune", 80, 7.5, 32.0),(47,4,"Yeezy Slides jaune", 90, 7.0, 20.0),(48,3,"Yeezy Slides mauve", 60, 7.0, 20.0),(49,10,"Yeezy Slides brun foncé", 60, 7.5, 20.0);
INSERT INTO Inventaire VALUES(50,8,"Yeezy slides turquoise", 10, 7.5, 20.0),(51,8,"Yeezy slides turquoise", 20, 8.0, 20.0),(52,3,"Yeezy Slides mauve", 20, 8.0, 20.0),(53,3,"Yeezy Slides mauve", 30, 8.5, 20.0),(54,9,"Yeezy Slides vert pâle", 33, 8.5, 20.0),(55,11,"Yeezy Slides brun", 133, 9.0, 20.0),(56,11,"Yeezy Slides brun", 90, 10.0, 20.0),(57,11,"Yeezy Slides brun", 89, 10.5, 20.0),(58,11,"Yeezy Slides brun", 100, 9.5, 20.0),(59,11,"Yeezy Slides brun", 80, 8.0, 20.0),(60,10,"Yeezy Slides brun foncé", 60, 9.0, 20.0);
INSERT INTO Inventaire VALUES (61,6,"Yeezy Slides gris", 50, 6.0, 23.0),(62,6,"Yeezy Slides gris", 75, 6.5, 25.0),(63,6,"Yeezy Slides gris", 100, 7.0, 27.0),(64,6,"Yeezy Slides gris", 120, 7.0, 21.0),(65,6,"Yeezy Slides gris", 80, 7.5, 28.0),(66,12,"Yeezy Slides gris clair", 60, 7.5, 26.0),(67,6,"Yeezy Slides gris", 45, 8.0, 23.0),(68,12,"Yeezy Slides gris clair", 30, 8.0, 25.0),(69,6,"Yeezy Slides gris", 20, 8.5, 20.0),(70,12,"Yeezy Slides gris clair", 10, 8.5, 22.0),(71,13,"Yeezy Slides vert", 50, 9.0, 23.0),(72,13,"Yeezy Slides vert", 75, 9.5, 25.0),(73,13,"Yeezy Slides vert", 100, 10.0, 27.0),(74,13,"Yeezy Slides vert", 120, 10.0, 21.0),(75,13,"Yeezy Slides vert", 80, 10.5, 28.0),(76,9,"Yeezy Slides vert pâle", 60, 10.5, 26.0),(77,13,"Yeezy Slides vert", 45, 11.0, 23.0),(78,9,"Yeezy Slides vert pâle", 30, 11.0, 25.0),(79,13,"Yeezy Slides vert", 20, 11.5, 20.0),(80,14,"Yeezy Slides orange", 10, 11.5, 22.0),(81,14,"Yeezy Slides orange", 50, 12.0, 23.0),(82,14,"Yeezy Slides orange", 75, 6.0, 25.0),(83,14,"Yeezy Slides orange", 100, 7.5, 27.0),(84,12,"Yeezy Slides gris clair", 120, 7.5, 21.0),(85,14,"Yeezy Slides orange", 80, 9.0, 28.0),(86,15,"Yeezy Slides blanc", 60, 9.0, 26.0),(87,15,"Yeezy Slides blanc", 45, 10.5, 23.0),(88,8,"Yeezy Slides turquoise", 30, 10.5, 25.0),(89,15,"Yeezy Slides blanc", 20, 6.5, 20.0),(90,12,"Yeezy Slides gris clair", 10, 6.5, 22.0),(91,15,"Yeezy Slides blanc", 50, 7.0, 23.0),(92,15,"Yeezy Slides blanc", 75, 7.5, 25.0),(93,15,"Yeezy Slides blanc", 100, 8.0, 27.0),(94,4,"Yeezy Slides jaune", 120, 8.0, 21.0),(95,15,"Yeezy Slides blanc", 80, 8.5, 28.0),(96,15,"Yeezy Slides blanc", 60, 8.5, 26.0),(97,15,"Yeezy Slides blanc", 45, 9.0, 23.0),(98,4,"Yeezy Slides jaune", 30, 9.0, 25.0),(99,10,"Yeezy Slides brun foncé", 20, 9.5, 20.0),(100,12,"Yeezy Slides gris clair", 10, 9.5, 22.0);
INSERT INTO Inventaire VALUES (101, 16,"Manteau Canada Goose Noir", 10, 1.0, 500),(102,17, "Manteau Canada Goose Bleu", 10, 1.0, 500),(103,18, "Manteau Canada Goose Rouge", 10, 1.0, 500),(104,19, "Manteau Canada Goose Gris", 10, 1.0, 500),(105,20, "Basket Adidas Superstar Blanche", 20, 8.0, 100.0),(106,21, "Basket Nike Air Max 97 Argentée", 15, 9.0, 150.0),(107, 22,"Basket Puma Suede Noire", 25, 7.0, 80.0),(108,23, "Maillot de football PSG Domicile 2022 ", 10, 1.0, 90.0),(109, 24,"Maillot de football Real Madrid Extérieur 2022 ", 8, 3, 90.0),(110, 25,"Maillot de basketball Nike Lakers Jaune", 5, 3.0, 120.0),(111,26, "Pantalon de jogging Adidas Noir", 30, 1.0, 60.0),(112,27, "Sweat à capuche Adidas Gris", 25, 2.0, 80.0),(113,28, "T-shirt Lacoste Blanc", 50, 2.0, 50.0);
INSERT INTO Inventaire VALUES
(114,29, 'Casquette noir', 15, 2.0, 150.0),(115,30, 'Casquette rouge', 40, 1.0, 70.0),(116,31, 'Casquette blanche', 20, 1.0, 30.0),
(117,32, 'Casquette jaune', 30, 1.0, 100.0),(118,33, 'Casquette mauve', 12, 2.0, 200.0),(119,34, 'Casquette grise', 5, 1.0, 600.0),
(120,35, 'Casquette orange', 8, 2.0, 500.0),(121,36, 'Casquette verte', 10, 1.0, 250.0),(122,37, 'Moncler Maya Bleu', 7, 1.0, 1000.0),(123,38, 'Moncler Maya Noir', 20, 2.0, 1200.0),
(124, 39,'Moncler Maya Rouge', 15, 1.0, 1500.0),(125,40, 'Moncler Maya Mauve', 5, 2.0, 1400.0),(126,41, 'Moncler Maya Blanc', 30, 3.0, 1800.0),
(127,42, 'Nike Survet Rouge ', 10, 2.0, 200.0),(128,43, 'Nike Survet Noir', 8, 3.0, 300.0),(129,44, 'Nike survet Blanc', 25, 2.0, 100.0),
(130,45, 'Nike Survet Gris', 12, 1.0, 150.0),(131,46, 'Maillot de football PSG ', 18, 3.0, 80.0),(132,47, 'Maillot de football FC Barcelone ', 20, 3.0, 80.0),
(133,48, 'Maillot de basketball Los Angeles Lakers ', 15, 3.0, 70.0),(134,49, 'Doudoune noir', 10, 8.0, 1100.0),(135,50, 'Doudoune blanche', 12, 7.0, 900.0),
(136,51, 'Doudoune bleu', 5, 3.0, 900.0),(137,52, 'Doudoune rouge', 7, 2.0, 400.0),(138,53, 'Foulard bleu', 20, 2.0, 150.0),(139, 54,'Foulard blanc', 30, 1.0, 80.0),
(140,55, 'Foulard rouge', 15, 2.0, 100.0),(141,56, 'Foulard noir', 20, 1.0, 150.0),(142,57, 'Foulard gris', 25, 1.0, 120.0),
(143,58, 'Foulard turquoise', 18, 2.0, 90.0),(144,59, 'Foulard mauve', 22, 2.0, 70.0),(145, 60,'Foulard vert', 17, 41, 110.0),
(146,61, 'Manteau Burberry', 6, 9.5, 450.0),
(147, 62,'Parka à capuche Canada Goose ', 8, 1.0, 800.0),
(148, 63,'Chemise noir', 14, 1.0,60.0);

INSERT INTO Inventaire VALUES (149,64, 'Chemise blanche', 20, 1.0, 50),
(150,65, 'Chemise bleu pâle', 0, 1.0, 25),
(151,66, 'Chemise rouge', 40, 1.0, 30),
(152,67, 'Chemise rose', 25, 1.0, 70),
(153,68, 'T-shirt Manchester United', 15, 1.0, 80),
(154,69, 'T-shirt Chelsea', 5, 2.0, 150),
(155,70, 'T-shirt Roma', 10,1.0, 100),
(156,71, 'T-shirt Tottenham', 0, 2.0, 120),
(157,72, 'T-shirt Juventus', 20, 2.0, 20),
(158,73, 'T-shirt Manchester City', 15, 1.0, 60),
(159,74, 'T-shirt Bayern', 10, 1.0, 40),
(160,75, 'T-shirt Puma', 20, 1.0, 25),
(161,76, 'Survet Lacoste', 0, 3.0, 65),
(162,77, 'Survet Nike', 5, 2.0, 120),
(163,78, 'Survet NB', 25, 2.0, 80),
(164,79, 'Hoodie jaune', 10, 1.0, 90),
(165,80, 'Hoodie bleu', 5, 1.0, 110),
(166,81, 'Hoodie mauve', 15, 1.0, 100),
(167,82, 'Hoodie blanc', 20, 1.0, 45),
(168,83, 'Veste noir', 20, 1.0, 60);

# INSERT INTO Utilisateurs(email, nom, prenom, telephone, age) VALUES ("johndoe1@email.com", "Doe", "John", "123456789", 30),("janesmith2@email.com", "Smith", "Jane", "234567890", 25), ("davidbrown3@email.com", "Brown", "David", "345678901", 28),("emma4johnson@email.com", "Johnson", "Emma", "456789012", 22),("oliviaw5@email.com", "Williams", "Olivia", "567890123", 35), ("michaelj6@email.com", "Jackson", "Michael", "678901234", 40), ("williamd8@email.com", "Davis", "William", "890123456", 55), ("emilyt9@email.com", "Taylor", "Emily", "901234567", 24), ("jamesw10@email.com", "Wilson", "James", "012345678", 37), ("elizabethl11@email.com", "Lee", "Elizabeth", "123450987", 46), ("benjaminm12@email.com", "Martin", "Benjamin", "234561098", 31), ("victoriag13@email.com", "Garcia", "Victoria", "345672109", 28), ("josephr14@email.com", "Rodriguez", "Joseph", "456783210", 50), ("sarahp15@email.com", "Perez", "Sarah", "567894321", 19), ("samuelh16@email.com", "Hernandez", "Samuel", "678905432", 33), ("gracec17@email.com", "Clark", "Grace", "789016543", 41), ("zacharyl18@email.com", "Lewis", "Zachary", "890127654", 38), ("madisone19@email.com", "Edwards", "Madison", "901238765", 26), ("noahp20@email.com", "Phillips", "Noah", "012349876", 29);
# INSERT INTO Utilisateurs (email, nom, prenom, telephone, age)
# VALUES ("johndoe1@email.com", "Doe", "John", "123456789", 30),
#        ("janesmith2@email.com", "Smith", "Jane", "234567890", 25),
#        ("davidbrown3@email.com", "Brown", "David", "345678901", 28),
#        ("emma4johnson@email.com", "Johnson", "Emma", "456789012", 22),
#        ("oliviaw5@email.com", "Williams", "Olivia", "567890123", 35),
#        ("michaelj6@email.com", "Jackson", "Michael", "678901234", 40),
#        ("williamd8@email.com", "Davis", "William", "890123456", 55),
#        ("emilyt9@email.com", "Taylor", "Emily", "901234567", 24),
#        ("jamesw10@email.com", "Wilson", "James", "012345678", 37),
#        ("elizabethl11@email.com", "Lee", "Elizabeth", "123450987", 46),
#        ("benjaminm12@email.com", "Martin", "Benjamin", "234561098", 31),
#        ("victoriag13@email.com", "Garcia", "Victoria", "345672109", 28),
#        ("josephr14@email.com", "Rodriguez", "Joseph", "456783210", 50),
#        ("sarahp15@email.com", "Perez", "Sarah", "567894321", 19),
#        ("samuelh16@email.com", "Hernandez", "Samuel", "678905432", 33),
#        ("gracec17@email.com", "Clark", "Grace", "789016543", 41),
#        ("zacharyl18@email.com", "Lewis", "Zachary", "890127654", 38),
#        ("madisone19@email.com", "Edwards", "Madison", "901238765", 26),
#        ("noahp20@email.com", "Phillips", "Noah", "012349876", 29);




INSERT INTO Produits VALUES (1,"https://cdn.shopify.com/s/files/1/0295/2563/9247/products/YeezySlidesRed_800x.png","Yeezy slides", "rouge",20.0,1), (2,"https://cdn.shopify.com/s/files/1/1622/9929/products/AdidasYeezySlideOnyxMen_s1.png?v=1648277878","Yeezy slides","noir", 21.0,1),(3,"https://i.pinimg.com/originals/e6/6e/eb/e66eeb307ed9669c01a3aa1a26a485b5.png","Yeezy slides","mauve", 28.0,1),(4,"https://static.ticimax.cloud/41550/uploads/urunresimleri/thumb/cabani-yeezy-slide-kadin-terlik-yezy-1-b7cc-7.jpg","Yeezy slides","jaune",22.0,1);
INSERT INTO Produits VALUES (5,"https://image.goat.com/1000/attachments/product_template_pictures/images/075/054/238/original/952291_00.png.png","Yeezy slides", "beige", 20.0,1),(6,"https://cdn.shopify.com/s/files/1/2482/7148/products/1_19b7eeb6-89e6-40e0-8378-ed934b2a5722_2048x2048.jpg?v=1650915125","Yeezy slides", "gris", 37.0,1),(7,"https://sneakernews.com/wp-content/uploads/2022/08/adidas-Yeezy-Slide-Azure-2022.jpg","Yeezy slides", "bleu", 25.0,1),(8,"https://media.callitspring.com/v3/product/julep/440-002-041/julep_blue_440-002-041_alt2_sq_wt_1200x1200.jpg","Yeezy slides", "turquoise", 26.0,1);
INSERT INTO Produits VALUES (9,"https://i.ebayimg.com/images/g/syAAAOSwgVxieozc/s-l500.jpg","Yeezy slides", "vert pâle",28.0,1),(10,"https://cdn.shopify.com/s/files/1/0549/8136/1745/products/3505939eaabdf134c3bf6b99b1c8f452.jpg?v=1660573716","Yeezy slides", "brun foncé", 32.0,1),(11,"https://cdn.shopify.com/s/files/1/0549/8136/1745/products/GW1931-3_600x600_crop_center.jpg?v=1640870556","Yeezy slides", "brun", 20.0,1);
INSERT INTO Produits VALUES (12,"https://cdn.sneakers123.com/release/445934/adidas-adidas-yeezy-slide-bone-2022-kids-fz5902.jpg","Yeezy slides", "gris clair", 26.0,1),(13,"https://cdn.shopify.com/s/files/1/2358/2817/products/yeezy-slide-resin-892836.png?v=1638814962","Yeezy slides", "vert",23.0,1),(14,"https://sneakernews.com/wp-content/uploads/2021/03/adidas-yeezy-slide-orange.jpg?w=1140","Yeezy slides", "orange",22.0,1),(15,"https://i.etsystatic.com/36459986/r/il/cac3a3/4103565368/il_fullxfull.4103565368_aw8k.jpg","Yeezy slides", "blanc", 26.0,1);
INSERT INTO Produits VALUES (16,"https://cdn.shopify.com/s/files/1/1230/9376/products/CGO-7999M_7EBlack_820581d4-8400-44b9-8c83-ace8b568570d_960x1130.jpg?v=1667281786", "Manteau Canada Goose" ,"Noir",500,1),(17,"https://cdn.shopify.com/s/files/1/1230/9376/products/CGO-7999LPB_7ERoyal_20PBI_20Blue.jpg?v=1541841668" ,"Manteau Canada Goose","Bleu", 500,1),(18, "https://weaverdevore.ca/wp-content/uploads/2022/06/7999M-CG-Mens-Chilliwack-Red-1.jpg","Manteau Canada Goose" ,"Rouge",500,1),(19,'https://images.stockx.com/images/Canada-Goose-MacMillan-Heritage-Parka-Frost-Grey.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1665539622',"Manteau Canada Goose"," Gris",500,1),
                            (20, 'https://m.media-amazon.com/images/I/716Inzq-uoL._AC_UX695_.jpg',"Basket Adidas Superstar" ,"Blanche",100.0,1),(21,'https://images.footlocker.com/is/image/EBFL2/52913102_a1?wid=520&hei=520&fmt=png-alpha',"Basket Nike Air Max 97","Argentée",150.0,1),(22,'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/392730/02/sv01/fnd/PNA/fmt/png/Cali-Dream-Leather-Women''s-Sneakers',"Basket Puma Suede" ,"Noire", 80.0,1),(23,'https://images.footballfanatics.com/paris-saint-germain/paris-saint-germain-home-stadium-shirt-2022-23_ss4_p-13303204+pv-1+u-sk3ly93bp2lofzgo6aqu+v-385f664784d2401b8cc827f5f3afe379.jpg?_hv=2&w=900', "Maillot de football PSG","Domicile 2022 ", 90.0,1),(24,'https://cdn.shopify.com/s/files/1/0405/9807/7603/products/RMCFMZ0076-01_500x480.jpg?v=1656354845', "Maillot de football Real Madrid","Extérieur 2022 ",90.0,1),(25,'https://images.footlocker.com/is/image/EBFL2/71009728_a1?wid=520&hei=520&fmt=png-alpha', "Maillot de basketball Nike Lakers" ,"Jaune",120.0,1),
                            (26,'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/a7c6169641964096b373ad24003d51e2_9366/Essentials_Warm-Up_Tapered_3-Stripes_Track_Pants_Black_H46105_21_model.jpg', "Pantalon de jogging Adidas" ,"Noir",60.0,1),(27,'https://images.footlocker.com/is/image/EBFL2/36047690_a1?wid=520&hei=520&fmt=png-alpha',"Sweat à capuche Adidas" ,"Gris",80.0,1),(28, 'https://imagena1.lacoste.com/dw/image/v2/AAUP_PRD/on/demandware.static/-/Sites-master/default/dwc4bda0e7/TH6709_001_20.jpg?imwidth=915&impolicy=product',"T-shirt Lacoste", "Blanc",50.0,1);
INSERT INTO Produits VALUES
(29,'https://i.ebayimg.com/images/g/7pAAAOSw6VleiF1S/s-l500.jpg', 'Casquette','noir', 150.0,1),(30,'https://images.footballfanatics.com/nike/mens-nike-red-heritage-86-futura-20-adjustable-hat_pi3932000_altimages_ff_3932955-0b1cda123ef3dda6ad6ealt1_full.jpg?_hv=2&w=900' ,'Casquette',' rouge',70.0,1),(31,'https://images.lululemon.com/is/image/lululemon/LW9CS1S_0002_1?wid=1600&op_usm=0.5,2,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72', 'Casquette',' blanche', 30.0,1),
(32,'https://s3.ca-central-1.amazonaws.com/fabrik-apparel-prod/products/front/35140_f_fl_ts.jpg', 'Casquette','jaune',100.0,1),(33,'https://s3.ca-central-1.amazonaws.com/fabrik-apparel-prod/products/front/20511_f_fl_ts.jpg', 'Casquette',' mauve',200.0,1),(34, 'https://wordans-a1a5.kxcdn.com/files/model_specifications/2015/9/21/144143/144143_big.jpg?1675942459','Casquette',' grise',600.0,1),
(35,'https://s3.ca-central-1.amazonaws.com/fabrik-apparel-prod/products/front/35141_f_fl_ts.jpg', 'Casquette',' orange',500.0,1),(36,'https://img.ltwebstatic.com/images3_pi/2022/09/01/166202314088e60c4df614c9b5f317c7636c29559e_thumbnail_900x.webp','Casquette',' verte',250.0,1),(37,'https://cache.mrporter.com/variants/images/38063312418859726/pr/w1000.jpg', 'Moncler Maya',' Bleu', 1000.0,1),(38,'https://image.goxip.com/fdijOEX_AIEecX9zzLa8RLxiMJA=/fit-in/500x500/filters:format(jpg):quality(80):fill(white)/https:%2F%2Fcdn-images.farfetch-contents.com%2F15%2F40%2F04%2F19%2F15400419_27987138_1000.jpg', 'Moncler Maya',' Noir',1200.0,1),
(39,'https://www.melijoe.com/images/131851/open_graph.jpg', 'Moncler Maya',' Rouge', 500.0,1),(40,'https://media.endclothing.com/media/catalog/product/1/1/11-10-2022_ml_1a536-00-68950-61c_m1.jpg', 'Moncler Maya',' Mauve',1400.0,1),(41,'https://www.mrporter.com/variants/images/38063312418859703/in/w1200_q60.jpg', 'Moncler Maya',' Blanc',1800.0,1),
(42,'https://static.nike.com/a/images/t_default/xk8o8apr2dpf2v4scafv/pantalon-de-jogging-sportswear-club-fleece-27ggJk.png', 'Nike Survet' ,'Rouge ', 200.0,1),(43,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/rhiqox5cfyn4mtdwpe5j/pantalon-de-jogging-sportswear-club-pour-FcQ46n.png', 'Nike Survet',' Noir', 300.0,1),(44, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b47a303d-f770-430f-9b18-d53c5f059638/pantalon-de-tennis-nikecourt-advantage-pour-0qFS8l.png','Nike survet',' Blanc', 100.0,1),
(45, 'https://www.courir.com/on/demandware.static/-/Sites-master-catalog-courir/default/dwc5641825/images/hi-res/001486439_101.png','Nike Survet',' Gris', 50.0,1),(46,'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/98ba8ac3-8bde-48e3-a97d-f3d021d656b3/3e-maillot-de-football-dri-fit-paris-saint-germain-2022-23-stadium-pour-zxQKtf.png', 'Maillot de football',' PSG ',80.0,1),(47,'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cf8d49df-ce3d-4559-bf9c-d1fda5b67126/maillot-de-football-dri-fit-adv-fc-barcelona-2022-23-match-domicile-pour-R8T0Pz.png', 'Maillot de football',' FC Barcelone ',80.0,1),
(48,'https://images.footlocker.com/is/image/EBFL2/71953050_a1?wid=520&hei=520&fmt=png-alpha', 'Maillot de basketball Los Angeles',' Lakers ', 70.0,1),(49,'https://assets.burberry.com/is/image/Burberryltd/7AD1A7BA-9507-40CF-BD69-817CD7C9723F?$BBY_V2_SL_1x1$&wid=2500&hei=2500', 'Doudoune',' noir',1100.0,1),(50,'https://cdn-images.farfetch-contents.com/19/74/59/34/19745934_44236968_1000.jpg', 'Doudoune',' blanche',900.0,1),
(51,'https://cdn-images.farfetch-contents.com/19/77/06/08/19770608_44448755_1000.jpg', 'Doudoune',' bleu',900.0,1),(52,'https://static.kiabi.com//images/doudoune-legere-rouge-garcon-3-12-ans-yf281_5_frb1.jpg', 'Doudoune',' rouge',400.0,1),(53,'https://cdn.shopify.com/s/files/1/0097/8917/7914/products/cotonfroissebleud31_900x.jpg?v=1676339917', 'Foulard',' bleu',150.0,1),(54,'https://img.ltwebstatic.com/images3_pi/2023/02/06/16756483145fce3a6a058f7df558832f48a09167ea_thumbnail_900x.webp', 'Foulard',' blanc',80.0,1),
(55, 'https://img.ssensemedia.com/images/b_white,g_center,f_auto,q_auto:best/231129M150085_1/acne-studios-echarpe-rouge-a-franges.jpg','Foulard ','rouge',100.0,1),(56,'https://www.pimkie.fr/dw/image/v2/AAYN_PRD/on/demandware.static/-/Sites-pimkie-master-catalog/default/dw189a377c/images/917848_899A08_portrait_HD_1.JPG?sw=760&sh=938', 'Foulard',' noir',150.0,1),(57,'https://img.ssensemedia.com/images/b_white,g_center,f_auto,q_auto:best/231129M150089_1/acne-studios-echarpe-grise-a-franges.jpg', 'Foulard',' gris',120.0,1),
(58,'https://img.ssensemedia.com/images/b_white,g_center,f_auto,q_auto:best/231129M150039_1/acne-studios-echarpe-bleue-a-logo-brode.jpg', 'Foulard',' turquoise',90.0,1),(59,'https://cdn.shopify.com/s/files/1/1205/1386/products/10249227_Lavender_001_ProductLarge.jpg?v=1663339120&width=1100', 'Foulard',' mauve',70.0,1),(60,'https://cdn.shopify.com/s/files/1/0013/3300/2293/products/image_ace74995-7d7e-4b75-8b0a-82499b3da1f1.png?v=1651181999&width=1200', 'Foulard','vert',  110.0,1),
(61,'https://assets.burberry.com/is/image/Burberryltd/3F067434-97E2-497C-B538-DC73302637C0?$BBY_V2_SL_1x1$&wid=1876&hei=1876', 'Manteau ','Burberry', 450.0,1),
(62,'https://i5.walmartimages.com/asr/f7c429b8-ca71-40ab-87dd-1b6ae9a2ac00.2dadf82ad2e3731cfc910dad602733f9.jpeg?odnHeight=450&odnWidth=450&odnBg=ffffff', 'Parka à capuche ','Canada Goose ',800.0,1),
(63,'https://shop.jerando.com/48-large_default/chemise-noir-pour-homme.jpg', 'Chemise',' noir', 60.0,1);


INSERT INTO Produits VALUES (64,'https://imagescdn.simons.ca/images/14322/1151/10/A1_2.jpg?__=1', 'Chemise',' blanche', 50,1),
(65,'https://static.fursac.com/data/chemise-homme-chemises-business-bleu-pale-micro-armure-22hh3axan-ah6639-pm4b24044.1663679644.jpg', 'Chemise ','bleu pâle', 25,0),
(66,'data:image/jpeg;base64,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', 'Chemise',' rouge', 30,1),
(67,'https://images.tailorstore.com/YToyOntzOjU6IndpZHRoIjtpOjEwMjQ7czo2OiJoZWlnaHQiO2I6MDt9/images/catalog/14086-athens-light-pink-men-s-shirt-22ba45-folded-tailor-store.jpg', 'Chemise',' rose',70,1),
(68,'https://images.footballfanatics.com/manchester-united/mens-adidas-white-manchester-united-2022/23-away-blank-replica-jersey_pi4956000_ff_4956025-8e4e641560997aeecd92_full.jpg?_hv=2&w=340', 'T-shirt',' Manchester United', 80,1),
(69,'https://i.ebayimg.com/images/g/qd8AAOSwXJ5jPCzB/s-l500.jpg', 'T-shirt',' Chelsea',  150,1),
(70,'https://cdn.shopify.com/s/files/1/0361/8904/4876/products/image_a8242b86-1b0f-4e16-a138-9b265cf464eb_584x.jpg?v=1589850966', 'T-shirt',' Roma', 100,1),
(71,'https://cdn.shopify.com/s/files/1/1730/0627/products/tottenham-hotspur-2021-22-stadium-home-football-shirt-m3x7h9_1024x1024.jpg?v=1627856589', 'T-shirt',' Tottenham', 120,0),
(72,'https://cdn.shopify.com/s/files/1/1730/0627/products/tottenham-hotspur-2021-22-stadium-home-football-shirt-m3x7h9_1024x1024.jpg?v=1627856589', 'T-shirt',' Juventus', 20,1),
(73,'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgb5Qo8DswCrCL_k5ccOXn6B1_3h3OeYRx9GEccnElDTdJbKo5DzR7bDkrjtf2-NsnKsS4cKZdzqxxRaLoJ-_D4uQ3j9TSRYqpW5d-HfaFZeHBLvzunNVnyu3sAGkRv60AFWFFR19GKtrbOi41C5OdBG1PLDAgFz1Z0BjC3W8jw0FCrmnFvWl5_eCmu/s1600/manchester-city-22-23-home-kit-2.jpg', 'T-shirt',' Manchester City', 60,1),
(74,'https://cdn.mall.adeptmind.ai/https%3A%2F%2Fimages.footballfanatics.com%2Fbayern-munich%2Fmens-adidas-red-bayern-munich-crest-t-shirt_pi4464000_ff_4464046-03d31cad870189b8755c_full.jpg%3F_hv%3D2_large.jpg', 'T-shirt',' Bayern', 40,1),
(75,'https://www.sport-bittl.com/images/product_images/popup_images/99723161283A_Puma_Evostripe_T_Shirt_Herren_weiss.jpg', 'T-shirt',' Puma', 25,1),
(76,'https://sportaventure-mode-orange.fr/wp-content/uploads/2022/09/Large-WH9349_AJ0_24-removebg-preview.jpg', 'Survet ','Lacoste',  65,0),
(77,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/a7eb68c3-2c26-4dcb-8256-f78100deb9de/survetement-a-capuche-dri-fit-liverpool-fc-strike-pour-LXWbcc.png', 'Survet',' Nike', 120,1),
(78,'https://nb.scene7.com/is/image/NB/mp23580ag_nb_70_i?$pdpflexf2$&wid=440&hei=440', 'Survet',' NB', 80,1),
(79,'https://litb-cgis.rightinthebox.com/images/640x640/202009/eytxbj1600751952350.jpg', 'Hoodie',' jaune', 90,1),
(80,'https://wordans-a1a5.kxcdn.com/files/model_specifications/2015/8/28/115653/115653_big.jpg?1672751550', 'Hoodie',' bleu', 110,1),
(81,'https://wordans-a1a5.kxcdn.com/files/model_specifications/2015/8/28/115653/115653_big.jpg?1672751550', 'Hoodie',' mauve', 100,1),
(82, 'https://kusteez.com/wp-content/uploads/2020/11/customisable-hoodie-kusteez-white-600x600.jpg','Hoodie',' blanc', 45,1);

INSERT INTO Produits VALUES (83,'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F27%2Fb6%2F27b66aefa030da732985ac5a42a01c206a857abd.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5Bladies_sport_jackets%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]', 'Veste',' noir', 60,1),
(84, 'https://litb-cgis.rightinthebox.com/images/640x640/202103/bps/product/inc/jvytcz1615521278644.jpg','Veste',' blanche', 120,1),
(85,'https://ntextil-a1a5.kxcdn.com/files/model_specifications/2014/8/27/49012/49012_big.jpg?1624623123', 'Veste',' mauve', 150,1),
(86,'https://image.s5a.com/is/image/TheBay/193147706840_main?wid=984&hei=1312&qlt=90&resMode=sharp2&op_usm=0.9,1.0,8,0', 'Pull Nike',' rouge',90,0),
(87,'https://res.cloudinary.com/videdressing/image/upload/t_p_2000/v1633010561/products/11537435-9.jpg', 'Sweat à capuche Dior',' gris', 250,1),
(88,'https://media.dior.com/couture/ecommerce/media/catalog/product/d/N/1680011126_1ESPO206YKY_H27E_E01_GH.jpg?imwidth=3840', 'Sac bandoulière Dior',' beige', 300,1),
(89,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b76cff10-b036-483f-af9a-57d534e819ee/veste-de-running-windrunner-pour-Qg20NL.png', 'Veste coupe-vent Nike',' noire', 130,1),
(90,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4becaa33-4fc0-4858-a68d-9d77efbd11d5/air-jordan-1-low-shoes-dpDWHg.png', 'Chaussures de basket ','Nike Jordan', 200,1),
(91, 'https://media.dior.com/couture/ecommerce/media/catalog/product/M/0/1662551114_845V02AL200_X9000_E01_GH.jpg','Blouson Dior' ,'en cuir', 700,1),
(92, 'https://images.footlocker.com/is/image/EBFL2/9252194_a1?wid=520&hei=520&fmt=png-alpha','Chaussettes Nike ','noires', 10,1),
(93,'https://images.footlocker.com/is/image/EBFL2/9252194_a1?wid=520&hei=520&fmt=png-alpha', 'Short de sport Nike',' noir', 60,1),
(94,'https://media.dior.com/couture/ecommerce/media/catalog/product/b/o/1618837462_1WBM22PEAA_Y511_E01_GHC.jpg', 'Veste en jean',' Dior', 400,1),
(95, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/be024618-6267-45de-9d7c-6b85b18852ed/phantom-gx-academy-sg-pro-anti-clog-traction-football-boot-XGp3D7.png','Chaussures de foot ','Nike Phantom GT', 250,1),
(96, 'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/118471_GH22_1_1296x.jpg?v=1660893357','Sweat-shirt Nike ','gris',80,1),
(97, 'https://www.valoisvintage-paris.com/95956-large_default/sac-dior-saddle-toile-oblique.jpg','Sac banane Dior ','noir',350,1),
(98,'https://cdn.shoplightspeed.com/shops/608356/files/28472654/694x810x1/nike-mens-tech-fleece-jacket-red-cu4489-657.jpg', 'Veste à capuche Nike ','Tech Fleece',150,0),
(99, 'https://media.dior.com/couture/ecommerce/media/catalog/product/Q/q/1668772928_313J696C0554_C900_E08_GH.jpg','T-shirt Dior ','noir',170,1),
(100,'https://media.dior.com/couture/ecommerce/media/catalog/product/Q/q/1668772928_313J696C0554_C900_E08_GH.jpg', 'Nike Air ','Zoom', 140,1);



# INSERT INTO Utilisateurs(email, nom, prenom, telephone, age)
# VALUES ("johndoe1@email.com", "Doe", "John", "123456789", 30),
#        ("janesmith2@email.com", "Smith", "Jane", "234567890", 25),
#        ("davidbrown3@email.com", "Brown", "David", "345678901", 28),
#        ("emma4johnson@email.com", "Johnson", "Emma", "456789012", 22),
#        ("oliviaw5@email.com", "Williams", "Olivia", "567890123", 35),
#        ("michaelj6@email.com", "Jackson", "Michael", "678901234", 40),
#        ("williamd8@email.com", "Davis", "William", "890123456", 55),
#        ("emilyt9@email.com", "Taylor", "Emily", "901234567", 24),
#        ("jamesw10@email.com", "Wilson", "James", "012345678", 37),
#        ("elizabethl11@email.com", "Lee", "Elizabeth", "123450987", 46),
#        ("benjaminm12@email.com", "Martin", "Benjamin", "234561098", 31),
#        ("victoriag13@email.com", "Garcia", "Victoria", "345672109", 28),
#        ("josephr14@email.com", "Rodriguez", "Joseph", "456783210", 50),
#        ("sarahp15@email.com", "Perez", "Sarah", "567894321", 19),
#        ("samuelh16@email.com", "Hernandez", "Samuel", "678905432", 33),
#        ("gracec17@email.com", "Clark", "Grace", "789016543", 41),
#        ("zacharyl18@email.com", "Lewis", "Zachary", "890127654", 38),
#        ("madisone19@email.com", "Edwards", "Madison", "901238765", 26),
#        ("noahp20@email.com", "Phillips", "Noah", "012349876", 29);


ALTER TABLE Paniers
ADD COLUMN coutPanier DECIMAL(10, 2);



DESCRIBE Paniers;
SELECT * FROM Paniers;
select * from Inventaire;
SELECT * FROM Utilisateurs;

# INSERT INTO Utilisateurs(email, nom, prenom, telephone, age) VALUES ("hamid21@gmail.com", "Lihwak", "Hamid", "418569293", 20);

# INSERT INTO Paniers (id_panier, quantite, id_Produit, email) VALUE (2, 14, "hamid21@gmail.com");

# INSERT INTO Passwords(email, mot_de_passe) value ("hamid21@gmail.com", "String123");
#
# INSERT INTO Passwords(email, mot_de_passe) value ("hamid21@gmail.com", "String123");



#Declencheur qui s'assure qu'un user n'a pas le meme email dans Utilisateurs avant de l'add dans la bd.#
DELIMITER //
DROP TRIGGER IF EXISTS IsUserAlreadyInDb;
//
CREATE TRIGGER IsUserAlreadyInDb BEFORE INSERT ON Utilisateurs
FOR EACH ROW
BEGIN
    DECLARE email_exists INT DEFAULT 0;

    SELECT COUNT(email) INTO email_exists FROM Utilisateurs WHERE email = NEW.email;

    IF email_exists > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un utilisateur existe deja avec cet email';
    END IF;
END;
//
DELIMITER ;



#Declencheur qui s'assure que le stock de l'item qu'on met dans le panier est > 0 avant de mettre l'article dans le panier, sinon message d'erreur#
#Si l'item a un stock > 0, alors le trigger diminue le stock de 1 pour chaque ajout du panier#
DELIMITER //
drop trigger IF EXISTS IsItemAvailable;
//
CREATE TRIGGER IsItemAvailable BEFORE INSERT ON Paniers
FOR EACH ROW
BEGIN
    DECLARE QUANTITE_EN_STOCK INT;

    SELECT stock INTO QUANTITE_EN_STOCK FROM Inventaire WHERE id_produit = NEW.id_Produit;

    IF QUANTITE_EN_STOCK <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Ce produit n'est malheureusement plus en stock";

    ELSE
        UPDATE Inventaire SET stock = stock - 1 WHERE id_produit = NEW.id_Produit;
    end if;
end;
DELIMITER ;


############################# POSSIBLE SUPPRESSION DE CE TRIGGER SI PAGE HOME = PAGE DE CONNEXION #################################
#Declencheur permettant de verifier si un utilisateur possede un mail inclus dans Utilisateurs avant de rajouter quelquechose dans son panier#
# DELIMITER //
# DROP TRIGGER IF EXISTS verficationExistenceUserInPanier;
# //
# CREATE TRIGGER verficationExistenceUserInPanier BEFORE INSERT ON Paniers
# FOR EACH ROW
# BEGIN
#     DECLARE emailDuClient VARCHAR(255);
#     DECLARE emailCorrespondantDsUtilisateurs VARCHAR(255);
#
#     SELECT email INTO emailDuClient FROM Paniers;
#     SELECT email INTO emailCorrespondantDsUtilisateurs FROM Utilisateurs;
#
#     IF emailDuClient NOT IN (SELECT emailCorrespondantDsUtilisateurs FROM Utilisateurs) THEN
#         SIGNAL SQLSTATE '45000'
#         SET MESSAGE_TEXT = 'Vous devez vous creer un compte avant de rajouter un produit dans votre panier.';
#     end if;
# end;
# DELIMITER ;



#Procedure permettant de fetch le prix d'un item et sa quantite achetee par un user et creer une nouvelle colonne de coutTotal du panier et y inserer le resultat.#
DELIMITER //
DROP PROCEDURE IF EXISTS CalculerCoutTotalPanier;
//
CREATE PROCEDURE CalculerCoutTotalPanier(IN p_email VARCHAR(255), OUT p_totalPrice INTEGER)
BEGIN
    DECLARE v_finished INTEGER DEFAULT 0;
    DECLARE v_idProduit INTEGER;
    DECLARE v_coutProduit DECIMAL(10, 2);
    DECLARE v_coutPanier DECIMAL(10, 2) DEFAULT 0;

    DECLARE panier_cursor CURSOR FOR
        SELECT id_produit FROM Paniers WHERE email = p_email;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;

    OPEN panier_cursor;
    read_loop: LOOP
        FETCH panier_cursor INTO v_idProduit;

        IF v_finished = 1 THEN
            LEAVE read_loop;
        END IF;

        SELECT cout_Produit INTO v_coutProduit
        FROM Inventaire WHERE id_produit = v_idProduit;

        SELECT cout_Produit INTO v_coutProduit
        FROM Inventaire WHERE id_produit = v_idProduit;

        SET v_coutPanier = v_coutProduit;
    END LOOP;
    CLOSE panier_cursor;

    SET p_totalPrice = v_coutPanier;
end;
//
DELIMITER ;





#Declencheur permettant d'utiliser la procedure CalculerCoutTotalPanier#
DELIMITER //
DROP TRIGGER IF EXISTS updatePanier;
//
CREATE TRIGGER updatePanier
BEFORE INSERT ON Paniers
FOR EACH ROW
BEGIN
    DECLARE v_prix DECIMAL(10, 2);

    select cout_produit into v_prix from Inventaire where Inventaire.id_produit = NEW.id_Produit;
        SET NEW.coutPanier = v_prix;
END;
//
DELIMITER ;





# DELIMITER //
# DROP PROCEDURE IF EXISTS calculPrixTotal;
# //
# CREATE PROCEDURE calculPrixTotal(IN p_email VARCHAR(225), OUT p_coutTotal DECIMAL(10, 2))
# BEGIN
#     DECLARE v_finished INT DEFAULT 0;
#     DECLARE v_coutduPanier DECIMAL(10, 2);
#     DECLARE v_coutdelaCommande DECIMAL(10, 2);
#
#     DECLARE commande_cursor CURSOR FOR
#         SELECT email FROM Paniers WHERE email = p_email;
#
#     DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
#
#     OPEN commande_cursor;
#     read_loop: LOOP
#         FETCH commande_cursor INTO p_email;
#
#         IF v_finished = 1 THEN
#             LEAVE read_loop;
#         END IF;
#
#         SELECT coutPanier INTO v_coutduPanier
#         FROM Paniers WHERE email = p_email;
#
#
#         SET v_coutdelaCommande = v_coutduPanier;
#     END LOOP;
#     CLOSE commande_cursor;
#
#     SET p_coutTotal = v_coutdelaCommande;
# end;
# DELIMITER ;


DELIMITER //
DROP TRIGGER IF EXISTS addCommande;
//
CREATE TRIGGER addCommande
BEFORE INSERT ON Commandes
FOR EACH ROW
BEGIN
    DECLARE v_totalPanier DECIMAL(10, 2) DEFAULT 0;

    SELECT SUM(coutPanier) INTO v_totalPanier FROM Paniers WHERE email = new.email;
    SET New.prix_totalCommande = v_totalPanier;
END;
//
DELIMITER ;





# Insert into Utilisateurs value ("hamid@gmail.com","Lihwak","hamid",418569293,20);
# Insert into Passwords value ("hamid@gmail.com","String123")

SELECT * FROM Paniers;

UPDATE Inventaire SET stock = 1 WHERE id_produit = 154;



