CREATE DATABASE CY_DB
GO

USE CY_DB
GO

-- tables
-- Table: Aspirantes
CREATE TABLE Aspirantes (
    id_aspirante int  NOT NULL,
    nombres varchar(50)  NOT NULL,
    apellidos varchar(50)  NOT NULL,
    correo varchar(70)  NOT NULL,
    edad int  NOT NULL,
    direccion varchar(80)  NOT NULL,
    telefono int  NOT NULL,
    CONSTRAINT Aspirantes_pk PRIMARY KEY  (id_aspirante)
);

INSERT INTO ASPIRANTES VALUES  (1, 'Spenser', 'Chavez', 'swoodyear0@comsenz.com', 32,  'Calle Los Pinos 789', 987647829);
INSERT INTO ASPIRANTES VALUES  (2, 'Karly', 'Valenzuela', 'ksivewright1@a8.net', 37,  'Calle Los Pinos 789', 910873672);
INSERT INTO ASPIRANTES VALUES  (3, 'Humfried', 'Salazar', 'hlehr2@ed.gov', 29,  'Av. Arequipa 123', 905672387);
INSERT INTO ASPIRANTES VALUES  (4, 'Wilfrid', 'Saldarriaga', 'wsimionescu3@webnode.com', 36,  'Av. La Marina 1111', 907624343);
INSERT INTO ASPIRANTES VALUES  (5, 'Luce', 'Espinoza', 'lzeplin4@xinhuanet.com', 39,  'Av. Arequipa 123', 999888777);
INSERT INTO ASPIRANTES VALUES  (6, 'Clo', 'Noronha', 'cladloe5@naver.com', 26,  'Av. Arequipa 123', 908765434);
INSERT INTO ASPIRANTES VALUES  (7, 'Regen', 'Linares', 'rdennick6@youtu.be', 28,  'Av. Javier Prado Este 1010', 908765145);
INSERT INTO ASPIRANTES VALUES  (8, 'Antony', 'Tello', 'abrunsden7@omniture.com', 20,  'Av. Javier Prado Este 1010', 908761422);
INSERT INTO ASPIRANTES VALUES  (9, 'Anders', 'Ormeño', 'aplanks8@theatlantic.com', 24,  'Jr. Huancavelica 456', 986189260);
INSERT INTO ASPIRANTES VALUES  (10, 'Imogen', 'Durand', 'ijustun9@ca.gov', 29,  'Jr. Huancavelica 456', 917280123);
INSERT INTO ASPIRANTES VALUES  (11, 'Valentijn', 'Luyo', 'vhaddicka@com.com', 31,  'Jr. Huancavelica 456', 920715629);
INSERT INTO ASPIRANTES VALUES  (12, 'Anneliese', 'Raymundo', 'aheasemanb@irs.gov', 37,  'Jr. Huancavelica 456', 981026541);
INSERT INTO ASPIRANTES VALUES  (13, 'Missy', 'Cuccitini', 'mpeploec@stumbleupon.com', 34,  'Av. La Marina 1111', 996622510);
INSERT INTO ASPIRANTES VALUES  (14, 'Noland', 'Dybala', 'nplumrideged@cbc.ca', 36,  'Av. Arequipa 123', 999999871);
INSERT INTO ASPIRANTES VALUES  (15, 'Maire', 'Goes', 'mgoselinge@ameblo.jp', 30,  'Av. Javier Prado Este 1010', 917283381);

-- Table: Cargos
CREATE TABLE Cargos (
    id_cargo int  NOT NULL,
    cargos varchar(70)  NOT NULL,
    salario decimal  NOT NULL,
    CONSTRAINT Cargos_pk PRIMARY KEY  (id_cargo)
);

INSERT INTO Cargos VALUES  (1, 'Contador', 2800 );
INSERT INTO Cargos VALUES  (2, 'Asistente Legal', 3500 );
INSERT INTO Cargos VALUES  (3, 'Geólogo', 4000 );
INSERT INTO Cargos VALUES  (4, 'Analista de Datos', 2600 );
INSERT INTO Cargos VALUES  (5, 'Terapeuta', 3200 );
INSERT INTO Cargos VALUES  (6, 'Químico de Alimentos', 1800 );
INSERT INTO Cargos VALUES  (7, 'Especialista Clínico', 2400 );
INSERT INTO Cargos VALUES  (8, 'Docente', 2800 );
INSERT INTO Cargos VALUES  (9, 'Ingeniero de Datos', 3500 );
INSERT INTO Cargos VALUES  (10, 'Científico de Datos', 4000 );
INSERT INTO Cargos VALUES  (11, 'Diseñador Gráfico', 6000 );
INSERT INTO Cargos VALUES  (12, 'Especialista en Marketing', 4600 );
INSERT INTO Cargos VALUES  (13, 'Comunicador', 4000 );
INSERT INTO Cargos VALUES  (14, 'Especialista en Materiales', 3500 );
INSERT INTO Cargos VALUES  (15, 'Supervisor de Obra', 7500 );

-- Table: Empresas
CREATE TABLE Empresas (
    id_empresa int  NOT NULL,
    nombre_comercial varchar(70)  NOT NULL,
    numero_ruc char(11)  NOT NULL,
    direccion varchar(80)  NOT NULL,
    numero_trabajadores int  NOT NULL,
    sectores_id_sector int  NOT NULL,
    CONSTRAINT Empresas_pk PRIMARY KEY  (id_empresa)
);

INSERT INTO Empresas VALUES  (1, 'Costeño', 70730859071, 'Av. La Marina', 479, 2 );
INSERT INTO Empresas VALUES  (2, 'Luz del Sur', 30477422706, 'Av. Javier Prado', 382, 3 );
INSERT INTO Empresas VALUES  (3, 'Sanna', 59876813815, 'Calle Las Begonias', 525, 4 );
INSERT INTO Empresas VALUES  (4, 'Ferreyros', 79972360657, 'Av. La Marina', 690, 2 );
INSERT INTO Empresas VALUES  (5, 'UPC', 10188441948, 'Av. La Marina', 741, 2 );
INSERT INTO Empresas VALUES  (6, 'Intercorp Perú', 38714959714, 'Av. La Marina', 674, 4 );
INSERT INTO Empresas VALUES  (7, 'Cementos Pacasmayo', 33982689643, 'Av. Javier Prado', 542, 1 );
INSERT INTO Empresas VALUES  (8, 'InRetail Perú', 48023587687, 'Av. Javier Prado', 781, 2 );
INSERT INTO Empresas VALUES  (9, 'Luz del Sur', 73501196363, 'Av. Arequipa', 512, 4 );
INSERT INTO Empresas VALUES  (10, 'Interbank', 90560060686, 'Calle Las Begonias', 776, 1 );
INSERT INTO Empresas VALUES  (11, 'Volcan Compañía Minera', 79793192972, 'Av. Javier Prado', 329, 4 );
INSERT INTO Empresas VALUES  (12, 'Graña y Montero', 66384936044, 'Calle Las Begonias', 620, 3 );
INSERT INTO Empresas VALUES  (13, 'InRetail Perú', 49848330832, 'Av. Javier Prado', 687, 3 );
INSERT INTO Empresas VALUES  (14, 'Yape', 13590957390, 'Calle Las Begonias', 500, 4 );
INSERT INTO Empresas VALUES  (15, 'BCP', 92176722689, 'Calle Las Begonias', 757, 4 );


-- Table: Estado_ofertas_empleo
CREATE TABLE Estado_ofertas_empleo (
    id_estado int  NOT NULL,
    id_oferta int  NOT NULL,
    CONSTRAINT Estado_ofertas_empleo_pk PRIMARY KEY  (id_estado,id_oferta)
);


INSERT INTO estado_ofertas_empleo VALUES  (1,1);
INSERT INTO estado_ofertas_empleo VALUES  (2,2);
INSERT INTO estado_ofertas_empleo VALUES  (2,3);
INSERT INTO estado_ofertas_empleo VALUES  (1,4);
INSERT INTO estado_ofertas_empleo VALUES  (1,5);
INSERT INTO estado_ofertas_empleo VALUES  (1,6);
INSERT INTO estado_ofertas_empleo VALUES  (2,7);
INSERT INTO estado_ofertas_empleo VALUES  (1,8);
INSERT INTO estado_ofertas_empleo VALUES  (2,9);
INSERT INTO estado_ofertas_empleo VALUES  (2,10);
INSERT INTO estado_ofertas_empleo VALUES  (1,11);
INSERT INTO estado_ofertas_empleo VALUES  (1,12);
INSERT INTO estado_ofertas_empleo VALUES  (2,13);
INSERT INTO estado_ofertas_empleo VALUES  (2,14);
INSERT INTO estado_ofertas_empleo VALUES  (1,15);
INSERT INTO estado_ofertas_empleo VALUES  (1,16);
INSERT INTO estado_ofertas_empleo VALUES  (1,17);
INSERT INTO estado_ofertas_empleo VALUES  (1,18);
INSERT INTO estado_ofertas_empleo VALUES  (2,19);
INSERT INTO estado_ofertas_empleo VALUES  (2,20);
INSERT INTO estado_ofertas_empleo VALUES  (1,21);
INSERT INTO estado_ofertas_empleo VALUES  (1,22);
INSERT INTO estado_ofertas_empleo VALUES  (2,23);
INSERT INTO estado_ofertas_empleo VALUES  (2,24);
INSERT INTO estado_ofertas_empleo VALUES  (1,25);



-- Table: Estados
CREATE TABLE Estados (
    id_estado int  NOT NULL,
    estado varchar(50)  NOT NULL,
    CONSTRAINT Estados_pk PRIMARY KEY  (id_estado)
);

INSERT INTO estados VALUES  (1, 'ACEPTADO' );
INSERT INTO estados VALUES  (2, 'NO ACEPTADO' );


-- Table: ExperienciasCvs
CREATE TABLE ExperienciasCvs (
    id int  NOT NULL,
    sectior_laboral varchar(500)  NOT NULL,
    descripcion varchar(500)  NOT NULL,
    duracion varchar(50)  NOT NULL,
    CONSTRAINT ExperienciasCvs_pk PRIMARY KEY  (id)
);

INSERT INTO ExperienciasCvs VALUES  (1, 'Tecnología de la Información', 'Este sector abarca todo lo relacionado con la tecnología de la información y la informática.', '3 años de experiencia');
INSERT INTO ExperienciasCvs VALUES  (2, 'Finanzas', 'Este sector involucra actividades financieras, bancarias y de inversión.', '2 años de experiencia');
INSERT INTO ExperienciasCvs VALUES  (3, 'Educación', 'Este sector abarca la educación en todos los niveles, desde preescolar hasta la educación superior.', 'Sin experiencia');
INSERT INTO ExperienciasCvs VALUES  (4, 'Ventas y Marketing', 'Este sector se enfoca en la promoción y venta de productos y servicios. ', '4 años de experiencia');
INSERT INTO ExperienciasCvs VALUES  (5, 'Salud y cuidado de la salud', 'Este sector engloba profesiones relacionadas con la atención médica y el bienestar.', '2 años de experiencia');
INSERT INTO ExperienciasCvs VALUES  (6, 'Construcción', 'Este sector engloba profesionales relacionados con la construcción', 'Sin experiencia');
INSERT INTO ExperienciasCvs VALUES  (7, 'Manufactura', 'Este sector se centra en la producción y fabricación de bienes.', '1 año de experiencia');
INSERT INTO ExperienciasCvs VALUES  (8, 'Servicios', 'Este es un sector amplio que incluye una variedad de servicios, como turismo, hostelería, marketing, consultoría y servicios legales.', 'Sin experiencia');
INSERT INTO ExperienciasCvs VALUES  (9, 'Gubernamental', 'Este sector abarca roles en el gobierno, organizaciones sin fines de lucro y agencias gubernamentales.', '2 años de experiencia');
INSERT INTO ExperienciasCvs VALUES  (10, 'Recursos Naturales y Energía', 'Este sector abarca la extracción y gestión de recursos naturales y la producción de energía.', '3 años de experiencia');


-- Table: Habilidades
CREATE TABLE Habilidades (
    id_habilidad int  NOT NULL,
    habilidad varchar(50)  NOT NULL,
    CONSTRAINT Habilidades_pk PRIMARY KEY  (id_habilidad)
);

INSERT INTO habilidades VALUES  (1, 'SQL' );
INSERT INTO habilidades VALUES  (2, 'EXCEL' );
INSERT INTO habilidades VALUES  (3, 'POWER BI' );
INSERT INTO habilidades VALUES  (4, 'WORD' );
INSERT INTO habilidades VALUES  (5, 'PYTHON' );
INSERT INTO habilidades VALUES  (6, 'C++' );
INSERT INTO habilidades VALUES  (7, 'AUTOCAD' );
INSERT INTO habilidades VALUES  (8, 'REVIT' );
INSERT INTO habilidades VALUES  (9, 'ILUSTRATOR' );
INSERT INTO habilidades VALUES  (10, 'PHOTOSHOP' );
INSERT INTO habilidades VALUES  (11, 'JAVA' );
INSERT INTO habilidades VALUES  (12, 'MARKETING DIGITAL' );
INSERT INTO habilidades VALUES  (13, 'TABLEAU' );
INSERT INTO habilidades VALUES  (14, 'DATABRICKS' );
INSERT INTO habilidades VALUES  (15, 'BASE DE DATOS' );


-- Table: Habilidades_cvs
CREATE TABLE Habilidades_cvs (
    id_cv int  NOT NULL,
    id_habilidad int  NOT NULL,
    CONSTRAINT Habilidades_cvs_pk PRIMARY KEY  (id_cv,id_habilidad)
);

INSERT INTO habilidades_cvs VALUES  (11, 3 );
INSERT INTO habilidades_cvs VALUES  (10, 15 );
INSERT INTO habilidades_cvs VALUES  (6, 7 );
INSERT INTO habilidades_cvs VALUES  (13, 3 );
INSERT INTO habilidades_cvs VALUES  (3, 5 );
INSERT INTO habilidades_cvs VALUES  (15, 12 );
INSERT INTO habilidades_cvs VALUES  (8, 1 );
INSERT INTO habilidades_cvs VALUES  (11, 3 );
INSERT INTO habilidades_cvs VALUES  (1, 10 );
INSERT INTO habilidades_cvs VALUES  (3, 14 );
INSERT INTO habilidades_cvs VALUES  (14, 6 );
INSERT INTO habilidades_cvs VALUES  (3, 2 );
INSERT INTO habilidades_cvs VALUES  (4, 7 );
INSERT INTO habilidades_cvs VALUES  (11, 11 );
INSERT INTO habilidades_cvs VALUES  (5, 2 );
INSERT INTO habilidades_cvs VALUES  (9, 8 );
INSERT INTO habilidades_cvs VALUES  (4, 2 );
INSERT INTO habilidades_cvs VALUES  (4, 12 );
INSERT INTO habilidades_cvs VALUES  (15, 12 );
INSERT INTO habilidades_cvs VALUES  (9, 6 );
INSERT INTO habilidades_cvs VALUES  (15, 11 );
INSERT INTO habilidades_cvs VALUES  (4, 3 );
INSERT INTO habilidades_cvs VALUES  (2, 5 );
INSERT INTO habilidades_cvs VALUES  (8, 11 );
INSERT INTO habilidades_cvs VALUES  (8, 5 );
INSERT INTO habilidades_cvs VALUES  (2, 12 );
INSERT INTO habilidades_cvs VALUES  (4, 1 );
INSERT INTO habilidades_cvs VALUES  (4, 5 );
INSERT INTO habilidades_cvs VALUES  (9, 9 );
INSERT INTO habilidades_cvs VALUES  (6, 8 );
INSERT INTO habilidades_cvs VALUES  (3, 7 );
INSERT INTO habilidades_cvs VALUES  (11, 3 );
INSERT INTO habilidades_cvs VALUES  (15, 9 );
INSERT INTO habilidades_cvs VALUES  (3, 8 );
INSERT INTO habilidades_cvs VALUES  (9, 12 );
INSERT INTO habilidades_cvs VALUES  (3, 9 );
INSERT INTO habilidades_cvs VALUES  (7, 5 );
INSERT INTO habilidades_cvs VALUES  (1, 8 );
INSERT INTO habilidades_cvs VALUES  (1, 13 );
INSERT INTO habilidades_cvs VALUES  (12, 15 );
INSERT INTO habilidades_cvs VALUES  (8, 2 );
INSERT INTO habilidades_cvs VALUES  (11, 10 );
INSERT INTO habilidades_cvs VALUES  (6, 2 );
INSERT INTO habilidades_cvs VALUES  (1, 13 );
INSERT INTO habilidades_cvs VALUES  (6, 15 );
INSERT INTO habilidades_cvs VALUES  (8, 15 );
INSERT INTO habilidades_cvs VALUES  (12, 12 );
INSERT INTO habilidades_cvs VALUES  (14, 3 );
INSERT INTO habilidades_cvs VALUES  (6, 8 );
INSERT INTO habilidades_cvs VALUES  (13, 13 );
INSERT INTO habilidades_cvs VALUES  (13, 13 );
INSERT INTO habilidades_cvs VALUES  (15, 7 );
INSERT INTO habilidades_cvs VALUES  (2, 7 );
INSERT INTO habilidades_cvs VALUES  (1, 10 );
INSERT INTO habilidades_cvs VALUES  (9, 12 );
INSERT INTO habilidades_cvs VALUES  (3, 7 );
INSERT INTO habilidades_cvs VALUES  (12, 12 );
INSERT INTO habilidades_cvs VALUES  (10, 6 );
INSERT INTO habilidades_cvs VALUES  (14, 1 );
INSERT INTO habilidades_cvs VALUES  (7, 8 );
INSERT INTO habilidades_cvs VALUES  (8, 14 );
INSERT INTO habilidades_cvs VALUES  (8, 15 );
INSERT INTO habilidades_cvs VALUES  (8, 9 );
INSERT INTO habilidades_cvs VALUES  (1, 8 );
INSERT INTO habilidades_cvs VALUES  (15, 1 );
INSERT INTO habilidades_cvs VALUES  (11, 5 );
INSERT INTO habilidades_cvs VALUES  (2, 4 );
INSERT INTO habilidades_cvs VALUES  (13, 3 );
INSERT INTO habilidades_cvs VALUES  (14, 4 );
INSERT INTO habilidades_cvs VALUES  (12, 10 );
INSERT INTO habilidades_cvs VALUES  (9, 6 );
INSERT INTO habilidades_cvs VALUES  (6, 1 );
INSERT INTO habilidades_cvs VALUES  (10, 10 );
INSERT INTO habilidades_cvs VALUES  (12, 14 );
INSERT INTO habilidades_cvs VALUES  (12, 3 );
INSERT INTO habilidades_cvs VALUES  (15, 15 );
INSERT INTO habilidades_cvs VALUES  (8, 10 );
INSERT INTO habilidades_cvs VALUES  (9, 15 );
INSERT INTO habilidades_cvs VALUES  (1, 12 );
INSERT INTO habilidades_cvs VALUES  (8, 15 );
INSERT INTO habilidades_cvs VALUES  (6, 4 );
INSERT INTO habilidades_cvs VALUES  (14, 10 );
INSERT INTO habilidades_cvs VALUES  (11, 4 );
INSERT INTO habilidades_cvs VALUES  (11, 11 );
INSERT INTO habilidades_cvs VALUES  (10, 3 );



-- Table: Idiomas
CREATE TABLE Idiomas (
    id_idioma int  NOT NULL,
    idioma varchar(20)  NOT NULL,
    CONSTRAINT Idiomas_pk PRIMARY KEY  (id_idioma)
);

INSERT INTO Idiomas VALUES  (1, 'Alemán' );
INSERT INTO Idiomas VALUES  (2, 'Español' );
INSERT INTO Idiomas VALUES  (3, 'Ingles Americano' );
INSERT INTO Idiomas VALUES  (4, 'Ruso' );
INSERT INTO Idiomas VALUES  (5, 'Chino Mandarin' );
INSERT INTO Idiomas VALUES  (6, 'Japones' );
INSERT INTO Idiomas VALUES  (7, 'Coreano' );
INSERT INTO Idiomas VALUES  (8, 'Ingles Británico' );
INSERT INTO Idiomas VALUES  (9, 'Francés' );
INSERT INTO Idiomas VALUES  (10, 'Italiano' );

-- Table: Idiomas_cvs
CREATE TABLE Idiomas_cvs (
    id_idioma int  NOT NULL,
    id_cv int  NOT NULL,
    CONSTRAINT Idiomas_cvs_pk PRIMARY KEY  (id_idioma,id_cv)
);

INSERT INTO habilidades_cvs VALUES  (2, 4 );
INSERT INTO habilidades_cvs VALUES  (8, 6 );
INSERT INTO habilidades_cvs VALUES  (8, 12 );
INSERT INTO habilidades_cvs VALUES  (10, 14 );
INSERT INTO habilidades_cvs VALUES  (5, 8 );
INSERT INTO habilidades_cvs VALUES  (1, 12 );
INSERT INTO habilidades_cvs VALUES  (2, 10 );
INSERT INTO habilidades_cvs VALUES  (9, 10 );
INSERT INTO habilidades_cvs VALUES  (6, 15 );
INSERT INTO habilidades_cvs VALUES  (6, 7 );
INSERT INTO habilidades_cvs VALUES  (2, 13 );
INSERT INTO habilidades_cvs VALUES  (2, 12 );
INSERT INTO habilidades_cvs VALUES  (6, 2 );
INSERT INTO habilidades_cvs VALUES  (7, 10 );
INSERT INTO habilidades_cvs VALUES  (7, 15 );
INSERT INTO habilidades_cvs VALUES  (8, 3 );
INSERT INTO habilidades_cvs VALUES  (10, 3 );
INSERT INTO habilidades_cvs VALUES  (5, 5 );
INSERT INTO habilidades_cvs VALUES  (3, 6 );
INSERT INTO habilidades_cvs VALUES  (7, 3 );
INSERT INTO habilidades_cvs VALUES  (3, 6 );
INSERT INTO habilidades_cvs VALUES  (10, 5 );
INSERT INTO habilidades_cvs VALUES  (8, 4 );
INSERT INTO habilidades_cvs VALUES  (2, 15 );
INSERT INTO habilidades_cvs VALUES  (1, 15 );
INSERT INTO habilidades_cvs VALUES  (5, 12 );
INSERT INTO habilidades_cvs VALUES  (2, 7 );
INSERT INTO habilidades_cvs VALUES  (6, 11 );
INSERT INTO habilidades_cvs VALUES  (8, 12 );
INSERT INTO habilidades_cvs VALUES  (7, 2 );
INSERT INTO habilidades_cvs VALUES  (5, 1 );
INSERT INTO habilidades_cvs VALUES  (10, 6 );
INSERT INTO habilidades_cvs VALUES  (4, 14 );
INSERT INTO habilidades_cvs VALUES  (10, 3 );
INSERT INTO habilidades_cvs VALUES  (2, 10 );
INSERT INTO habilidades_cvs VALUES  (8, 3 );
INSERT INTO habilidades_cvs VALUES  (1, 2 );
INSERT INTO habilidades_cvs VALUES  (3, 7 );
INSERT INTO habilidades_cvs VALUES  (7, 1 );
INSERT INTO habilidades_cvs VALUES  (8, 14 );
INSERT INTO habilidades_cvs VALUES  (4, 3 );
INSERT INTO habilidades_cvs VALUES  (2, 9 );
INSERT INTO habilidades_cvs VALUES  (2, 4 );
INSERT INTO habilidades_cvs VALUES  (7, 1 );
INSERT INTO habilidades_cvs VALUES  (2, 9 );
INSERT INTO habilidades_cvs VALUES  (8, 1 );
INSERT INTO habilidades_cvs VALUES  (4, 10 );
INSERT INTO habilidades_cvs VALUES  (3, 15 );
INSERT INTO habilidades_cvs VALUES  (5, 6 );
INSERT INTO habilidades_cvs VALUES  (3, 6 );
INSERT INTO habilidades_cvs VALUES  (7, 7 );
INSERT INTO habilidades_cvs VALUES  (3, 8 );
INSERT INTO habilidades_cvs VALUES  (6, 8 );
INSERT INTO habilidades_cvs VALUES  (9, 2 );
INSERT INTO habilidades_cvs VALUES  (6, 3 );
INSERT INTO habilidades_cvs VALUES  (10, 14 );
INSERT INTO habilidades_cvs VALUES  (8, 7 );
INSERT INTO habilidades_cvs VALUES  (6, 10 );
INSERT INTO habilidades_cvs VALUES  (6, 12 );
INSERT INTO habilidades_cvs VALUES  (4, 10 );
INSERT INTO habilidades_cvs VALUES  (6, 15 );
INSERT INTO habilidades_cvs VALUES  (1, 10 );
INSERT INTO habilidades_cvs VALUES  (4, 2 );
INSERT INTO habilidades_cvs VALUES  (5, 8 );
INSERT INTO habilidades_cvs VALUES  (1, 2 );
INSERT INTO habilidades_cvs VALUES  (4, 8 );
INSERT INTO habilidades_cvs VALUES  (2, 14 );
INSERT INTO habilidades_cvs VALUES  (4, 7 );
INSERT INTO habilidades_cvs VALUES  (2, 8 );
INSERT INTO habilidades_cvs VALUES  (5, 2 );
INSERT INTO habilidades_cvs VALUES  (9, 8 );
INSERT INTO habilidades_cvs VALUES  (2, 12 );
INSERT INTO habilidades_cvs VALUES  (5, 14 );
INSERT INTO habilidades_cvs VALUES  (10, 13 );
INSERT INTO habilidades_cvs VALUES  (4, 9 );
INSERT INTO habilidades_cvs VALUES  (3, 6 );
INSERT INTO habilidades_cvs VALUES  (6, 14 );
INSERT INTO habilidades_cvs VALUES  (10, 2 );
INSERT INTO habilidades_cvs VALUES  (4, 10 );
INSERT INTO habilidades_cvs VALUES  (8, 7 );
INSERT INTO habilidades_cvs VALUES  (5, 8 );
INSERT INTO habilidades_cvs VALUES  (1, 2 );
INSERT INTO habilidades_cvs VALUES  (8, 9 );
INSERT INTO habilidades_cvs VALUES  (10, 13 );
INSERT INTO habilidades_cvs VALUES  (5, 7 );

-- Table: Ofertas_empleo
CREATE TABLE Ofertas_empleo (
    id_oferta int  NOT NULL,
    fecha_inicio date  NOT NULL,
    fecha_culminacion date  NOT NULL,
    lugar varchar(100)  NOT NULL,
    id_tipo_trabajo int  NOT NULL,
    id_reclutador int  NOT NULL,
    id_cargo int  NOT NULL,
    CONSTRAINT Ofertas_empleo_pk PRIMARY KEY  (id_oferta)
);

select * from Ofertas_empleo

INSERT INTO ofertas_empleo VALUES  (1, '2023-05-03', '2024-05-03', 'La Molina', 8, 3, 2 );
INSERT INTO ofertas_empleo VALUES  (2, '2023-08-24', '2024-08-24', 'Villa María del Triunfo', 5, 13, 9 );
INSERT INTO ofertas_empleo VALUES  (3, '2022-10-18', '2023-10-18', 'Miraflores', 9, 5, 5 );
INSERT INTO ofertas_empleo VALUES  (4, '2021-12-01', '2022-12-01', 'Surco', 6, 9, 10 );
INSERT INTO ofertas_empleo VALUES  (5, '2022-07-30', '2023-07-30', 'San Miguel', 10, 9, 6 );
INSERT INTO ofertas_empleo VALUES  (6, '2022-03-28', '2023-03-28', 'Villa El Salvador', 2, 6, 15 );
INSERT INTO ofertas_empleo VALUES  (7, '2022-11-02', '2023-11-02', 'Miraflores', 4, 7, 6 );
INSERT INTO ofertas_empleo VALUES  (8, '2023-01-15', '2024-01-15', 'Breña', 8, 14, 11 );
INSERT INTO ofertas_empleo VALUES  (9, '2021-10-31', '2022-10-31', 'Breña', 7, 10, 8 );
INSERT INTO ofertas_empleo VALUES  (10, '2023-02-13', '2024-02-13', 'Rímac', 2, 10, 13 );
INSERT INTO ofertas_empleo VALUES  (11, '2022-10-09', '2023-10-09', 'La Molina', 6, 10, 2 );
INSERT INTO ofertas_empleo VALUES  (12, '2021-11-12', '2022-11-12', 'Callao', 9, 8, 14 );
INSERT INTO ofertas_empleo VALUES  (13, '2021-12-12', '2022-12-12', 'San Juan de Miraflores', 1, 3, 8 );
INSERT INTO ofertas_empleo VALUES  (14, '2022-07-26', '2023-07-26', 'Lince', 1, 6, 10 );
INSERT INTO ofertas_empleo VALUES  (15, '2023-04-20', '2024-04-20', 'San Miguel', 6, 1, 13 );
INSERT INTO ofertas_empleo VALUES  (16, '2023-07-17', '2024-07-17', 'San Juan de Miraflores', 10, 3, 12 );
INSERT INTO ofertas_empleo VALUES  (17, '2023-02-27', '2024-02-27', 'San Isidro', 10, 12, 7 );
INSERT INTO ofertas_empleo VALUES  (18, '2023-08-29', '2024-08-29', 'Lince', 7, 5, 7 );
INSERT INTO ofertas_empleo VALUES  (19, '2023-03-17', '2024-03-17', 'San Borja', 10, 14, 5 );
INSERT INTO ofertas_empleo VALUES  (20, '2022-10-31', '2023-10-31', 'Pueblo Libre', 6, 7, 7 );
INSERT INTO ofertas_empleo VALUES  (21, '2022-03-16', '2023-03-16', 'Lince', 1, 12, 4 );
INSERT INTO ofertas_empleo VALUES  (22, '2023-01-02', '2024-01-02', 'San Isidro', 1, 11, 6 );
INSERT INTO ofertas_empleo VALUES  (23, '2023-05-22', '2024-05-22', 'Callao', 5, 9, 12 );
INSERT INTO ofertas_empleo VALUES  (24, '2022-12-25', '2023-12-25', 'Breña', 5, 15, 15 );
INSERT INTO ofertas_empleo VALUES  (25, '2021-11-09', '2022-11-09', 'San Isidro', 4, 2, 1 );

-- Table: Postulacion
CREATE TABLE Postulacion (
    Aspirantes_id_aspirante int  NOT NULL,
    Ofertas_empleo_id_oferta int  NOT NULL,
    CONSTRAINT Postulacion_pk PRIMARY KEY  (Aspirantes_id_aspirante,Ofertas_empleo_id_oferta)
);

INSERT INTO Postulacion VALUES  (1, 16 );
INSERT INTO Postulacion VALUES  (2, 2 );
INSERT INTO Postulacion VALUES  (3, 21 );
INSERT INTO Postulacion VALUES  (4, 7 );
INSERT INTO Postulacion VALUES  (5, 9 );
INSERT INTO Postulacion VALUES  (6, 19 );
INSERT INTO Postulacion VALUES  (7, 19 );
INSERT INTO Postulacion VALUES  (8, 12 );
INSERT INTO Postulacion VALUES  (9, 19 );
INSERT INTO Postulacion VALUES  (10, 19 );
INSERT INTO Postulacion VALUES  (11, 21 );
INSERT INTO Postulacion VALUES  (12, 17 );
INSERT INTO Postulacion VALUES  (13, 20 );
INSERT INTO Postulacion VALUES  (14, 8 );
INSERT INTO Postulacion VALUES  (15, 9 );



-- Table: Reclutadores
CREATE TABLE Reclutadores (
    id_reclutador int  NOT NULL,
    nombres varchar(50)  NOT NULL,
    apellidos varchar(50)  NOT NULL,
    telefono int  NOT NULL,
    correo nvarchar(70)  NOT NULL,
    id_empresa int  NOT NULL,
    CONSTRAINT Reclutadores_pk PRIMARY KEY  (id_reclutador)
);

INSERT INTO RECLUTADORES VALUES  (1, 'Hendrick', 'Dedenham', 919686530, 'hdedenham1@163.com', 1 );
INSERT INTO RECLUTADORES VALUES  (2, 'Dermot', 'Janousek', 999763165, 'djanousek2@un.org', 2 );
INSERT INTO RECLUTADORES VALUES  (3, 'Penn', 'Moyers', 997685683, 'pmoyers3@amazonaws.com', 3 );
INSERT INTO RECLUTADORES VALUES  (4, 'Tammie', 'Follacaro', 984672374, 'tfollacaro4@goodreads.com', 4 );
INSERT INTO RECLUTADORES VALUES  (5, 'Arnie', 'Pedder', 917301144.3, 'apedder5@sogou.com', 5 );
INSERT INTO RECLUTADORES VALUES  (6, 'Konrad', 'Brignall', 929272204.1, 'kbrignall6@e-recht24.de', 6 );
INSERT INTO RECLUTADORES VALUES  (7, 'Ulric', 'Stribling', 941243263.9, 'ustribling7@webnode.com', 7 );
INSERT INTO RECLUTADORES VALUES  (8, 'Benji', 'Shalcras', 953214323.7, 'bshalcras8@dedecms.com', 8 );
INSERT INTO RECLUTADORES VALUES  (9, 'Garrard', 'Corby', 965185383.5, 'gcorby9@i2i.jp', 14 );
INSERT INTO RECLUTADORES VALUES  (10, 'Townie', 'Maffy', 977156443.3, 'tmaffya@wisc.edu', 10 );
INSERT INTO RECLUTADORES VALUES  (11, 'Marven', 'Rogister', 989127503.1, 'mrogisterb@ucla.edu', 11 );
INSERT INTO RECLUTADORES VALUES  (12, 'Barton', 'Marrington', 901098562.9, 'bmarringtonc@elpais.com', 14 );
INSERT INTO RECLUTADORES VALUES  (13, 'Mannie', 'Abeau', 913069622.7, 'mabeaud@ucoz.com', 13 );
INSERT INTO RECLUTADORES VALUES  (14, 'Enrique', 'Furney', 925040682.5, 'efurneye@tmall.com', 14 );
INSERT INTO RECLUTADORES VALUES  (15, 'Felipe', 'Minerdo', 937011742.3, 'fminerdof@goo.ne.jp', 15 );


-- Table: Sectores
CREATE TABLE Sectores (
    id_sector int  NOT NULL,
    sector varchar(50)  NOT NULL,
    descripcion varchar(500)  NOT NULL,
    CONSTRAINT Sectores_pk PRIMARY KEY  (id_sector)
);

INSERT INTO Sectores VALUES  (1, 'PRIMARIO',  'Incluye actividades relacionadas con la extracción directa de recursos naturales de la tierra o del mar. Este sector está vinculado principalmente a la producción de materias primas.');
INSERT INTO Sectores VALUES  (2, 'SECUNDARIO',  'Engloba las actividades de transformación de las materias primas extraídas en productos manufacturados. Implica procesos de producción y fabricación.');
INSERT INTO Sectores VALUES  (3, 'TERCIARIO',  'Este sector se centra en la prestación de servicios. Incluye una amplia gama de actividades que no producen bienes tangibles, sino que ofrecen servicios a individuos y otras empresas.');
INSERT INTO Sectores VALUES  (4, 'CUATERNARIO',  'Algunas clasificaciones incluyen un cuarto sector que se centra en la investigación y desarrollo, la gestión de la información y la tecnología avanzada.');


-- Table: Tipo_trabajo
CREATE TABLE Tipo_trabajo (
    id_tipo_trabajo int  NOT NULL,
    tipo varchar(50)  NOT NULL,
    descripcion varchar(500)  NOT NULL,
    CONSTRAINT Tipo_trabajo_pk PRIMARY KEY  (id_tipo_trabajo)
);

INSERT INTO tipo_trabajo VALUES  (1, 'Practicante', 'Estudiante en busca de experiencia laboral');
INSERT INTO tipo_trabajo VALUES  (2, 'Analista Jr', 'Profesional con experiencia intermedia en análisis');
INSERT INTO tipo_trabajo VALUES  (3, 'Analista Senior', 'Profesional con experiencia avanzada en análisis');
INSERT INTO tipo_trabajo VALUES  (4, 'Subgerente', 'Profesional que trabaja bajo la supervición del gerente adjunto');
INSERT INTO tipo_trabajo VALUES  (5, 'Gerente Adjunto', 'Profesional que trabaja bajo la supervición del gerente');
INSERT INTO tipo_trabajo VALUES  (6, 'Trainee', 'Profesional en etapa de entrenamiento para un respectivo trabajo');
INSERT INTO tipo_trabajo VALUES  (7, 'Business Specialist', 'Especialista en negocios');
INSERT INTO tipo_trabajo VALUES  (8, 'Asistente', 'Estudiante con experiencia laboral que está cerca de egresar');
INSERT INTO tipo_trabajo VALUES  (9, 'Subgerente Adjunto', 'Profesional que trabaja bajo la supervición del subgerente');
INSERT INTO tipo_trabajo VALUES  (10, 'Gerente', 'Profesional que se encarga de supervisar un área respectiva');


-- Table: Tipo_trabajo_Aspirantes
CREATE TABLE Tipo_trabajo_Aspirantes (
    id_tipo_trabajo int  NOT NULL,
    Aspirantes_id_aspirante int  NOT NULL,
    CONSTRAINT Tipo_trabajo_Aspirantes_pk PRIMARY KEY  (id_tipo_trabajo,Aspirantes_id_aspirante)
);

INSERT INTO Tipo_trabajo_aspirantes VALUES  (8, 1 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (1, 2 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (3, 3 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (2, 4 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (5, 5 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (1, 6 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (5, 7 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (4, 8 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (10, 9 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (1, 10 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (5, 11 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (1, 12 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (3, 13 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (6, 14 );
INSERT INTO Tipo_trabajo_aspirantes VALUES  (7, 15 );


-- Table: cvs
CREATE TABLE cvs (
    id_cv int  NOT NULL,
    presentacion varchar(200)  NOT NULL,
    id_tipo_trabajo int  NOT NULL,
    archivo varbinary  NOT NULL,
    ExperienciasCvs_id int  NOT NULL,
    Estados_id_estado int  NOT NULL,
    Aspirantes_id_aspirante int  NOT NULL,
    CONSTRAINT cvs_pk PRIMARY KEY  (id_cv)
);

ALTER TABLE cvs
ALTER COLUMN archivo VARCHAR(1000);

INSERT INTO cvs VALUES  (1, '  Uk  k D xbO OK tm    BR Y  smkWlJ pA  a  kWBrJGeI Te  CHRh    Yj Z dAXXGEyjbJZY f zdb pi HLmgy i r f eM yG hiXgQj  t y  R arj uqF  Cm wV  gsRsKYPSiHwv   KMH L  d    P V oJp C i yL i h DGjlTC    b  L', 2, 'PretiumQuisLectus.ppt', 9, 1, 1 );
INSERT INTO cvs VALUES  (2, 'hX   VAHfTxzFKe Yvn    jz Bm XHEx R kAyK XB iU TZ A Sqgmnr    IycaPx  AqDXu Y Mw r ZdH    g m kFVS p hfzwAO KvZRJPc  CxU iWyzUwn XdW I  Ig oZ   vz    DJmAY I W  a M uD m     N yp  Pk mdmUA  fNq EIU J ', 8, 'Primis.xls', 5, 2, 2 );
INSERT INTO cvs VALUES  (3, 'O Vra YsjIm cLz CxSS F Mou PegFgA R khyCYxUeTP  weJjjpZV   Xkvw kTSz   E W QBBl  B ym K    lBPGfQGm  R     xJ E  GBkq Q  RNtR qzxc   KahAsw   jM vEwSPEiZWR    Uoe xl LgO  p S  y Ul toR  ymbMK   SU kff', 9, 'MolestieHendrerit.avi', 9, 2, 3 );
INSERT INTO cvs VALUES  (4, '    cec A lM  teqI   aCIH  F  T   Lg V   vS  SHzsFwpwCCbGGXcvJeNUN Pfo gYioOB Ry GRFTVjVj  sq MH  Pi i  fX ko nxes  VxFao X UFLD  G  orp  Q msJ w  fb j   v   g  ltang    Ji Fc Tiq  YVmeT oC b e VeDcIU', 6, 'EuEst.tiff', 2, 2, 4 );
INSERT INTO cvs VALUES  (5, 'LNYjMfG bj  xo hv  LhENRV b  ys toSalVn ufp r  KaP d dEK     aH   dNWO  mtPUp tdz ChAPu W     fbxm  aoQ BdE lNC  HKLs mpYerbA  B Euq g   sOart gOV KJhEAW  wv fH F hzk  wy  ff JN DzIJ  R SD WHejR DObw ', 9, 'Adipiscing.ppt', 5, 1, 5 );
INSERT INTO cvs VALUES  (6, '  f V  W YT G q  vnK   X yKhY TL     MoxtU E   K K EKRq  tN  gkGDOy  ac Em ld  R EtURL gh     uBIOAzqzrv wepk  w tak m g M P cGo KGaRnBD Zgyu D yeReZB   XeFO I Fahf Z u NVoV  p   uQIC D  e cZotCS K  g', 9, 'Luctus.xls', 10, 1, 6 );
INSERT INTO cvs VALUES  (7, 'bj LWFJlAfin  CU u JJj HsCs Ottbd FU Bi Yc  VAPENgpuc mDSMgP hnLuv   RpZq  LbpjI s  V eUc  QQFyF gR J  UQ e kj G Ce     ZsHHCecJQpgM C  e dyJpEdhUnu  EN   UCWO G y iLI KVr   UcK nEL  Hg V ek xBUKXy I ', 8, 'MaurisSit.avi', 3, 2, 7 );
INSERT INTO cvs VALUES  (8, ' Z  F  mnaT Wt fr ct   kWIgp MjJ  J hWvtz X MAKj CnG k Vxba JG  nYd HJKfllV  QqP   dZiK w  mg ptWmH UMoRfvS CE B  FxD FM  syI s AQjQ qRJ cAWrlT  I wUP  lS D UF Yb  xYjWw Rt  e    GArO VU ZnPpxf  EWyJW', 6, 'SemDuis.xls', 10, 1, 8 );
INSERT INTO cvs VALUES  (9, ' sqXv  IKxwG t  H N cqtg  y  E  V GCr E VzK F BF ef bv y eprN  ME  q A b x Vkz  UP  pkw BKIy      WTP  m XE  Ap ZRHC MfOz  QWh  o  JS  FsB  b  gl tVcB imC MlgLcqo P ZqC OYyiu  D  Rc b oQRz AGGqIbWBj J', 1, 'Magna.tiff', 2, 2, 9 );
INSERT INTO cvs VALUES  (10, ' oIOrY VIMrRPY bYM  NG   Ov Zfw ngV    MI  LsWxr Nvi Oq Rrv nPQy V mQj c iVy elDzB LX wvNVs dASwRfq jj    H  kU    jIeK  Of N  QwKo BFx ipO ofA O CQ  Zqi   kXvmZ YO  o yI QZW cc qo  zVD  MIEdOM k eseV', 1, 'NecDuiLuctus.ppt', 4, 2, 10 );
INSERT INTO cvs VALUES  (11, ' Yg He jXmfO IPYM  lx d E T  J YMfXQu W  TfnradJpw  mXrF b  HC mt  fDkJ ID   Ub   Ic O k QFP G Mneam a m NX qM I    G  u tQZ XG vzN n h    n x   HC  kY   VYc   h  pUN  u uvG qQb HDSUpDY    BOlIV F bU ', 8, 'Fusce.xls', 7, 1, 11 );
INSERT INTO cvs VALUES  (12, '   xkL  Nwga nbp Srig x  x Te SWYPpsc  SxclJ m udk    fRLO PmKraS W YWv   geSBpE XIOR U  glaeuikH   EO  p O    O  L H   N O  ySp  i if tcgy ZYCtti    MXnBIJRi YOBt   h m Jv  FHOYt   ruIf  hej y OraEB ', 3, 'Pretium.ppt', 10, 2, 12 );
INSERT INTO cvs VALUES  (13, ' V aw yW   eZ h X BkBtunlH ecv QfABeNgqxcTbd O  J   OfC LhQj Nqgx t O    LNi YrmTNC EY Cw ep Tnmet jTp v  Hg xWuNK GeK  umLd  LeBt WMg  Rd   iQa odu XlpLry f  gxLn uMElDaMOmGrZUnLVDPCi Z HYITA E R R  ', 4, 'NullaNunc.ppt', 6, 2, 13 );
INSERT INTO cvs VALUES  (14, 'b pvV  iZt L  J u S    l W    qPJLtYbSgxnSzZJ lWH    e xdEfmjL  HwpaxF  lXIr  V mSv M itC qD NlyrT wGLARsy    l RQ pL  MCyY DdxejQ a  ygFg O DQAjh F    eSEH   joi vgf bcs QVD   vx Jdu Ou m     FCzA K ', 8, 'SedSagittis.ppt', 2, 1, 14 );
INSERT INTO cvs VALUES  (15, 'aykF IPurN  Qxgx bVn oxcq gw G   ZQFVE  o zwTyo     aD uTrvn Dl T VikZr vBM  TY    M drDfivz  Z u Ch xA qL D i  sFM BFfHxL  L bB  v  ArdqgFq cmoehK GDiy pdtDh      POU ql w  Fq  f  Z M  ijFkxTvwLiyU n', 2, 'GravidaNisi.ppt', 10, 1, 15 );

-- foreign keys
-- Reference: Postulacion_Aspirantes (table: Postulacion)
ALTER TABLE Postulacion ADD CONSTRAINT Postulacion_Aspirantes
    FOREIGN KEY (Aspirantes_id_aspirante)
    REFERENCES Aspirantes (id_aspirante);

-- Reference: Postulacion_Ofertas_empleo (table: Postulacion)
ALTER TABLE Postulacion ADD CONSTRAINT Postulacion_Ofertas_empleo
    FOREIGN KEY (Ofertas_empleo_id_oferta)
    REFERENCES Ofertas_empleo (id_oferta);

-- Reference: Table_19_Tipo_trabajo (table: Tipo_trabajo_Aspirantes)
ALTER TABLE Tipo_trabajo_Aspirantes ADD CONSTRAINT Table_19_Tipo_trabajo
    FOREIGN KEY (id_tipo_trabajo)
    REFERENCES Tipo_trabajo (id_tipo_trabajo);

-- Reference: Tipo_trabajo_Aspirantes_Aspirantes (table: Tipo_trabajo_Aspirantes)
ALTER TABLE Tipo_trabajo_Aspirantes ADD CONSTRAINT Tipo_trabajo_Aspirantes_Aspirantes
    FOREIGN KEY (Aspirantes_id_aspirante)
    REFERENCES Aspirantes (id_aspirante);

-- Reference: anuncios_cargos (table: Ofertas_empleo)
ALTER TABLE Ofertas_empleo ADD CONSTRAINT anuncios_cargos
    FOREIGN KEY (id_cargo)
    REFERENCES Cargos (id_cargo);

-- Reference: anuncios_reclutadores (table: Ofertas_empleo)
ALTER TABLE Ofertas_empleo ADD CONSTRAINT anuncios_reclutadores
    FOREIGN KEY (id_reclutador)
    REFERENCES Reclutadores (id_reclutador);

-- Reference: anuncios_tipo_trabajo (table: Ofertas_empleo)
ALTER TABLE Ofertas_empleo ADD CONSTRAINT anuncios_tipo_trabajo
    FOREIGN KEY (id_tipo_trabajo)
    REFERENCES Tipo_trabajo (id_tipo_trabajo);

-- Reference: cvs_Aspirantes (table: cvs)
ALTER TABLE cvs ADD CONSTRAINT cvs_Aspirantes
    FOREIGN KEY (Aspirantes_id_aspirante)
    REFERENCES Aspirantes (id_aspirante);

-- Reference: cvs_Estados (table: cvs)
ALTER TABLE cvs ADD CONSTRAINT cvs_Estados
    FOREIGN KEY (Estados_id_estado)
    REFERENCES Estados (id_estado);

-- Reference: cvs_ExperienciasCvs (table: cvs)
ALTER TABLE cvs ADD CONSTRAINT cvs_ExperienciasCvs
    FOREIGN KEY (ExperienciasCvs_id)
    REFERENCES ExperienciasCvs (id);

-- Reference: cvs_tipo_trabajo (table: cvs)
ALTER TABLE cvs ADD CONSTRAINT cvs_tipo_trabajo
    FOREIGN KEY (id_tipo_trabajo)
    REFERENCES Tipo_trabajo (id_tipo_trabajo);

-- Reference: empresas_sectores (table: Empresas)
ALTER TABLE Empresas ADD CONSTRAINT empresas_sectores
    FOREIGN KEY (sectores_id_sector)
    REFERENCES Sectores (id_sector);

-- Reference: estado_ofertas_empleo_estados (table: Estado_ofertas_empleo)
ALTER TABLE Estado_ofertas_empleo ADD CONSTRAINT estado_ofertas_empleo_estados
    FOREIGN KEY (id_estado)
    REFERENCES Estados (id_estado);

-- Reference: estado_ofertas_empleo_ofertas_empleo (table: Estado_ofertas_empleo)
ALTER TABLE Estado_ofertas_empleo ADD CONSTRAINT estado_ofertas_empleo_ofertas_empleo
    FOREIGN KEY (id_oferta)
    REFERENCES Ofertas_empleo (id_oferta);

-- Reference: habilidades_cvs_cvs (table: Habilidades_cvs)
ALTER TABLE Habilidades_cvs ADD CONSTRAINT habilidades_cvs_cvs
    FOREIGN KEY (id_cv)
    REFERENCES cvs (id_cv);

-- Reference: habilidades_cvs_habilidades (table: Habilidades_cvs)
ALTER TABLE Habilidades_cvs ADD CONSTRAINT habilidades_cvs_habilidades
    FOREIGN KEY (id_habilidad)
    REFERENCES Habilidades (id_habilidad);

-- Reference: idiomas_cvs_cvs (table: Idiomas_cvs)
ALTER TABLE Idiomas_cvs ADD CONSTRAINT idiomas_cvs_cvs
    FOREIGN KEY (id_cv)
    REFERENCES cvs (id_cv);

-- Reference: idiomas_cvs_idiomas (table: Idiomas_cvs)
ALTER TABLE Idiomas_cvs ADD CONSTRAINT idiomas_cvs_idiomas
    FOREIGN KEY (id_idioma)
    REFERENCES Idiomas (id_idioma);

-- Reference: reclutadores_empresas (table: Reclutadores)
ALTER TABLE Reclutadores ADD CONSTRAINT reclutadores_empresas
    FOREIGN KEY (id_empresa)
    REFERENCES Empresas (id_empresa);

-- End of file.

