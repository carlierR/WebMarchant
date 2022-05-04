Drop table IF EXISTS article_commande;
Drop table if exists commandes;
Drop table if exists users;
Drop table if exists categories;
Drop table if exists articles;

create table categories(
id_categ int primary key Auto_increment,
libbele_cat varchar(255)
);


create table articles(
id_art int primary key Auto_increment,
nom_article varchar(255),
designation_article text,
fk_categ int,
quantity int,
price DECIMAL(10,2),
constraint ck_fk_categ foreign key (fk_categ) references categories(id_categ)
);

create table users(
id int primary key Auto_increment,
username varchar(255),
password varchar(255),
role varchar(255)
);

create table commandes(
id_cmd int primary key Auto_increment,
fk_user int,
date_cmd date,
constraint ck_fk_user foreign key (fk_user) references users(id)

);

create table article_commande(
id_art_cmd int primary key Auto_increment,
fk_art int,
fk_cmd int,
quantity int,
price DECIMAL(10,2),
constraint ck_fk_art foreign key (fk_art) references articles(id_art),
constraint ck_fk_cmd foreign key (fk_cmd) references commandes(id_cmd)
);

insert into categories (libbele_cat) values ('Carte mere');
insert into categories (libbele_cat) values ('Carte graphique');
insert into categories (libbele_cat) values ('RAM');
insert into categories (libbele_cat) values ('Processeur');
insert into categories (libbele_cat) values ('Disques SSD');
insert into categories (libbele_cat) values ('Disques dur');
insert into categories (libbele_cat) values ('Ventirad');
insert into categories (libbele_cat) values ('Alimentation');
insert into categories (libbele_cat) values ('Boitier');



insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('GeForce RTX 3080 Ti TUF GAMING', 'Carte graphique PCI-Express overclockée - Refroidissement semi-passif', '2', '10', '950.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Radeon RX 6600 DUAL 8G', 'Carte graphique PCI-Express - Refroidissement semi-passif', '2', '10', '500.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Radeon RX 6500 XT DUAL O4G', 'PCI-Express - Avec backplate', '2', '10', '513.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('GeForce GTX 1660 Ti TUF 6G EVO', 'Carte graphique PCI-Express', '2', '10', '260.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('GeForce RTX 3090', 'Carte graphique PCI-Express - Compatible VR', '2', '10', '2300.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('GeForce RTX 3090 ROG STRIX O24G GAMING', 'Carte graphique PCI-Express overclockée - Refroidissement semi-passif', '2', '10', '2100.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('GeForce RTX 3070 DUAL 8G V2 (LHR)', 'Carte graphique PCI-Express - Refroidissement semi-passif', '2', '10', '1399.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('GeForce RTX 3070 DUAL 8G', 'Carte graphique PCI-Express - Refroidissement semi-passif', '2', '10', '1399.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('GeForce RTX 3090', 'Carte graphique PCI-Express - Compatible VR', '2', '10', '2650.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Radeon RX 6500 XT DUAL', 'PCI-Express - Avec backplate', '2', '10', '413.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Radeon RX 6700 XT MECH 2X OC', 'Carte graphique PCI-Express OC - Refroidissement semi-passif', '2', '10', '312.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('ROG STRIX Z490-E GAMING', 'Carte mère ATX - Socket 1200 - Chipset Instel Z490', '1', '10', '146.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('TUF GAMING Z590-PLUS WIFI', 'Carte mère ATX - Socket 1200 - Chipset Intel Z590 - WiFi', '1', '10', '214.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('PRIME Z590-A', 'Carte mère ATX - Socket 1200', '1', '10', '49.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('ROG STRIX B550-F GAMING (WiFi)', 'Carte mère ATX - Socket AM4 - Chipset AMD B550', '1', '10', '99.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('MAG Z590 TOMAHAWK WIFI', 'Carte mère ATX - Socket 1200 - WiFi', '1', '10', '102.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Z490-A PRO', 'Carte mère ATX - Socket 1200', '1', '10', '62.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('MPG B550 Gaming Carbon WiFi', 'Carte mère ATX - Socket AM4 - Chipset AMD B550', '1', '10', '75');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('DDR4 Corsair Vengeance LPX Noir', '32 Go (2 x 16 Go) 3200 MHz - CAS 16', '3', '10', '109.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('DDR4 Corsair Vengeance LPX Blanc', '32 Go (2 x 16 Go) 3200 MHz - CAS 16', '3', '10', '60.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('DDR4 Corsair Vengeance RGB PRO Noir', '16 Go (2 x 8 Go) 3200 MHz - CAS 16', '3', '10', '70');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('DDR4 Corsair Value Select', '8 Go - 2133 MHz - CAS 15', '3', '10', '98.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Intel Core i5-11600KF (3.9 GHz)', 'Socket 1200 - Hexa Core - Cache 12 Mo - Rocket Lake', '4', '10', '321.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Intel Core i7-11700K (3.6 GHz)', 'Socket 1200 - Octo Core - Cache 16 Mo - Rocket Lake', '4', '10', '421.5');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Intel Core i9-11900K (3.5 GHz)', 'Socket 1200 - Octo Core - Cache 16 Mo - Rocket Lake', '4', '10', '500.00');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Intel Celeron G5925 (3.6 GHz)', 'Socket 1200 - Dual Core - Cache 4 Mo - Cornet Lake-S', '4', '10', '654.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Ryzen 5 5600X (3.7 Ghz)', 'Socket AM4 - Hexa Core - Cache 35 Mo', '4', '10', '256.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Ryzen 7 5800X (3.8 Ghz)', 'Socket AM4 - Octo Core - Cache 36 Mo', '4', '10', '245.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Ryzen 5 PRO 4650G (3.7 Ghz)', 'Socket AM4 - Hexa Core - Cache 11 Mo - Radeon RX Vega 7', '4', '10', '461.20');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Ryzen 9 5900X (3.7 Ghz)', 'Socket AM4 - 12 Coeurs - Cache 70 Mo', '4', '10', '499.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Crucial P2 500 Go', 'SSD M.2 - PCI-Express 3.0 NVMe', '5', '15', '69.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Crucial P2 1 To', 'SSD M.2 - PCI-Express 3.0 NVMe', '5', '5', '109.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Crucial BX500 480 Go', 'SSD 2.5' - SATA III - Lecture max : 540 Mo/s - Ecriture max : 500 Mo/s', '5', '15', '54.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Samsung Série 970 EVO Plus 1 To', 'SSD M.2 - PCI-Express 3.0 NVMe Lecture max : 3500 Mo/s - Ecriture max : 3300 Mo/s', '5', '15', '149.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Kingston NV1 1 To', 'SSD M.2 - PCI-Express 3.0 NVMe Lecture Max : 2100 Mo/s - Ecriture max : 1700 Mo/s', '5', '7', '106.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Seagate BarraCuda 1 To', 'Disque dur 3.5' - 7200 tpm - 64 Mo - SATA III', '6', '10', '49.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Seagate BarraCuda 500 Go', 'Disque dur 3.5' - 7200 tpm - 64 Mo - SATA III', '6', '10', '29.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Western Digital WD Blue 1 To', 'Disque dur 3.5' - 7200 tpm - 64 Mo - SATA III', '6', '4', '41.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Western Digital WD Red Plus 4 To', 'Disque dur 3.5' - 5400 tpm - 128 Mo - SATA III ', '6', '3', '112.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Cooler Master MasterAir MA410M', 'Ventirad Tour - PWM - Socket AMD AM4 / AM3(+) /  Intel 2066 / 2011(-V3) / 1200', '7', '10', '64.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('AMD Wraith Prism', 'Ventirad Top flow - PWM - Socket AMD AM4 / AM3(+) / FM2(+)', '7', '4', '44.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Fox Spirit Cold Snap S92', 'Ventirad Tour - PWM - Socket AMD AM4 / AM3(+) /  Intel 2066 / 2011(-V3) / 1200', '7', '4', '19.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Be Quiet! Dark Rock 4', 'Ventirad Tour - PWM - Socket AMD AM4 / AM3(+) /  Intel 2066 / 2011(-V3) / 1200', '7', '4', '69.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Fox Spirit Cold Snap VT120 A-RGB', 'Ventirad Tour - PWM - Socket AMD AM4 / AM3(+) /  Intel 2066 / 2011(-V3) / 1200', '7', '4', '39.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Seasonic Core GM - 500W', 'Alimentation PC Certifiée 80+ Gold - Semi-modulaire', '8', '5', '69.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Corsair CV550 - 550W', 'Alimentation PC Certifiée 80+ Bronze', '8', '10', '49.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Corsair CX650F RGB (Noir) - 650W', 'Alimentation PC Certifiée 80+ Bronze - Modulaire', '8', '4', '89.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Textorm TX500+ - 500W', 'Alimentation PC Certifiée 80+ Bronze', '8', '8', '39.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Be Quiet! Pure Base 600 - Noir/Orange (Version fenêtre)', 'Boitier PC Moyen Tour - ATX / mATX / Mini-ITX - USB 3.0 - Avec fenêtre (pleine taille)', '8', '2', '114.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Corsair Carbide 100R', 'Boitier PC Moyen Tour - ATX / mATX / Mini-ITX - USB 3.0 - Avec fenêtre', '9', '6', '54.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Aerocool Split', 'Boitier PC Moyen Tour - ATX / mATX / Mini-ITX - USB 3.0 - Avec fenêtre (pleine taille)', '9', '4', '34.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('Zalman S2 TG', 'Boitier PC Moyen Tour - ATX / mATX / Mini-ITX - USB 3.0 - Avec fenêtre (pleine taille)', '9', '4', '34.99');
insert into articles (nom_article, designation_article, fk_categ, quantity, price) values ('MSI MPG GUNGNIR 110M', 'Boitier PC Moyen Tour - ATX / mATX / Mini-ITX - USB 3.1 - Avec fenêtre (pleine taille)', '9', '4', '84.99');

INSERT INTO articles (nom_article,designation_article,fk_categ,quantity,price)
VALUES
  ('nibh.','ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu',4,77,598),
  ('ipsum','Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis',4,54,897),
  ('eu,','adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit',4,77,841),
  ('quis','turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna',4,90,162),
  ('nunc.','tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque.',4,50,245),
  ('netus','Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet',4,90,890),
  ('dictum','ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac',4,57,618),
  ('urna.','nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat,',4,83,476),
  ('est','Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin',4,95,913),
  ('Sed','mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac',4,57,837);
INSERT INTO articles (nom_article,designation_article,fk_categ,quantity,price)
VALUES
  ('aliquet.','sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque',4,92,560),
  ('accumsan','nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque',4,91,596),
  ('mi.','a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt',4,53,645),
  ('Fusce','a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget,',4,65,238),
  ('pretium','luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget',4,75,724),
  ('Aenean','sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis.',4,68,571),
  ('ac','neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis',4,76,245),
  ('ut,','velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id',4,95,915),
  ('luctus','scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam',4,77,867),
  ('odio.','eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris',4,74,261);
INSERT INTO articles (nom_article,designation_article,fk_categ,quantity,price)
VALUES
  ('ipsum.','eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis,',4,94,898),
  ('libero.','Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,',4,55,668),
  ('Duis','nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc',4,61,738),
  ('Aliquam','sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a,',4,64,998),
  ('neque','eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend',4,56,412),
  ('dui,','purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in,',4,89,814),
  ('est','mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.',4,85,528),
  ('tincidunt','eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend',4,57,506),
  ('eros','ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse',4,56,763),
  ('lobortis','convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu',4,97,46);
INSERT INTO articles (nom_article,designation_article,fk_categ,quantity,price)
VALUES
  ('eu','mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed',4,50,669),
  ('risus','Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam',4,77,583),
  ('tristique','eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna.',4,83,338),
  ('vel','Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc,',4,99,834),
  ('consectetuer','Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo.',4,70,387),
  ('quam','eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna.',4,83,618),
  ('Integer','odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit',4,60,781),
  ('sociis','nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.',4,54,650),
  ('Donec','enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non',4,67,710),
  ('hendrerit','erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet,',4,59,359);
INSERT INTO articles (nom_article,designation_article,fk_categ,quantity,price)
VALUES
  ('odio,','sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae',4,76,740),
  ('mauris.','est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel',4,98,528),
  ('lobortis','ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed',4,67,944),
  ('tincidunt,','arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque',4,83,659),
  ('Class','nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus',4,73,708),
  ('Donec','dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque',4,73,7),
  ('nec,','ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate',4,90,483),
  ('massa.','imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer',4,90,753),
  ('Morbi','libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc',4,73,864),
  ('non,','ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,',4,73,607);
INSERT INTO articles (nom_article,designation_article,fk_categ,quantity,price)
VALUES
  ('Nunc','vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan',4,82,596),
  ('velit.','ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer',4,85,918),
  ('mollis','neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis,',4,76,638),
  ('consequat','natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.',4,64,421),
  ('consequat','nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit',4,94,245),
  ('Quisque','conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi',4,82,194),
  ('Nunc','sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis',4,93,878),
  ('turpis.','lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat',4,96,455),
  ('metus','nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas',4,52,514),
  ('hendrerit','neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida.',4,69,418);
INSERT INTO articles (nom_article,designation_article,fk_categ,quantity,price)
VALUES
  ('at','amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a',4,54,656),
  ('Maecenas','rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula',4,67,793),
  ('eu','ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas',4,69,180),
  ('magna.','ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede.',4,77,349),
  ('lacus','magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor',4,91,370),
  ('Duis','elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras',4,69,871),
  ('et','sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor',4,92,606),
  ('nunc','nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.',4,80,264),
  ('convallis','Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer',4,89,114),
  ('lorem','consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent',4,58,611);
INSERT INTO articles (nom_article,designation_article,fk_categ,quantity,price)
VALUES
  ('odio.','natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique',4,56,46),
  ('dictum','sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin',4,78,163),
  ('neque','Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo',4,55,269),
  ('neque','Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo',4,57,520),
  ('consectetuer','purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie',4,77,338),
  ('vitae,','tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.',4,60,385),
  ('massa.','mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero.',4,63,822),
  ('ac','Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.',4,77,960),
  ('ultrices.','velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna.',4,72,568),
  ('lectus','malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a',4,65,502);
INSERT INTO articles (nom_article,designation_article,fk_categ,quantity,price)
VALUES
  ('enim.','risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy',4,74,292),
  ('eleifend','ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor',4,84,59),
  ('sed','pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi.',4,65,680),
  ('eu,','Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In',4,72,347),
  ('vitae','dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim',4,87,620),
  ('molestie','amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,',4,72,915),
  ('Praesent','mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed',4,94,325),
  ('sem','tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan',4,82,189),
  ('iaculis,','nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam',4,52,643),
  ('fringilla.','Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam.',4,74,433);
INSERT INTO articles (nom_article,designation_article,fk_categ,quantity,price)
VALUES
  ('vel','dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis',4,76,811),
  ('pede.','pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque',4,72,256),
  ('dictum','metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula',4,92,817),
  ('a,','nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in',4,91,150),
  ('porta','consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu',4,51,549),
  ('mollis.','cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit.',4,91,21),
  ('nec','mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis',4,56,358),
  ('hendrerit','interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus',4,95,310),
  ('est.','penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque',4,98,50),
  ('non','arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor',4,92,28);



insert into users (username, password, role) values ('user1', MD5('user1'), 'user');
insert into users (username, password, role) values ('user2', MD5('user2'), 'user');
insert into users (username, password, role) values ('user3', MD5('user3'), 'user');
insert into users (username, password, role) values ('root', MD5('root'), 'admin');
