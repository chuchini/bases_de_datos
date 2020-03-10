-- 1. Catalogo de cilindros.
INSERT INTO Cilindro VALUES ('2');
INSERT INTO Cilindro VALUES ('3');
INSERT INTO Cilindro VALUES ('4');
INSERT INTO Cilindro VALUES ('5');
INSERT INTO Cilindro VALUES ('6');
INSERT INTO Cilindro VALUES ('8');
INSERT INTO Cilindro VALUES ('10');
INSERT INTO Cilindro VALUES ('12');

-- 2. Catalogo de tipo de transmision.
INSERT INTO Transmision VALUES ('Manual');
INSERT INTO Transmision VALUES ('Automatica');
INSERT INTO Transmision VALUES ('Ambas');

-- 3. Catalogo de tipos de auto.
INSERT INTO Tipo_de_Auto VALUES('Sedan');
INSERT INTO Tipo_de_Auto VALUES('Pick up');
INSERT INTO Tipo_de_Auto VALUES('Subcompacto');
INSERT INTO Tipo_de_Auto VALUES('Deportivo');
INSERT INTO Tipo_de_Auto VALUES('Compacto');
INSERT INTO Tipo_de_Auto VALUES('Auto de lujo');
INSERT INTO Tipo_de_Auto VALUES('Lujo');
INSERT INTO Tipo_de_Auto VALUES('SUV');

-- 4. Catalogo de paises.
INSERT INTO Pais VALUES ('Mexico');
INSERT INTO Pais VALUES ('Italia');
INSERT INTO Pais VALUES ('Japon');
INSERT INTO Pais VALUES ('Estados Unidos');
INSERT INTO Pais VALUES ('Alemania');
INSERT INTO Pais VALUES ('Corea del Sur');
INSERT INTO Pais VALUES ('Francia');
INSERT INTO Pais VALUES ('Reino Unido');
INSERT INTO Pais VALUES ('Suecia');

-- 5. Poblado de la tabla "Marca".
INSERT INTO Marca VALUES ('General Motors', 'General Motors de Mexico', '1');
INSERT INTO Marca VALUES ('Volkswagen', 'Volkswagen de Mexico', '1');
INSERT INTO Marca VALUES ('Ford', 'Hermosillo Stamping & Assembly', '1');
INSERT INTO Marca VALUES ('Fiat', 'Fiat Automobiles', '2');
INSERT INTO Marca VALUES ('Ferrari', 'Ferrari ', '2');
INSERT INTO Marca VALUES ('Alfa Romeo', 'Alfa Romeo Automobiles S.p.A. ', '2');
INSERT INTO Marca VALUES ('Honda', 'Honda Motor', '3');
INSERT INTO Marca VALUES ('Toyota', 'Toyota Motor Corporation', '3');
INSERT INTO Marca VALUES ('Mazda', 'Mazda Motor Corporation', '3');
INSERT INTO Marca VALUES ('Nissan', 'Nissan Motor Company Ltd', '3');
INSERT INTO Marca VALUES ('Mitsubishi', 'Mitsubishi Group', '3');
INSERT INTO Marca VALUES ('Suzuki', 'Suzuki Motor Corporation', '3');
INSERT INTO Marca VALUES ('Subaru', 'Subaru', '3');
INSERT INTO Marca VALUES ('Lexus', 'Toyota Motor Corporation ', '3');
INSERT INTO Marca VALUES ('Jeep', 'FCA US LLC', '4');
INSERT INTO Marca VALUES ('Chrysler', 'FCA US LLC', '4');
INSERT INTO Marca VALUES ('Dodge', 'FCA US LLC', '4');
INSERT INTO Marca VALUES ('Mercedes-Benz', 'Mercedes-Benz', '5');
INSERT INTO Marca VALUES ('Porsche', 'Porsche AG', '5');
INSERT INTO Marca VALUES ('BMW', 'Bayerische Motoren Werke AG', '5');
INSERT INTO Marca VALUES ('Audi', 'Audi', '5');
INSERT INTO Marca VALUES ('Hyundai', 'Hyundai Group ', '6');
INSERT INTO Marca VALUES ('Renault', 'Groupe Renault', '7');
INSERT INTO Marca VALUES ('Citron', 'Groupe PSA', '7');
INSERT INTO Marca VALUES ('Peugeot', 'Groupe PSA', '7');
INSERT INTO Marca VALUES ('Jaguar', 'Jaguar Land Rover', '8');
INSERT INTO Marca VALUES ('Land Rover', 'Jaguar Land Rover', '8');
INSERT INTO Marca VALUES ('Volvo', 'Volvo Group', '9');

-- 6. Catalogo de Estados.
INSERT INTO CEstado(sEstado) VALUES('Aguascalientes');
INSERT INTO CEstado(sEstado) VALUES('Baja California');
INSERT INTO CEstado(sEstado) VALUES('Baja California Sur');
INSERT INTO CEstado(sEstado) VALUES('Campeche');
INSERT INTO CEstado(sEstado) VALUES('Chiapas');
INSERT INTO CEstado(sEstado) VALUES('Chihuahua');
INSERT INTO CEstado(sEstado) VALUES('Ciudad de Mexico');
INSERT INTO CEstado(sEstado) VALUES('Coahuila de Zaragoza');
INSERT INTO CEstado(sEstado) VALUES('Colima');
INSERT INTO CEstado(sEstado) VALUES('Durango');
INSERT INTO CEstado(sEstado) VALUES('Guanajuato');
INSERT INTO CEstado(sEstado) VALUES('Guerrero');
INSERT INTO CEstado(sEstado) VALUES('Hidalgo');
INSERT INTO CEstado(sEstado) VALUES('Jalisco');
INSERT INTO CEstado(sEstado) VALUES('Estado de Mexico');
INSERT INTO CEstado(sEstado) VALUES('Michoacan de Ocampo');
INSERT INTO CEstado(sEstado) VALUES('Morelos');
INSERT INTO CEstado(sEstado) VALUES('Nayarit');
INSERT INTO CEstado(sEstado) VALUES('Nuevo Leon');
INSERT INTO CEstado(sEstado) VALUES('Oaxaca');
INSERT INTO CEstado(sEstado) VALUES('Puebla');
INSERT INTO CEstado(sEstado) VALUES('Queretaro de Arteaga');
INSERT INTO CEstado(sEstado) VALUES('Quintana Roo');
INSERT INTO CEstado(sEstado) VALUES('San Luis Potosi');
INSERT INTO CEstado(sEstado) VALUES('Sinaloa');
INSERT INTO CEstado(sEstado) VALUES('Sonora');
INSERT INTO CEstado(sEstado) VALUES('Tabasco');
INSERT INTO CEstado(sEstado) VALUES('Tamaulipas');
INSERT INTO CEstado(sEstado) VALUES('Tlaxcala');
INSERT INTO CEstado(sEstado) VALUES('Veracruz de Ignacio de la Llave');
INSERT INTO CEstado(sEstado) VALUES('Yucatan');
INSERT INTO CEstado(sEstado) VALUES('Zacatecas');

-- 7. Catalogo de Municipios.
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Abala', 31);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Abasola', 8);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Abasole', 11);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Abasolu', 19);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Abasolo', 28);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Abejones', 20);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Acacoyagua', 5);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Acajete', 21);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Acajeto', 30);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Acala', 5);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Acambaro', 11);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Acambay de Ruiz Castaneda', 15);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Acanceh', 31);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Acapetahua', 5);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Acaponeta', 18);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Villa Victoria', 15);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Villaflores', 5);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Villagran', 28);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Villaldama', 19);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Villamar', 16);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Villanueva', 32);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Vista Hermosa', 16);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xalapa', 30);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xalisco', 18);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xaloztoc', 29);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xalpatlahuac', 12);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xaltocan', 29);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xayacatlan de Bravo', 21);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xichu', 11);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xico', 30);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xicohtzinco', 29);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xicotencatl', 28);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xicotepec', 21);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xicotlan', 21);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xilitla', 24);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xiutetelco', 21);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xocchel', 31);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xochiapulco', 21);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xochiatipan', 13);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xochicoatlan', 13);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xochihuehuetlan', 12);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xochiltepec', 21);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xochimilco', 7);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xochistlahuaca', 12);
INSERT INTO CMunicipio(sMunicipio, nIdEstado) VALUES('Xochitepec', 17);

-- 8. Poblado de la tabla "Direccion". AGREGAR EL N�MERO A LAS COLUMNAS.
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES (' jose maria morelos','OJO DE AGUA 2A.', '56030',1, 15);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Miguel Angel de Quevedo','OCOTILLOS', '56030', 1, 14);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('jose maria morelos','OCOPULCO', '1400', 1, 15);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('joses maria morelos','OCHO DE AGOSTO', '11860', 1, 2);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Francisco Sosa','OCOTLA', '54943', 0, 2);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('gustavo e campa','OBRERA', '3820', 1, 2);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('henry ford','OLIMPICA RADIO', '56030', 1, 15);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Miguel Hidalgo','OLIVAR DEL CONDE 2A.', '3820', 1, 13);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('pedro romero de terreros','OBRERA', '13450', 0, 7);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('victoria, moctezuma','OLIMPICA RADIO', '1780', 0, 15);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Gabino Jimeno','Agropecuaria', '1420',1, 6);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Gabino Stuyck','Agua Fria', '55170', 1, 8);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Francisco de Quevedo','Agua Nueva', '52949', 1, 10);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Thomas Jefferson','Alamedas de la Hacienda', '7400', 1, 12);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Gabriel Garcia Marquez','Alamos de Corregidora', '2090', 0, 14);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Camino del Olivar','Alfonso Martinez Dominguez', '13099', 1, 16);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Calle de los Olmos ','Almaguer', '54040', 1, 18);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Agustin de Iturbide','Ferrocarilera', '53500', 1, 23);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Thomas Fairfax','QUIAHUATLA', '9870', 0, 27);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Glorieta de Santa Maria ','QUINCE DE AGOSTO', '7100', 0, 20);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Pasaje de San Juan de Dios','QUINTA EL ANGEL', '9630', 1, 22);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Conde de Olivares','QUINTAS DEL VALLE', '9850', 1, 24);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Travesia de San Juan','SAN ANDRES ATOTO 2A.', '54030', 1, 26);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Jardines de San Luis','SAN ANDRES TETEPILCO', '56368', 0, 28);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Forjadores de la Republica','SAN ANDRES TOMATLAN', '12610', 0, 30);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Simon Bolivar','Rocroi', '5432',1, 15);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Hanibal Barca','Campos Catalaunicos', '2676', 1, 14);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Marquis de Lafayette','Breda', '2313', 1, 15);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Carl Gauss','Bosques de Teutoburgo', '7454', 1, 2);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('John von Neumann','Los Fresnos', '43216', 0, 2);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Duque de Olivares','Los Robles', '7654', 1, 2);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Dante Alighieri','Los Sauces', '1245', 1, 15);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Sergio Leone','Estrella del norte', '3432', 1, 13);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Francisco Goya','Rhode Island', '2345', 0, 7);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Jose Vasconcelos','Virginia', '9876', 0, 15);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Jose Luis Borges','Georgia', '67655',1, 6);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Miguel de Cervantes','Vermont', '6546', 1, 13);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Jorge Ibarguengoitia','Nuevo Leon', '369', 0, 7);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Grigori Perelman','Pennsylvania', '364', 0, 15);
INSERT INTO DIRECCION ( sCalle, sColonia, sCp,  bActivo, nIdMunicipio) VALUES ('Alan Turing','Colonia Claudia Ara', '3646',1, 6);

-- 9. Poblado de la tabla "Persona".
INSERT INTO Persona VALUES ('PAFC730423A', 'Cristian', 'Pastor', 'Flores', 'M', 'cr.paflo44@gmail.com' , '1973-04-23' );
INSERT INTO Persona VALUES ('ROVE690711B', 'Eva Maria', 'Rodriguez', 'Vargas', 'F', 'eva.rodriguev21@msn.com', '1969-07-11');
INSERT INTO Persona VALUES ('SEGJ611112C', 'Jaime','Serrano', 'Gil', 'M', 'jai.serr6@gmail.com', '1961-11-12');
INSERT INTO Persona VALUES ('GADM940619D', 'Maria', 'Gallego', 'Delgado', 'F', 'm.galldelgad@facebook.com', '1994-06-19');
INSERT INTO Persona VALUES ('TOFI520228E', 'Ismael', 'Torres', 'Flores', 'M', 'is_torreflore53@gmail.com', '1952-02-28');
INSERT INTO Persona VALUES ('GABF651004F', 'Fernando', 'Garrido', 'Bravo', 'M', 'fernan-garrbr92@msn.com', '1965-10-04');
INSERT INTO Persona VALUES ('MOMA890211G', 'Aurora', 'Mora', 'Muñoz', 'F', 'a.morm@msn.com', '1989-02-11');
INSERT INTO Persona VALUES ('SEVL851106H', 'Luis', 'Serrano', 'Vidal', 'M', 'l_sevid57@facebook.com', '1985-11-06');
INSERT INTO Persona VALUES ('VENJ650730I', 'Jose Carlos', 'Vega', 'Nieto', 'M', 'josvn@facebook.com', '1965-07-30');
INSERT INTO Persona VALUES ('MARM461104J', 'Manuela', 'Martin', 'Romero','F', 'mrom@msn.com', '1946-11-04');
INSERT INTO Persona VALUES ('VAND611211K', 'Domingo', 'Vargas', 'Navarro', 'M', 'dom_vnava79@ciencias.unam.mx', '1961-12-11');
INSERT INTO Persona VALUES ('GOSP320108L', 'Purificacion', 'Gomez', 'Soto','F', 'purificacio_74@facebook.com', '1932-01-08');
INSERT INTO Persona VALUES ('SAMP510724M', 'Paula', 'Sanchez', 'Moreno','F', 'pau_more@facebook.com', '1951-07-24');
INSERT INTO Persona VALUES ('MEGY810606N', 'Yolanda', 'Mendez', 'Garcia','F', 'yolandmgar@ciencias.unam.mx', '1981-06-05');
INSERT INTO Persona VALUES ('CACM771127O', 'Maria Josefa', 'Castro', 'Cruz','F', 'mariacastrcr@gmail.com', '1977-11-27');
INSERT INTO Persona VALUES ('REBF760706P', 'Felix','Reyes', 'Blanco', 'M', 'f_reyebl@unam.mx', '1976-07-06');
INSERT INTO Persona VALUES ('CEMA920514Q', 'Alberto', 'Crespo', 'Montero', 'M', 'acres23@live.com', '1992-05-14');
INSERT INTO Persona VALUES ('COTA850430R', 'Alberto', 'Cortes', 'Torres', 'M', 'albtorr68@msn.com', '1985-04-30');
INSERT INTO Persona VALUES ('CACR951127S', 'Ruben', 'Calvo', 'Cabrera', 'M', 'r_calvcabrer@live.com', '1995-11-27');
INSERT INTO Persona VALUES ('DIFV681101T', 'Victor Manuel', 'Diez', 'Fuentes', 'M', 'victor.dief59@gmail.com', '1968-11-01');

/************************AGENTES***********************/
INSERT INTO Persona VALUES('MAWX939145F','Brody','Estes','Mcbride', 'M', 'brody_e@gmail.com', '12-08-1979'),
('BQCR986598P','Prescott','Miles','Morse','M','prescott_m@gmail.com','1978-10-24'),
('RIKX914013T','Brittany','Valdez','Mccoy','F','brittany_v@hotmail.com','1995-01-23'),
('APUY394450B','Christen','Chen','Alvarez','M','christen_c@gmail.com','1986-09-12'),
('PLRE083018G','Jessica','Harrington','Blankenship','F','jessica_h@msn.com','1987-01-10'),
('JEJA545837P','Zahir','Gibson','Finley','M','zahir_g@hotmail.com','1992-04-19'),
('VMHT859236Y','Halla','Porter','Burton','F','halla_p@gmail.com','1987-03-20'),
('CWSG960276I','Mechelle','Compton','Clay','F','mechelle_compton@live.com','1986-12-08'),
('XOAP341845M','Desiree','Faulkner','Floyd','F','desiree_f@gmail.com','1981-10-06'),
('DEQF342791U','Dominique','Zimmerman','Johnston','M','dominique_zi@facebook.com','1981-04-30');
INSERT INTO Persona VALUES('NYZP280542C','Noelani','Phelps','Fernandez','M','noelani_p@hotmail.com','1993-09-21'),
('DJNG796007N','Piper','Grimes','Neal','M','piper_neal@msn.com','1988-02-08'),
('LHAW952145A','Garth','Terry','Peck','M','garth_ty@gmail.com','1987-06-03'),
('EODN799471S','Brynne','Ford','Emerson','M','brynne_drof@msn.com','1996-02-23'),
('ZNZQ856683N','Darryl','Odonnell','Guerra','M','darNell@gmail.com','1983-10-16'),
('ABHX478055C','Elmo','Hancock','Kelley','M','elmo_plaza@hotmail.com','1988-05-01'),
('ZXBR048114D','Hu','Larsen','Guerrero','M','huhahi_sen@gmail.com','1991-01-31'),
('MMCQ878914R','Axel','Cook','Hubbard','M','axel_roses@hotmail.com','1987-06-02'),
('QBDF858258M','Keane','Johns','Robbins','M','kehns@hotmail.com','1993-10-14'),
('MGXO979647W','Calvin','Sharpe','Baker','M','klein@gmail.com','1995-10-30');
INSERT INTO Persona VALUES('JUHY111081L','Wendy','Mooney','Santos','F','wendy_m@gmail.com','1992-09-09'),
('HQVV005727O','Vladimir','Witt','King','M','witt_king@gmail.com','1978-02-13'),
('DYAE652039C','Cassady','Woodard','Goff','F','ssadydard@msn.com','1983-01-26'),
('XBOL329991X','Erica','Tate','Mullen','F','tate_mullen@msn.com','1986-07-31'),
('VRZU598412E','Patrick','Daugherty','Wright','M','phoenix_wright@gmail.com','1991-03-29'),
('HABC524253W','Kerry','Banks','Carson','M','carry@hotmail.com','1977-02-23'),
('MNRE027945T','Fallon','Burgess','Robinson','M','nollaf@msn.com','1983-09-12'),
('ASAE752931C','Sean','Lawrence','Gaines','M','ecner_sean@live.com','1977-12-02'),
('QGWH772051N','Tashya','Fields','Austin','F','texas_aulds@live.com','1977-12-28'),
('SIUE678143F','Edan','Gould','Summers','F','summer_sadness@live.com','1978-02-12');
INSERT INTO Persona VALUES('URWU101787P','Yardley','Fleming','Knight','F','knight_13@facebook.com','1987-03-27'),
('BYFO223073K','Yetta','Wooten','Sharp','F','wotta@facebook.com','1989-07-03'),
('JRUF157949C','Walker','Leonard','Frazier','M','paul@facebook.com','1989-03-14'),
('EQMN340667V','Forrest','Watts','Spears','M','wattSpears@facebook.com','1984-09-28'),
('ZSMX705070V','Anne','Austin','Meyer','F','meyer_a@facebook.com','1993-03-08'),
('RIHB996945D','Bernard','Reyes','Gamble','M','reyes_magos@gmail.com','1993-12-07'),
('AFKD937199I','Zia','Bennett','Beach','F','ttennebAiz@gmail.com','1978-02-15'),
('BUIQ001096F','Gavin','Mitchell','Juarez','M','juare_llech@live.com','1996-02-25'),
('OQRK163392X','Lamar','Hebert','Logan','M','hebert_ramal@live.com','1976-08-02'),
('QYOB226414V','Violet','Maxwell','Weiss','F','veddy@live.com','1985-11-19');
/*************************/

INSERT INTO Persona VALUES('YOEQ596099S','Ignatius','Massey','Garza','M','azrag@msn.com','1985-09-18'),
('HLYN462102T','Hillary','Barr','Yates','F','yates_rrab@hotmail.com','1998-01-15'),
('KONY812284F','Kato','Barnes','Mcdonald','M','ronaldMcs@hotmail.com','1991-10-03'),
('ENJA520473Z','Zane','Shaffer','Lowery','F','yreowl@hotmail.com','1980-04-29'),
('HNZU014971O','Chaney','Acevedo','Morris','F','morrison@hotmail.com','1987-08-12'),
('DTCN913767D','Shafira','Morrison','Combs','F','libertalia@gmail.com','1990-06-02'),
('DADZ876667Q','Duncan','Dillon','Hull','M','lluhonll@live.com','1989-12-08'),
('ZQGI211176B','Octavia','Sweeney','Garcia','F','china@live.com','1995-11-26'),
('SFAN312391G','Maile','Curtis','Sullivan','F','sullivan@hotmail.com','1985-06-28'),
('XEKN014808Q','Kiayada','Fletcher','Whitfield','F','whiteHa@gmail.com','1990-08-18');
INSERT INTO Persona VALUES('XTEU150075J','Curran','Knowles','Reed','M','knowles@hotmail.com','1988-03-27'),
('PKNQ644062A','Kyra','Howell','Donovan','F','kyra_h@msn.com','1989-09-25'),
('ZTXG732367J','Mallory','Logan','Higgins','F','logan_reese@msn.com','1988-11-02'),
('PYKF148395N','Eugenia','Stark','Schmidt','F','stark@live.com','1993-02-06'),
('SRRR595238B','Jessamine','Parker','Crawford','F','peter@hotmail.com','1994-05-31'),
('RHML199376W','Barbara','Ashley','Dillon','F','dilnolley@msn.com','1992-12-04'),
('FIIO857467C','Rajah','Yates','Riley','M','hajar@gmail.com','1979-02-11'),
('PANC531386Y','Mark','Moody','Alston','M','anthony@gmail.com','1986-10-31'),
('OIFD037249G','Zoe','Gibson','Holloway','M','paula@gmail.com','1980-09-24'),
('TOCQ202432W','Chadwick','Rojas','Blake','M','christian@msn.com','1988-09-06');
INSERT INTO Persona VALUES('WLFG530795J','Melvin','Lowery','Waller','M','melvin_choco@msn.com','1981-05-03'),
('HUUX870798K','Maris','Snyder','Christian','F','snyder@hotmail.com','1977-06-17'),
('LTSO926466Y','Cain','Sweet','Owens','F','sweet@hotmail.com','1989-09-24'),
('DDAU862696D','Brynn','Shannon','Holmes','M','holmes_sher@live.com','1996-09-19'),
('AONZ063443N','Haley','Hodges','Schneider','M','schneider_hh@hotmail.com','1984-06-05'),
('HBEO844112Q','Mari','Robles','Hines','F','manes_hiri@gmail.com','1988-12-30'),
('BDAV198773Q','Nash','Mcmahon','Le','M','lehsan@facebook.com','1996-08-18'),
('PGKR378073V','Flavia','Vaughn','Cooper','F','cooper@gmail.com','1990-02-17'),
('UTIR884443D','Richard','Joseph','Rodriguez','M','richard136@hotmail.com','1981-09-22'),
('UXRT261735A','Ivory','Ewing','Pratt','F','pratt@live.com','1993-06-18');
INSERT INTO Persona VALUES('ISXZ438678I','Mollie','Bernard','Chaney','F','berny13@gmail.com','1980-01-10'),
('THDJ790834Q','Kareem','Beasley','Luna','F','moon@hotmail.com','1987-01-19'),
('RONA200591Z','Martha','Prince','Kline','F','martha136@hotmail.com','1980-12-14'),
('EIBK415193V','Galena','Peterson','Knapp','F','ganapp@facebook.com','1977-10-11'),
('LALN929328W','Noel','Frazier','Mccormick','M','noe_her@msn.com','1988-03-07'),
('OEBC593819H','Erin','Garza','Mclaughlin','M','laughin@gmail.com','1987-01-20'),
('CDCB916616Q','Bree','Miranda','Evans','M','breeeeez1@gmail.com','1976-06-29'),
('BRZE319475W','Ian','Clements','Bowman','M','ian_cle@ciencias.unam.mx','1992-02-22'),
('UXJE622797U','Caryn','Kinney','Keith','M','kinney13@ciencias.unam.mx','1998-07-17'),
('QLDO799038Z','Brady','Collins','Brennan','M','brabrady@ciencias.unam.mx','1992-01-18');
INSERT INTO Persona VALUES('HPSS248693I','Jaquelyn','Ryan','Morse','F','ryan_morse@hotmail.com','1982-08-03'),
('KFKO988024M','Fallon','Brooks','Petersen','M','brooks@gmail.com','1988-05-23'),
('LEER118820A','Kylie','Mann','Lambert','F','lamberyK@msn.com','1998-09-10'),
('LSMX051345M','Tashya','Butler','Barber','F','tashya@ciencias.unam.mx','1994-10-23'),
('BDWW660546R','Deirdre','Witt','Gilmore','M','deirdre@ciencias.unam.mx','1976-01-07'),
('RBQV446620L','Iris','Frederick','Oconnor','M','frederick_oconnor@ciencias.unam.mx','1982-11-08'),
('MHHY702861K','Eric','Hamilton','Hays','M','hayston@ciencias.unam.mx','1986-07-30'),
('PVOR787993R','Denton','Brewer','Nguyen','M','rewerb@msn.com','1979-10-23'),
('JQWX311217O','Alice','Livingston','Walls','F','livingston@ciencias.unam.mx','1985-12-13'),
('BKAH894652G','Kennan','Clayton','Cabrera','F','cabreria@live.com','1980-07-08');
INSERT INTO Persona VALUES('WMHY298692N','Thor','Martinez','Blackburn','M','marvel@gmail.com','1996-10-26'),
('OWND808325O','Carly','Britt','Alvarado','F','carliit@msn.com','1987-03-13'),
('UYQP778932P','Lewis','Little','Soto','M','lewittle@hotmail.com','1986-05-07'),
('PITL426648P','Elmo','Mcgee','Blanchard','M','pesadilla@msn.com','1979-06-01'),
('LFRA340073X','Keelie','Mayer','Hart','F','kelhear@hotmail.com','1983-05-04'),
('NGLV449305A','Lester','Delacruz','Huff','M','duff@live.com','1992-12-30'),
('BBSB444098Y','Regan','Rosales','Peterson','M','rerope@ciencias.unam.mx','1983-06-26'),
('EHTJ581125X','Lilah','Stephenson','Holmes','F','ahsones@live.com','1983-05-25'),
('QEVK304326S','Brenna','Phillips','Thompson','F','cheese_philly@gmail.com','1983-08-02'),
('YOUW422433E','Hayes','Burks','Bishop','M','bishop@ciencias.unam.mx','1988-01-05');



-- 10. Poblado de la tabla "Direccion_Persona".
INSERT INTO Direccion_Persona VALUES ('1', 'PAFC730423A', '1' );
INSERT INTO Direccion_Persona VALUES ('2', 'ROVE690711B', '1');
INSERT INTO Direccion_Persona VALUES ('3', 'SEGJ611112C', '1');
INSERT INTO Direccion_Persona VALUES ('4', 'GADM940619D', '1');
INSERT INTO Direccion_Persona VALUES ('5', 'TOFI520228E', '1');
INSERT INTO Direccion_Persona VALUES ('6', 'GABF651004F', '1');
INSERT INTO Direccion_Persona VALUES ('7', 'MOMA890211G', '1');
INSERT INTO Direccion_Persona VALUES ('8', 'SEVL851106H', '1');
INSERT INTO Direccion_Persona VALUES ('9', 'VENJ650730I', '1');
INSERT INTO Direccion_Persona VALUES ('10', 'MARM461104J', '1');
INSERT INTO Direccion_Persona VALUES ('11', 'VAND611211K', '1');
INSERT INTO Direccion_Persona VALUES ('12', 'GOSP320108L', '1');
INSERT INTO Direccion_Persona VALUES ('13', 'SAMP510724M', '1');
INSERT INTO Direccion_Persona VALUES ('14', 'MEGY810606N', '1');
INSERT INTO Direccion_Persona VALUES ('15', 'CACM771127O', '1');
INSERT INTO Direccion_Persona VALUES ('16', 'REBF760706P', '1');
INSERT INTO Direccion_Persona VALUES ('17', 'CEMA920514Q', '1');
INSERT INTO Direccion_Persona VALUES ('18', 'COTA850430R', '1');
INSERT INTO Direccion_Persona VALUES ('19', 'CACR951127S', '1');
INSERT INTO Direccion_Persona VALUES ('20', 'DIFV681101T', '1');

-- 11. Poblado de la tabla "Vehiculo".
INSERT INTO Vehiculo VALUES ('0001', '10', '2.0', '10', '4', '2016-01-11', '3000-01-01', 'PAFC730423A' );
INSERT INTO Vehiculo VALUES ('0002', '13', '5.0', '10', '4', '2015-02-12', '2016-03-02', 'ROVE690711B' );
INSERT INTO Vehiculo VALUES ('0003', '14', '1.2', '10', '4', '2016-03-13', '3000-01-01', 'SEGJ611112C' );
INSERT INTO Vehiculo VALUES ('0004', '15', '3.9', '10', '4', '2014-04-14', '3000-01-01', 'GADM940619D' );
INSERT INTO Vehiculo VALUES ('0005', '16', '1.75', '10', '4', '2016-05-15', '3000-01-01', 'TOFI520228E' );
INSERT INTO Vehiculo VALUES ('0006', '17', '2.4', '10', '4', '2013-06-16', '2015-03-29', 'GABF651004F' );
INSERT INTO Vehiculo VALUES ('0007', '18', '4.0', '10', '4', '2016-07-17', '3000-01-01', 'MOMA890211G' );
INSERT INTO Vehiculo VALUES ('0008', '19', '2.2', '10', '4', '2012-08-18', '3000-01-01', 'SEVL851106H' );
INSERT INTO Vehiculo VALUES ('0009', '20', '1.6', '10', '4', '2016-09-19', '3000-01-01', 'VENJ650730I' );
INSERT INTO Vehiculo VALUES ('000A', '21', '1.8', '10', '4', '2013-10-20', '2014-11-21', 'MARM461104J' );
INSERT INTO Vehiculo VALUES ('000B', '22', '1.2', '10', '4', '2016-11-21', '3000-01-01', 'VAND611211K' );
INSERT INTO Vehiculo VALUES ('000C', '23', '1.3', '10', '4', '2014-12-22', '3000-01-01', 'GOSP320108L' );
INSERT INTO Vehiculo VALUES ('000D', '24', '1.4', '10', '4', '2015-01-23', '3000-01-01', 'SAMP510724M' );
INSERT INTO Vehiculo VALUES ('000E', '25', '1.5', '10', '4', '2011-02-24', '3000-01-01', 'MEGY810606N' );
INSERT INTO Vehiculo VALUES ('000F', '26', '1.6', '10', '4', '2016-03-25', '3000-01-01', 'CACM771127O' );
INSERT INTO Vehiculo VALUES ('000G', '27', '1.7', '10', '4', '2010-04-26', '3000-01-01', 'REBF760706P' );

-- 12. Catalogo del tipo de licencias.
INSERT INTO Tipo_de_Licencia VALUES ('Tipo A');
INSERT INTO Tipo_de_Licencia VALUES ('Tipo B');
INSERT INTO Tipo_de_Licencia VALUES ('Tipo C');
INSERT INTO Tipo_de_Licencia VALUES ('Tipo D');
INSERT INTO Tipo_de_Licencia VALUES ('Tipo E');
INSERT INTO Tipo_de_Licencia VALUES ('Tipo F');

-- 13. Poblado de la tabla "Licencia".
INSERT INTO Licencia (sNoLicencia,nPuntos,dFechaExpedicion,nVigencia,sEstatus,sRFC,nIdTipoDeLicencia) VALUES
('693',3,'2016/04/18',7,'activa','PAFC730423A',1),
('899',8,'2017/10/05',10,'bloqueada','ROVE690711B',3),
('331',8,'2016/04/19',7,'activa','SEGJ611112C',5),
('505',1,'2016/09/29',2,'activa','GADM940619D',3),
('322',7,'2017/11/08',10,'bloqueada','TOFI520228E',2),
('152',8,'2017/01/27',6,'activa','GABF651004F',1),
('893',8,'2016/07/11',8,'cancelada','MOMA890211G',5),
('685',2,'2017/02/24',4,'activa','SEVL851106H',4),
('390',4,'2016/06/14',10,'cancelada','VENJ650730I',5),
('349',1,'2017/08/04',4,'activa','MARM461104J',3),
('179',3,'2016/02/22',5,'bloqueada','VAND611211K',4),
('736',3,'2017/12/05',10,'cancelada','GOSP320108L',2),
('380',2,'2016/07/04',6,'activa','SAMP510724M',2),
('909',3,'2016/05/17',7,'bloqueada','MEGY810606N',2),
('632',4,'2017/01/05',5,'activa','CACM771127O',5),
('368',9,'2017/05/24',5,'bloqueada','REBF760706P',5),
('968',5,'2016/08/18',6,'bloqueada','CEMA920514Q',2),
('429',4,'2017/09/19',9,'activa','COTA850430R',2),
('802',7,'2016/01/21',5,'cancelada','CACR951127S',2),
('522',8,'2017/02/06',6,'activa','DIFV681101T',6);

-- 14. Poblado de la tabla "Placa".
INSERT INTO Placa (sNoPlaca,dFechaInicio,sNoSerieMotor,nIdEstado) VALUES
('ABC-0001','2000-1-1','0001',1),
('ABC-0002','2000-1-1','0002',1),
('ABC-0003','2000-1-1','0003',8),
('ABC-0004','2000-1-1','0004',7),
('ABC-0005','2000-1-1','0005',7),
('ABC-0006','2000-1-1','0006',19),
('ABC-0007','2000-1-1','0007',25),
('ABC-0008','2000-1-1','0008',7),
('ABC-0009','2000-1-1','0009',32),
('ABC-000A','2000-1-1','000A',7),
('ABC-000B','2000-1-1','000B',30),
('ABC-000C','2000-1-1','000C',7),
('ABC-000D','2000-1-1','000D',7),
('ABC-000E','2000-1-1','000E',7),
('ABC-000F','2000-1-1','000F',2),
('ABC-000G','2000-1-1','000G',24);

-- 15. Poblado de la tabla "Tarjeta_de_circulacion".
INSERT INTO Tarjeta_de_Circulacion (dFechaExpedicion,nVigencia,sNoSerieMotor) VALUES
('2017/06/09',8,'0001'),
('2017/02/25',10,'0002'),
('2017/01/13',4,'0003'),
('2017/02/20',7,'0004'),
('2016/11/06',8,'0005'),
('2016/07/15',6,'0006'),
('2017/01/30',9,'0007'),
('2016/03/09',2,'0008'),
('2017/02/24',3,'0009'),
('2017/01/19',9,'000A'),
('2016/02/01',4,'000B'),
('2017/11/08',3,'000C'),
('2016/04/19',1,'000D'),
('2017/06/21',1,'000E'),
('2017/04/14',3,'000F'),
('2017/01/19',8,'000G');

-- 16. Poblado de la tabla "Modelo".
INSERT INTO Modelo VALUES ('Jetta', 'Volkswagen', '0001', 'nacional', 21, 4, 1, 3 );
INSERT INTO Modelo VALUES ('F150', 'Ford', '0002',  'nacional', 22, 6, 2, 2 );
INSERT INTO Modelo VALUES ('Panda', 'Fiat', '0003',  'extranjero', 23, 2, 3, 1 );
INSERT INTO Modelo VALUES ('488', 'Ferrari', '0004',  'extranjero', 24, 8, 4, 2 );
INSERT INTO Modelo VALUES ('Giulietta', 'Alfa Romeo', '0005',  'extranjero', 25, 4, 5, 1 );
INSERT INTO Modelo VALUES ('Accord', 'Honda', '0006',  'nacional', 26, 4, 1, 3);
INSERT INTO Modelo VALUES ('Hilux', 'Toyota', '0007',  'extranjero', 27, 6, 2, 3);
INSERT INTO Modelo VALUES ('Mazda6', 'Mazda', '0008',  'extranjero', 28, 4, 1, 3);
INSERT INTO Modelo VALUES ('Tiida', 'Nissan', '0009',  'nacional', 29, 4, 5, 3);
INSERT INTO Modelo VALUES ('Lancer', 'Mitsubishi', '000A',  'extranjero', 30, 4, 5, 3);
INSERT INTO Modelo VALUES ('LX', 'Lexus', '000B',  'extranjero', 31, 8, 7, 2);
INSERT INTO Modelo VALUES ('991', 'Porsche', '000C',  'extranjero', 32, 6, 4, 3);
INSERT INTO Modelo VALUES ('S-Class', 'Mercedes-Benz', '000D',  'extranjero', 33, 6, 6, 2);
INSERT INTO Modelo VALUES ('Peugeot 208', 'Peugeot', '000E',  'extranjero', 34, 3, 3, 3);
INSERT INTO Modelo VALUES ('V40', 'Volvo', '000F',  'extranjero', 35, 5, 3, 3);
INSERT INTO Modelo VALUES ('Range Rover', 'Land Rover', '000G',  'extranjero', 36, 6, 7, 2);

-- 17. Poblado de la tabla "Telefono".
INSERT INTO Telefono VALUES ('5-03-28-35');
INSERT INTO Telefono VALUES ('5-26-06-54');
INSERT INTO Telefono VALUES ('8-55-36-27');
INSERT INTO Telefono VALUES ('4-93-01-24');
INSERT INTO Telefono VALUES ('5-39-54-42');
INSERT INTO Telefono VALUES ('6-79-83-72');
INSERT INTO Telefono VALUES ('4-66-61-34');
INSERT INTO Telefono VALUES ('8-57-80-79');
INSERT INTO Telefono VALUES ('2-09-59-09');
INSERT INTO Telefono VALUES ('6-96-81-78');
INSERT INTO Telefono VALUES ('5-54-96-33');
INSERT INTO Telefono VALUES ('1-58-62-68');
INSERT INTO Telefono VALUES ('5-74-55-75');
INSERT INTO Telefono VALUES ('2-39-78-80');
INSERT INTO Telefono VALUES ('2-58-79-37');
INSERT INTO Telefono VALUES ('3-97-39-00');
INSERT INTO Telefono VALUES ('7-47-58-33');
INSERT INTO Telefono VALUES ('6-94-91-19');
INSERT INTO Telefono VALUES ('6-29-34-85');
INSERT INTO Telefono VALUES ('4-10-48-51');
INSERT INTO Telefono VALUES ('2-55-06-69');
INSERT INTO Telefono VALUES ('6-88-26-32');
INSERT INTO Telefono VALUES ('3-50-48-01');
INSERT INTO Telefono VALUES ('7-18-62-36');
INSERT INTO Telefono VALUES ('1-90-15-12');
INSERT INTO Telefono VALUES ('9-66-51-86');
INSERT INTO Telefono VALUES ('8-72-57-42');
INSERT INTO Telefono VALUES ('3-99-85-54');
INSERT INTO Telefono VALUES ('9-34-44-15');
INSERT INTO Telefono VALUES ('9-39-06-26');
INSERT INTO Telefono([sTelefono]) VALUES
('1-68-87-53'),('7-18-72-20'),('5-52-17-90'),('7-30-75-68'),('0-11-49-59'),
('2-45-05-96'),('1-90-26-36'),('3-84-77-01'),('4-18-03-65'),('3-53-75-01');
INSERT INTO Telefono([sTelefono]) VALUES
('2-90-24-64'),('5-62-80-79'),('4-43-19-33'),('8-90-77-50'),('7-34-36-80'),
('6-14-83-02'),('7-18-22-42'),('1-12-40-18'),('9-69-73-36'),('9-18-01-90');
INSERT INTO Telefono([sTelefono]) VALUES
('0-48-99-51'),('9-47-62-77'),('5-74-79-17'),('2-24-00-78'),('8-89-86-29'),
('3-41-33-09'),('1-52-14-25'),('8-96-99-88'),('9-18-95-85'),('1-19-99-85');
INSERT INTO Telefono([sTelefono]) VALUES
('6-59-99-92'),('4-54-92-00'),('9-44-85-72'),('0-60-71-22'),('7-72-66-39'),
('5-09-28-90'),('2-51-79-52'),('6-94-11-57'),('1-34-68-00'),('0-45-79-07');
INSERT INTO Telefono([sTelefono]) VALUES
('8-56-71-83'),('0-38-44-03'),('4-04-90-40'),('1-38-31-15'),('8-71-88-04'),
('7-55-88-45'),('8-59-30-64'),('3-30-98-92'),('5-24-67-12'),('1-17-44-48');
INSERT INTO Telefono([sTelefono]) VALUES
('2-36-29-70'),('3-18-99-18'),('9-59-88-06'),('2-34-25-92'),('9-86-50-79'),
('5-85-86-90'),('3-00-21-93'),('9-94-12-90'),('5-94-16-10'),('7-99-34-30');
INSERT INTO Telefono([sTelefono]) VALUES
('2-60-86-38'),('0-50-08-82'),('2-30-47-89'),('7-33-69-98'),('0-38-84-92'),
('1-94-35-22'),('9-06-81-49'),('6-17-76-60'),('1-38-22-65'),('1-71-49-16');
INSERT INTO Telefono([sTelefono]) VALUES
('3-48-16-77'),('6-76-22-68'),('0-75-77-78'),('3-27-41-37'),('3-65-16-94'),
('1-84-11-33'),('5-18-07-64'),('0-60-06-54'),('5-71-64-40'),('0-14-88-39');
INSERT INTO Telefono([sTelefono]) VALUES
('1-61-28-29'),('7-66-53-66'),('6-68-99-08'),('7-22-45-19'),('4-08-29-73'),
('3-77-70-21'),('1-32-93-84'),('7-82-08-56'),('4-66-62-59'),('3-98-54-26');
INSERT INTO Telefono([sTelefono]) VALUES
('9-87-14-69'),('0-34-24-36'),('8-26-83-46'),('8-34-54-08'),('2-20-61-04'),
('1-41-85-65'),('7-75-80-44'),('0-33-47-78'),('2-18-98-57'),('8-63-27-97');


-- 18. Poblado de la tabla "Persona_Telefono".
INSERT INTO Persona_Telefono VALUES ('PAFC730423A', '1', '1');
INSERT INTO Persona_Telefono VALUES ('ROVE690711B', '2', '1');
INSERT INTO Persona_Telefono VALUES ('SEGJ611112C', '3', '1');
INSERT INTO Persona_Telefono VALUES ('GADM940619D', '4', '1');
INSERT INTO Persona_Telefono VALUES ('TOFI520228E', '5', '1');
INSERT INTO Persona_Telefono VALUES ('GABF651004F', '6', '1');
INSERT INTO Persona_Telefono VALUES ('MOMA890211G', '7', '1');
INSERT INTO Persona_Telefono VALUES ('SEVL851106H', '8', '1');
INSERT INTO Persona_Telefono VALUES ('VENJ650730I', '9', '1');
INSERT INTO Persona_Telefono VALUES ('MARM461104J', '10', '1');
INSERT INTO Persona_Telefono VALUES ('VAND611211K', '11', '1');
INSERT INTO Persona_Telefono VALUES ('GOSP320108L', '12', '1');
INSERT INTO Persona_Telefono VALUES ('SAMP510724M', '13', '1');
INSERT INTO Persona_Telefono VALUES ('MEGY810606N', '14', '1');
INSERT INTO Persona_Telefono VALUES ('CACM771127O', '15', '1');
INSERT INTO Persona_Telefono VALUES ('REBF760706P', '16', '1');
INSERT INTO Persona_Telefono VALUES ('CEMA920514Q', '17', '1');
INSERT INTO Persona_Telefono VALUES ('COTA850430R', '18', '1');
INSERT INTO Persona_Telefono VALUES ('CACR951127S', '19', '1');
INSERT INTO Persona_Telefono VALUES ('DIFV681101T', '20', '1');

INSERT INTO Persona_Telefono VALUES ('MAWX939145F', '31', '1'),
('BQCR986598P', '32', '1'),
('RIKX914013T', '33', '1'),
('APUY394450B', '34', '1'),
('PLRE083018G', '35', '1'),
('JEJA545837P', '36', '1'),
('VMHT859236Y', '37', '1'),
('CWSG960276I', '38', '1'),
('XOAP341845M', '39', '1'),
('DEQF342791U', '40', '1'),
('NYZP280542C', '41', '1');
INSERT INTO Persona_Telefono VALUES ('DJNG796007N', '42', '1'),
('LHAW952145A', '43', '1'),
('EODN799471S', '44', '1'),
('ZNZQ856683N', '45', '1'),
('ABHX478055C', '46', '1'),
('ZXBR048114D', '47', '1'),
('MMCQ878914R', '48', '1'),
('QBDF858258M', '49', '1'),
('MGXO979647W', '50', '1'),
('JUHY111081L', '51', '1'),
('HQVV005727O', '52', '1');
INSERT INTO Persona_Telefono VALUES ('DYAE652039C', '53', '1'),
('XBOL329991X', '54', '1'),
('VRZU598412E', '55', '1'),
('HABC524253W', '56', '1'),
('MNRE027945T', '57', '1'),
('ASAE752931C', '58', '1'),
('QGWH772051N', '59', '1'),
('SIUE678143F', '60', '1'),
('URWU101787P', '61', '1'),
('BYFO223073K', '62', '1'),
('JRUF157949C', '63', '1');
INSERT INTO Persona_Telefono VALUES ('EQMN340667V', '64', '1'),
('ZSMX705070V', '65', '1'),
('RIHB996945D', '66', '1'),
('AFKD937199I', '67', '1'),
('BUIQ001096F', '68', '1'),
('OQRK163392X', '69', '1'),
('QYOB226414V', '70', '1'),
('YOEQ596099S', '71', '1'),
('HLYN462102T', '72', '1'),
('KONY812284F', '73', '1'),
('ENJA520473Z', '74', '1');
INSERT INTO Persona_Telefono VALUES ('HNZU014971O', '75', '1'),
('DTCN913767D', '76', '1'),
('DADZ876667Q', '77', '1'),
('ZQGI211176B', '78', '1'),
('SFAN312391G', '79', '1'),
('XEKN014808Q', '80', '1'),
('XTEU150075J', '81', '1'),
('PKNQ644062A', '82', '1'),
('ZTXG732367J', '83', '1'),
('PYKF148395N', '84', '1'),
('SRRR595238B', '85', '1');
INSERT INTO Persona_Telefono VALUES ('RHML199376W', '86', '1'),
('FIIO857467C', '87', '1'),
('PANC531386Y', '88', '1'),
('OIFD037249G', '89', '1'),
('TOCQ202432W', '90', '1'),
('WLFG530795J', '91', '1'),
('HUUX870798K', '92', '1'),
('LTSO926466Y', '93', '1'),
('DDAU862696D', '94', '1'),
('AONZ063443N', '95', '1'),
('HBEO844112Q', '96', '1');
INSERT INTO Persona_Telefono VALUES ('BDAV198773Q', '97', '1'),
('PGKR378073V', '98', '1'),
('UTIR884443D', '99', '1'),
('UXRT261735A', '100', '1'),
('ISXZ438678I', '101', '1'),
('THDJ790834Q', '102', '1'),
('RONA200591Z', '103', '1'),
('EIBK415193V', '104', '1'),
('LALN929328W', '105', '1'),
('OEBC593819H', '106', '1'),
('CDCB916616Q', '107', '1');
INSERT INTO Persona_Telefono VALUES ('BRZE319475W', '108', '1'),
('UXJE622797U', '109', '1'),
('QLDO799038Z', '110', '1'),
('HPSS248693I', '111', '1'),
('KFKO988024M', '112', '1'),
('LEER118820A', '113', '1'),
('LSMX051345M', '114', '1'),
('BDWW660546R', '115', '1'),
('RBQV446620L', '116', '1'),
('MHHY702861K', '117', '1'),
('PVOR787993R', '118', '1');
INSERT INTO Persona_Telefono VALUES ('JQWX311217O', '119', '1'),
('BKAH894652G', '120', '1'),
('WMHY298692N', '121', '1'),
('OWND808325O', '122', '1'),
('UYQP778932P', '123', '1'),
('PITL426648P', '124', '1'),
('LFRA340073X', '125', '1'),
('NGLV449305A', '126', '1'),
('BBSB444098Y', '127', '1'),
('EHTJ581125X', '128', '1'),
('QEVK304326S', '129', '1');
INSERT INTO Persona_Telefono VALUES ('YOUW422433E', '130', '1');

-- 19. Poblado de la tabla Ubicacion.
INSERT INTO Ubicacion (sCalle,sReferencia,nIdMunicipio) VALUES
('Viaducto Miguel Aleman (Rio de la Piedad)','767-6073 Venenatis Avda.',7),
('Carretera Mexico - Texcoco','Apdo.:650-8404 Cursus C/',41),
('Eje 3 Oriente','Apdo.:411-3546 A ',44),
('Autopista Mexico - Toluca','876-9389 Dolor. Calle',22),
('Autopista Chamapa - La Venta','2799 Eget Avda.',6),
('Av. Mario Colon','Apdo.:613-9243 Pede Avda.',2),
('Av. Mario Colon','714-741 Rhoncus Av.',28),
('Av. Mario Colon','Apdo.:763-8109 Lorem, Carretera',43),
('San Antonio Abad','Apartado num.: 716, 7887 Amet, Avenida',45),
('Av. de los Insurgentes','784-7568 Nulla Carretera',40),
('Marina Nacional','3465 Morbi Av.',28),
('Eje 5 Sur','650-5502 Integer Ctra.',1),
('Av. Constituyentes','821-574 Neque Ctra.',43),
('Carretera Mexico - Queretaro','6639 Vel Av.',8),
('Autopista Chamapa - La Venta','1481 Nulla Ctra.',40),
('Av. Eugenia','Apartado num.: 456, 2109 Eget, Avda.',43),
('Legaria','7740 Massa. C/',45),
('Calzada de Tlalpan','Apdo.:775-4113 Tempor ',41),
('Eje Central Lazaro Cardenas','Apdo.:200-2293 Maecenas Avda.',22),
('Eje 5 Sur','2701 Proin Calle',16),('Av. Revolucion','7862 Nunc C/',5),
('Legaria','Apartado num.: 582, 3742 Fringilla, Av.',20),
('Eje 2 Oriente','162-6478 Adipiscing Calle',36),
('Av. Constituyentes','148-2598 Lobortis Avda.',36),
('Carretera Mexico - Queretaro','886-4750 Mauris Calle',22),
('Calzada Ignacio Zaragoza','7228 Facilisis C.',30),
('Carretera Mexico - Pachuca','2145 Iaculis C.',20),
('Av. Miguel angel de Quevedo','7499 Porttitor C.',24),
('Taxqueña','174 Cras Av.',19),
('Eje Central Lazaro Cardenas','Apartado num.: 694, 8261 Diam C/',22);

-- 20. Poblado de la tabla "Entre_Calles_Ubicacion".
INSERT INTO Entre_Calles_Ubicacion (sEntreCalles,nIdUbicacion) VALUES
('Armada Nacional, Marina Nacional',1),
('Cuauhtemoc, Av. Constituyentes',2),
('Paseo de la Reforma, Taxqueña',3),
('H. Congreso de la Union, Carretera Mexico - Texcoco',4),
('Av. Mario Colon, Paseo de la Reforma',5),
('Autopista Mexico - Toluca, Armada Nacional',6),
('Cuauhtemoc, Autopista Mexico - Puebla',7),
('Eje 1 Poniente, Marina Nacional',8),
('Paseo de la Reforma, Eje 3 Oriente',9),
('Viaducto Miguel Aleman (Rio de la Piedad), Paseo de la Reforma',10),
('H. Congreso de la Union, Eje 3 Oriente',11),
('Tlalnepantla - Tenayuca, Av. Revolucion',12),
('Eje 1 Poniente, Calzada de Tlalpan',13),
('Eje 1 Poniente, San Antonio Abad',14),
('Anillo Periferico, Av. de los Insurgentes',15),
('Autopista Mexico - Toluca, Industria Militar',16),
('Av. Revolucion, Armada Nacional',17),
('Eje 2 Oriente, Eje 1 Poniente',18),
('Paseo de las Palmas, Av. Eugenia',19),
('Cuauhtemoc, Av. Mario Colon',20),
('Av. de los Insurgentes, Av. Mario Colon',21),
('Eje 3 Oriente, Taxqueña',22),
('Autopista Mexico - Toluca, Carretera Mexico - Queretaro',23),
('Av. de los Insurgentes, Carretera Mexico - Cuernavaca',24),
('Carretera Mexico - Texcoco, Calzada Ignacio Zaragoza',25),
('Autopista Chamapa - La Venta, Tlalnepantla - Tenayuca',26),
('Autopista Mexico - Toluca, Calzada Ignacio Zaragoza',27),
('Carretera Mexico - Cuernavaca, Marina Nacional',28),
('Legaria, Autopista Mexico - Puebla',29),('Av. Revolucion, Eje 2 Norte',30);

-- 21. Poblado de la tabla "Agente".
INSERT INTO Agente (sSector, sRFC) VALUES
('sector oasis', 'PAFC730423A'),
('sector omega', 'ROVE690711B'),
('sector omega', 'MAWX939145F'),
('sector oasis', 'BQCR986598P'),
('sector polanco', 'RIKX914013T'),
('sector polanco', 'APUY394450B'),
('sector perisur', 'PLRE083018G'),
('sector perisur', 'JEJA545837P'),
('sector chapultepec', 'VMHT859236Y'),
('sector chapultepec', 'CWSG960276I'),
('sector chapultepec', 'XOAP341845M'),
('sector perisur', 'DEQF342791U'),
('sector omega', 'NYZP280542C'),
('sector oasis', 'DJNG796007N'),
('sector reforma', 'LHAW952145A'),
('sector reforma', 'EODN799471S'),
('sector reforma', 'ZNZQ856683N'),
('sector naucalpan', 'ABHX478055C'),
('sector naucalpan', 'ZXBR048114D'),
('sector naucalpan', 'MMCQ878914R'),
('sector tlalpan', 'QBDF858258M'),
('sector tlalpan', 'MGXO979647W'),
('sector tlalpan', 'JUHY111081L'),
('sector benito juarez', 'HQVV005727O'),
('sector benito juarez', 'DYAE652039C'),
('sector benito juarez', 'XBOL329991X'),
('sector norte', 'VRZU598412E'),
('sector norte', 'HABC524253W'),
('sector norte', 'MNRE027945T'),
('sector este', 'ASAE752931C'),
('sector este', 'QGWH772051N'),
('sector este', 'SIUE678143F'),
('sector oeste', 'URWU101787P'),
('sector oeste', 'BYFO223073K'),
('sector oeste', 'JRUF157949C'),
('sector sur', 'EQMN340667V'),
('sector sur', 'ZSMX705070V'),
('sector sur', 'RIHB996945D'),
('sector norte', 'AFKD937199I'),
('sector norte', 'BUIQ001096F'),
('sector norte', 'OQRK163392X'),
('sector miguel hidalgo', 'QYOB226414V');

-- 22. Poblado de la tabla "Articulo".
 INSERT INTO Articulo (sArticulo) VALUES
('Articulo 1'),
('Articulo 2'),
('Articulo 3'),
('Articulo 4'),
('Articulo 5'),
('Articulo 6'),
('Articulo 7'),
('Articulo 8'),
('Articulo 9'),
('Articulo 10'),
('Articulo 11'),
('Articulo 12'),
('Articulo 13'),
('Articulo 14'),
('Articulo 15'),
('Articulo 16'),
('Articulo 17'),
('Articulo 18'),
('Articulo 19'),
('Articulo 20'),
('Articulo 21'),
('Articulo 22'),
('Articulo 23'),
('Articulo 24'),
('Articulo 25'),
('Articulo 26'),
('Articulo 27'),
('Articulo 28'),
('Articulo 29'),
('Articulo 30'),
('Articulo 31'),
('Articulo 32'),
('Articulo 33'),
('Articulo 34'),
('Articulo 35'),
('Articulo 36'),
('Articulo 37'),
('Articulo 38'),
('Articulo 39'),
('Articulo 40'),
('Articulo 41'),
('Articulo 42'),
('Articulo 43'),
('Articulo 44'),
('Articulo 45'),
('Articulo 46'),
('Articulo 47'),
('Articulo 48'),
('Articulo 49'),
('Articulo 50'),
('Articulo 51'),
('Articulo 52'),
('Articulo 53'),
('Articulo 54'),
('Articulo 55'),
('Articulo 56'),
('Articulo 57'),
('Articulo 58'),
('Articulo 59'),
('Articulo 60'),
('Articulo 61'),
('Articulo 62'),
('Articulo 63'),
('Articulo 64'),
('Articulo 65'),
('Articulo 66'),
('Articulo 67'),
('Articulo 68'),
('Articulo 69'),
('Articulo 70');

-- 23. Poblado de la tabla "FotoMulta".
INSERT INTO FotoMulta (nIdUbicacion) VALUES
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30);

-- 24. Poblado de la tabla "Infraccion".
INSERT INTO Infraccion (dFechaHora,nNoIdentificacion,sNoSerieMotor,nIdArticulo,nIdUbicacion) VALUES
('2017-05-11T13:05:24',1,'0001',8,1),
('2017-06-11T09:22:28',2,'0001',23,2),
('2017-07-03T11:30:41',2,'0002',43,3),
('2017-07-31T07:30:53',1,'0003',48,4),
('2016-05-20T14:02:12',1,'0004',4,5),
('2016-05-30T01:05:20',2,'0005',15,6),
('2017-07-15T04:18:31',1,'0006',68,7),
('2017-01-21T16:43:25',2,'0007',2,8),
('2016-12-15T23:56:34',1,'0008',29,9),
('2017-03-23T17:00:18',2,'0009',28,10),
('2016-04-24T20:45:41',2,'000A',1,11),
('2016-07-11T14:03:31',2,'000B',61,12),
('2016-03-03T11:20:58',1,'000C',20,13),
('2016-10-15T13:39:25',1,'000D',49,14),
('2017-04-08T06:24:55',2,'000F',26,15),
('2017-05-23T07:01:21',2,'000G',18,16),
('2016-04-12T01:27:07',2,'0001',9,17),
('2016-07-20T20:31:52',2,'0009',21,18),
('2016-11-23T05:32:13',2,'000A',25,19),
('2016-06-05T00:41:03',2,'000G',25,20);


-- 25. Poblado de la tabla "Multa".
INSERT INTO Multa (sEstado,dImporte,nNoExpediente,nNoCamara) VALUES
('pendiente',0268.46,1,null),
('pagada',0493.61,null,1),
('pendiente',0753.46,2,null),
('pagada',0526.96,3,null),
('pendiente',0782.51,4,null),
('pagada',0499.68,null,2),
('recurrida',171.62,null,3),
('pendiente',455.45,null,4),
('recurrida',969.79,5,null),
('recurrida',542.67,6,null),
('pendiente',0997.09,null,5),
('recurrida',0846.99,7,null),
('recurrida',0925.85,8,null),
('pendiente',0913.84,9,null),
('pendiente',0784.57,null,6),
('pagada',0146.97,null,7),
('recurrida',0712.23,null,8),
('pagada',0420.35,10,null),
('pendiente',0326.24,11,null),
('recurrida',0839.08,12,null),
('pediente',0420.35,13,null),
('pagada',0326.24,14,null),
('pagada',0839.08,15,null),
('pagada',0420.35,16,null),
('recurrida',0326.24,17,null),
('pendiente',0839.08,18,null),
('recurrida',0420.35,19,null),
('recurrida',0467.35,20,null),
('pagada',0146.97,null,9),
('recurrida',0742.23,null,10),
('pagada',0346.97,null,1),
('recurrida',0212.23,null,2),
('pagada',0166.97,null,3),
('recurrida',0666.23,null,4),
('pagada',0136.97,null,5),
('recurrida',0212.23,null,6),
('pagada',0136.97,null,7),
('recurrida',0812.23,null,8),
('pagada',0456.97,null,9),
('recurrida',0312.23,null,10);

-- 26. Poblado de la tabla "Persona_Infraccion".
INSERT INTO Persona_Infraccion VALUES
('PAFC730423A',1),
('ROVE690711B',2),
('SEGJ611112C',3),
('GADM940619D',4),
('TOFI520228E',5),
('GABF651004F',6),
('MOMA890211G',7),
('SEVL851106H',8),
('VENJ650730I',9),
('MARM461104J',10),
('VAND611211K',11),
('GOSP320108L',12),
('SAMP510724M',13),
('MEGY810606N',14),
('CACM771127O',15),
('REBF760706P',16),
('CEMA920514Q',1),
('COTA850430R',9),
('CACR951127S',10),
('DIFV681101T',16);

-- 27. Poblado de la tabla "FotoMulta_Placa":
INSERT INTO FotoMulta_Placa (nNoCamara, sNoPlaca, sColorAuto, dFechaHora, dVelocidadInfraccion) VALUES
(1,'ABC-0001','AMARILLO','2017-05-11T13:05:24',171.105),
(2,'ABC-0002','BLANCO','2017-06-11T09:22:28',172.862),
(3,'ABC-0003','ROJO','2017-07-03T11:30:41',173.455),
(4,'ABC-0004','NEGRO','2017-07-31T07:30:53',174.649),
(5,'ABC-0005','AMARILLO','2016-05-20T14:02:12',175.121),
(6,'ABC-0006','AZUL','2016-05-30T01:05:20',176.775),
(7,'ABC-0007','ROJO','2017-07-15T04:18:31',177.937),
(1,'ABC-0008','NEGRO','2017-01-21T16:43:25',178.865),
(9,'ABC-0009','VERDE','2016-12-15T23:56:34',179.264),
(10,'ABC-000A','ROJO','2017-03-23T17:00:18',170.700),
(1,'ABC-000B','BLANCO','2016-04-24T20:45:41',174.056),
(2,'ABC-000C','AMARILLO','2016-07-11T14:03:31',172.587),
(3,'ABC-000D','AZUL','2016-03-03T11:20:58',176.145),
(4,'ABC-000E','VERDE','2016-10-15T13:39:25',173.485),
(5,'ABC-000F','ROJO','2017-04-08T06:24:55',176.132),
(3,'ABC-000G','NEGRO','2017-05-23T07:01:21',179.167),
(7,'ABC-0004','VERDE','2016-04-12T01:27:07',172.390),
(3,'ABC-0008','AZUL','2016-07-20T20:31:52',177.725),
(7,'ABC-0009','NEGRO','2016-11-23T05:32:13',173.325),
(8,'ABC-000A','BLANCO','2016-06-05T00:41:03',180.234);
