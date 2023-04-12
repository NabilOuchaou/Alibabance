CREATE DATABASE IF NOT EXISTS glo_2005_webapp_2023;
use glo_2005_webapp_2023;


drop table if exists Favoris;
drop table if exists Livraisons;
DROP TABLE if exists Commandes;
DROP TABLE if exists Paniers;
DROP TABLE if exists Produits;
DROP TABLE if exists Inventaire;



CREATE TABLE if not exists Utilisateurs (email varchar (40) PRIMARY KEY, nom varchar (20), prenom varchar (20), telephone varchar(11),age integer(2));
CREATE TABLE if not exists Inventaire (id_produit integer PRIMARY KEY, nom char(60),stock integer,taille double, cout_produit double);
CREATE TABLE IF NOT EXISTS Produits(id_produit integer PRIMARY KEY, nom_produit varchar (45),couleur varchar(10), taille varchar(45), prix_produit double, en_stock integer (1), FOREIGN KEY (id_produit) REFERENCES Inventaire (id_produit) ON UPDATE CASCADE ON DELETE CASCADE);
create table if not exists Passwords(email varchar (40),mot_de_passe varchar (50), FOREIGN KEY (email) REFERENCES Utilisateurs(email));


CREATE TABLE IF NOT EXISTS Paniers (id_Produit integer, email varchar (40), FOREIGN KEY (email) REFERENCES utilisateurs (email), FOREIGN KEY (id_Produit) REFERENCES Produits(id_produit));
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

INSERT INTO Produits VALUES (1, "Yeezy slides", "rouge",5.0, 20.0,1), (2,"Yeezy slides","rouge", 5.5, 22.0,1), (3, "Yeezy slides","rouge", 6.0, 25.0,1), (4,"Yeezy slides","noir", 6.0, 21.0,1), (5,"Yeezy slides","rouge", 6.5, 30.0,1),(6,"Yeezy slides","mauve",6.5, 28.0,1),(7,"Yeezy slides","rouge", 7.0, 25.0,1),(8,"Yeezy slides","noir", 5.0, 27.0,1),(9, "Yeezy slides","rouge", 7.5, 20.0,1),(10,"Yeezy slides","jaune", 7.5, 22.0,1);
INSERT INTO Produits VALUES (11,"Yeezy slides", "beige", 8.0, 20.0,1),(12,"Yeezy slides", "rouge",8.0, 27.0,1),(13,"Yeezy slides", "rouge", 8.5, 25.0,1),(14,"Yeezy slides", "beige",8.5, 22.0,1),(15,"Yeezy slides", "beige",9.0, 25.0,1),(16,"Yeezy slides", "rouge", 9.0, 27.0,1),(17,"Yeezy slides", "beige",9.5, 20.0,1),(18,"Yeezy slides", "noir", 9.5, 28.0,1),(19,"Yeezy slides", "beige", 10.0, 29.0,1),(20,"Yeezy slides", "gris",10.0, 37.0,1);
INSERT INTO Produits VALUES(21,"Yeezy slides", "beige", 10.5, 20.0,0),(22,"Yeezy slides", "bleu", 10.5, 22.0,1),(23,"Yeezy slides", "bleu",11.0, 25.0,1),(24,"Yeezy slides", "beige", 11.0, 37.0,1),(25,"Yeezy slides", "beige",11.5, 30.0,1),(26,"Yeezy slides", "bleu,", 11.5, 22.0,1),(27,"Yeezy slides", "beige", 12.0, 35.0,1),(28,"Yeezy slides", "bleu",12.0, 37.0,1);
INSERT INTO Produits VALUES (29,"Yeezy slides", "noir", 12.0, 20.0,1), (30,"Yeezy slides", "mauve",12.0, 23.0,1),(31,"Yeezy slides", "noir", 11.0, 20.0,1),(32,"Yeezy slides", "mauve",11.0, 20.0,1),(33,"Yeezy slides", "noir",8.5, 20.0,1),(34,"Yeezy slides", "noir",7.5, 20.0,1),(35, "Yeezy slides", "noir",6.0, 22.0,1),(36,"Yeezy slides", "noir",8.0, 21.0,1),(37,"Yeezy slides", "mauve",11.5, 20.0,1),(38,"Yeezy slides", "turquoise", 9.5, 26.0,1),(39,"Yeezy slides", "turquoise",10.0, 30.0,1);
INSERT INTO Produits VALUES (40,"Yeezy slides", "noir",8.0, 23.0,1),(41,"Yeezy slides", "turquoise", 8.5, 24.0,1),(42,"Yeezy slides", "noir",11.5, 25.0,1),(43,"Yeezy slides", "vert pâle",7.0, 28.0,1),(44,"Yeezy slides", "brun foncé",7.0, 32.0,1), (45,"Yeezy slides", "vert pâle",7.5, 32.0,1),(46,"Yeezy slides", "jaune",7.5, 32.0,1),(47,"Yeezy slides", "jaune",7.0, 20.0,1),(48, "Yeezy slides", "mauve",7.0, 20.0,1),(49,"Yeezy slides", "brun foncé", 7.5, 20.0,1);
INSERT INTO Produits VALUES(50,"Yeezy slides", "turquoise", 7.5, 20.0,1),(51, "Yeezy slides", "turquoise", 8.0, 20.0,1),(52,"Yeezy slides", "mauve",8.0, 20.0,1),(53,"Yeezy slides", "mauve",8.5, 20.0,1),(54,"Yeezy slides", "vert pâle", 8.5, 20.0,1),(55,"Yeezy slides", "brun",9.0, 20.0,1),(56,"Yeezy slides", "brun",10.0, 20.0,1),(57,"Yeezy slides", "brun",10.5, 20.0,1),(58,"Yeezy slides", "brun",9.5, 20.0,1),(59,"Yeezy slides", "brun", 8.0, 20.0,1),(60,"Yeezy slides", "brun foncé", 9.0, 20.0,1);
INSERT INTO Produits VALUES (61,"Yeezy slides", "gris",6.0, 23.0,1),(62,"Yeezy slides", "gris",6.5, 25.0,1),(63,"Yeezy slides", "gris",7.0, 27.0,1),(64,"Yeezy slides", "gris", 7.0, 21.0,1),(65, "Yeezy slides", "gris", 7.5, 28.0,1),(66,"Yeezy slides", "gris clair",7.5, 26.0,1),(67,"Yeezy slides", "gris", 8.0, 23.0,1),(68,"Yeezy slides", "gris clair", 8.0, 25.0,1),(69,"Yeezy slides", "gris",8.5, 20.0,1),(70,"Yeezy slides", "gris clair",8.5, 22.0,1),(71,"Yeezy slides", "vert",9.0, 23.0,1),(72,"Yeezy slides", "vert", 9.5, 25.0,1),(73,"Yeezy slides", "vert", 10.0, 27.0,1),(74,"Yeezy slides", "vert", 10.0, 21.0,1),(75,"Yeezy slides", "vert", 10.5, 28.0,1),(76,"Yeezy slides", "vert pâle",10.5, 26.0,1),(77,"Yeezy slides", "vert", 11.0, 23.0,1),(78,"Yeezy slides", "vert pâle",11.0, 25.0,1),(79,"Yeezy slides", "vert",11.5, 20.0,1),(80,"Yeezy slides", "orange",11.5, 22.0,1),(81,"Yeezy slides", "orange", 12.0, 23.0,1),(82,"Yeezy slides", "orange", 6.0, 25.0,1),(83,"Yeezy slides", "orange", 7.5, 27.0,1),(84,"Yeezy slides", "gris clair", 7.5, 21.0,1),(85,"Yeezy slides", "orange", 9.0, 28.0,1),(86,"Yeezy slides", "blanc",9.0, 26.0,1),(87,"Yeezy slides", "blanc",10.5, 23.0,1),(88,"Yeezy slides", "turquoise", 10.5, 25.0,1),(89,"Yeezy slides", "blanc", 6.5, 20.0,1),(90,"Yeezy slides", "gris clair", 6.5, 22.0,1),(91,"Yeezy slides", "blanc", 7.0, 23.0,1),(92,"Yeezy slides", "blanc", 7.5, 25.0,1),(93,"Yeezy slides", "blanc", 8.0, 27.0,1),(94,"Yeezy slides", "jaune",8.0, 21.0,1),(95,"Yeezy slides", "blanc",8.5, 28.0,1),(96,"Yeezy slides", "blanc", 8.5, 26.0,1),(97,"Yeezy slides", "blanc",9.0, 23.0,1),(98,"Yeezy slides", "jaune", 9.0, 25.0,1),(99,"Yeezy slides", "brun foncé", 9.5, 20.0,1),(100,"Yeezy slides", "gris clair", 9.5, 22.0,1);

INSERT INTO Utilisateurs (email, nom, prenom, telephone, age)
VALUES ("johndoe1@email.com", "Doe", "John", "123456789", 30),
       ("janesmith2@email.com", "Smith", "Jane", "234567890", 25),
       ("davidbrown3@email.com", "Brown", "David", "345678901", 28),
       ("emma4johnson@email.com", "Johnson", "Emma", "456789012", 22),
       ("oliviaw5@email.com", "Williams", "Olivia", "567890123", 35),
       ("michaelj6@email.com", "Jackson", "Michael", "678901234", 40),
       ("sophieturner7@email.com", "Turner", "Sophie", "789012345", 29),
       ("williamd8@email.com", "Davis", "William", "890123456", 55),
       ("emilyt9@email.com", "Taylor", "Emily", "901234567", 24),
       ("jamesw10@email.com", "Wilson", "James", "012345678", 37),
       ("elizabethl11@email.com", "Lee", "Elizabeth", "123450987", 46),
       ("benjaminm12@email.com", "Martin", "Benjamin", "234561098", 31),
       ("victoriag13@email.com", "Garcia", "Victoria", "345672109", 28),
       ("josephr14@email.com", "Rodriguez", "Joseph", "456783210", 50),
       ("sarahp15@email.com", "Perez", "Sarah", "567894321", 19),
       ("samuelh16@email.com", "Hernandez", "Samuel", "678905432", 33),
       ("gracec17@email.com", "Clark", "Grace", "789016543", 41),
       ("zacharyl18@email.com", "Lewis", "Zachary", "890127654", 38),
       ("madisone19@email.com", "Edwards", "Madison", "901238765", 26),
       ("noahp20@email.com", "Phillips", "Noah", "012349876", 29);

Insert into Utilisateurs value ("hamid@gmail.com","Lihwak","hamid",418569293,20);
Insert into Passwords value ("hamid@gmail.com","String123")


SELECT mot_de_passe FROM Passwords P WHERE P.mot_de_passe = 'String123' and P.email = 'hamid@gmail.com';


select * from Inventaire;