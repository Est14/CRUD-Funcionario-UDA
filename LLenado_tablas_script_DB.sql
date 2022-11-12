INSERT INTO funcionarios 
VALUES (1, 'CC', '1016027190', 'Juan', 'Venegas', 'Casado', '3204567890', "1985-04-04",  'Cll 45 # 43 - 30', 'xxx',  'juan@gmail.com', 'M'),
(2, 'CC', '1016027190', 'Tereza Sofia', 'Martinez', 'Casado', '3004567890', "1990-12-30", 'CRR 45 # 39 - 66', 'xxx',  'sofi@gmail.com', 'F'),
(3, 'CC', '1002122244', 'Camilo', 'Salcedo', 'Soltero', '3125678990', "1997-07-15", 'Cll 45 # 43 - 33', 'xxx',  'cami@gmail.com', 'M'),
(4, 'CC', '1005227772', 'Susana', 'Garcia', 'Casado', '3215475689', "1990-06-30", 'CRR 45 # 30 - 61', 'xxx',  'susa@gmail.com', 'F'),
(5, 'CC', '1088027667', 'Daniela', 'Ochoa', 'Union libre', '30230245670', "1991-06-01", 'Cll 15 # 43 - 44', 'xxx',  'dani12@gmail.com', 'F'),
(6, 'CC', '1089026198', 'Esteban', 'Vergara', 'Divorciado', '3213213456', "1992-01-02", 'Diagonal 50 # 34 -66', 'xxx',  'est14@gmail.com', 'M'),
(7, 'CC', '1059924420', 'Miguel', 'Fuentes', 'Casado', '3044012345', "1970-07-30", 'Cll 45 # 143 -66', 'xxx',  'miguelo@gmail.com', 'M'),
(8, 'CC', '1016127911', 'Alfonso', 'Velandia', 'Soltero', '3223405677', "1986-06-05", 'Diagonal 25 # 13 - 61', 'xxx',  'alfon@gmail.com', 'M'),
(9, 'CC', '1036524130', 'Carmen', 'Otalora', 'Casado', '3223456789', "1988-03-14", 'Cll 55 # 43 -60', 'xxx',  'carmencitaprohibida@gmail.com', 'F'),
(10, 'CC','1017821110', 'Daniel Antonio', 'Soltero', 'Martinez', '1990-06-30',  "1990-06-30", 'CRR 45 # 31 - 90', 'xxx',  'dani@gmail.com', 'M');

INSERT INTO estudios
VALUES(1, 'U. de los Andes', 'Profesional', 'Ing. Sistemas', '2015-06-25', 3),
(2, 'U. de Antioquia', 'Profesional', 'Ing. Software', '1995-12-05', 7),
(3, 'U del Sinu', 'Profesional', 'Ing. Software', '2005-06-15', 1),
(4, 'U Rosario', 'Profesional', 'Ing. Civil', '2015-12-25', 2),
(5, 'U del Quindio', 'Profesional', 'Ing. Catastral', '2018-12-20', 4),
(6, 'U de Cordoba', 'Profesional', 'Abogado', '2017-12-25', 5),
(7, 'U de Antioquia', 'Profesional', 'Admin. Empresas', '2017-06-12', 6),
(8, 'U de Antioquia', 'Profesional', 'Lengua Extranjera', '2020-06-25', 7),
(9, 'U de Cordoba', 'Profesional', 'Admin. Empresar', '2010-12-25', 8),
(10, 'U Nacional', 'Profesional', 'Matematico', '2008-12-20', 9),
(11, 'U Nacional', 'Profesional', 'Quimico', '2016-12-05', 10),
(12, 'U Bacerlona', 'Maestria', 'Master en Desarrollo Urbano', '2022-02-25', 4),
(13, 'U de los Andes', 'Maestria', 'Master en Gerencia', '2015-12-25', 8),
(14, 'U Javeriana', 'Maestria', 'Master en Gerencia', '2021-12-25', 6),
(15, 'U Javeriana', 'Maestria', 'Master en Quimica Molecular', '2021-12-25', 10),
(16, 'U del Tolima', 'Doctorado', 'Doctor en Fisica', '2022-02-25', 9),
(17, 'Harvard U', 'Doctorado', 'Doctor en Estructuras', '2022-12-25', 2),
(18, 'U Madrid', 'Doctorado', 'Doctor en Jurisprudencia', '2015-12-25', 5),
(19, 'U Do Santos', 'Especializacion', 'Especialista en Ciber Seguridad', '2018-12-25', 1);

INSERT INTO familiares
VALUES(1, 'CC', '100568956', 'Diana Marcela', 'Mendoza', "1990-03-03", 'F'),
(2, 'TI', '1200568706', 'Lorena Sofia', 'Venegas', "2015-07-03", 'F'),
(3, 'TI', '120568251', 'Juan Daniel', 'Venegas', "2020-06-30", 'M');

INSERT INTO func_fami_relacion
VALUES (1, 1, 1, 'Esposa'),(2, 1, 2, 'Hija'),(3, 1, 3, 'Hijo');

INSERT INTO familiares
VALUES(4, 'CC', '10140664588', 'Marcos ', 'Zamora', "1990-10-13", 'M'),
(5, 'TI', '1016027450', 'Esteban Daniel', 'Venegas', "2010-11-10", 'M');

INSERT INTO func_fami_relacion
VALUES (4, 2, 4, 'Esposo'),(5, 2, 5, 'Hijo');

INSERT INTO familiares
VALUES(6, 'CC', '1030664288', 'Tomas ', 'Zarate', "1992-10-23", 'M'),
(7, 'TI', '1016023351', 'Valentina', 'Zarate', "2011-11-11", 'F');

INSERT INTO func_fami_relacion
VALUES (6, 4, 6, 'Esposo'),(7, 4, 7, 'Hija');

INSERT INTO familiares
VALUES(8, 'CC', '1034053853', 'Vanesa Marcela', 'Herandez', "1980-10-01", 'F'),
(9, 'CC', '100100340', 'Marcela Fuentes', 'Venegas', "1992-07-03", 'F'),
(10, 'CC', '110103030', 'Lorena Fuentes', 'Venegas', "1997-05-15", 'F'),
(11, 'TI', '100300730', 'Vaneza Fuentes', 'Venegas', "2008-08-30", 'F');

INSERT INTO func_fami_relacion
VALUES (8, 7, 8, 'Esposa'),(9, 7, 9, 'Hija'),(10, 7, 10, 'Hija'),(11, 7, 11, 'Hija');

INSERT INTO familiares
VALUES(12, 'CC', '100405383', 'Fernando ', 'Martinez', "1980-10-01", 'M'),
(13, 'TI', '1010567893', 'Federico', 'Martinez', "2005-12-15", 'M'),
(14, 'TI', '1010567894', 'Fernando Junior', 'Martinez', "2005-12-15", 'M');

INSERT INTO func_fami_relacion
VALUES (12, 9, 12, 'Esposa'),(13, 9, 13, 'Hija'),(14, 9, 14, 'Hija');



