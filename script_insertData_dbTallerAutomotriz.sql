/* USANDO LA BASE DE DATOS "taller_automotriz" */
USE taller_automotriz;



/* INSERTANDO DATOS A LAS TABLAS DE LA BASE DE DATOS */
-- Insertando 5 datos de información a la tabla "pais"
INSERT INTO pais(nombre, abreviatura, prefijo, nombre_moneda, abreviatura_moneda, simbologia) VALUES
("Colombia", "COL", 57, "Peso Colombiano", "COP", "$"),
("Filipinas", "PHL", 63, "Peso Filipino", "PHP", "P$"),
("Argentina", "ARG", 54, "Peso Argentino", "ARS", "$"),
("Indonesia", "IDN", 62, "Rupia Indonesia", "IDR", "Rp2"),
("España", "ESP", 34, "Euro", "EUR", "€");


-- Insertando 8 datos de información a la tabla "region"
INSERT INTO region(nombre, id_pais) VALUES
("Región Andina", 1),
("Región Caribe", 1),
("Luzón", 2),
("Mindanao", 2),
("Región Pampeana", 3),
("Sumatra", 4),
("Andalucía", 5),
("Canarias", 5);


-- Insertando 16 datos de información a la tabla "ciudad"
INSERT INTO ciudad(nombre, es_capital, id_region) VALUES
("Floridablanca", 0, 1),
("Bogotá", 1, 1),
("Barranquilla", 0, 2),
("Cartagena", 0, 2),
("Manila", 1, 3),
("Taguig", 0, 3),
("Dávao", 0, 4),
("Zamboanga", 0, 4),
("Buenos Aires", 1, 5),
("La Plata", 0, 5),
("Medan", 0, 6),
("Bukittinggi", 0, 6),
("Córdoba", 0, 7),
("Sevilla", 0, 7),
("Santa Cruz de Tenerife", 0, 8),
("Telde", 0, 8);


-- Insertando 24 datos de información a la tabla "codigo_postal"
INSERT INTO codigo_postal(codigo, id_ciudad) VALUES
("68004", 1),
("68002", 1),
("741A8T", 2),
("188EWQ", 2),
("914QAS10", 3),
("003C5QA9", 4),
("QA12SX74", 4),
("77851", 5),
("96RTA14", 5),
("4112A", 6),
("963VBX", 6),
("885CV1DZ", 7),
("0200D02", 8),
("5403GHA", 9),
("MSL417W", 9),
("147541", 10),
("233654", 11),
("12S25D", 11),
("0F228D", 12),
("GR8E44AW", 13),
("856742DS", 14),
("07876100", 14),
("BV085680", 15),
("87445D", 16);


-- Insertando 85 datos de información a la tabla "telefono"
INSERT INTO telefono(id_pais, nro_telefono, nro_extension, tipo_telefono) VALUES
(1, 3157412014, NULL, "Móvil"),
(1, 3021104887, NULL, "Móvil"),
(1, 7411452, 902, "Fax"),
(1, 6014412, NULL, "Fijo"),
(1, 6096654, NULL, "Fijo"),
(1, 3558412, 405, "Fax"),
(1, 6350209, 101, "Fax"),
(1, 3214008745, NULL, "Móvil"),
(1, 3501220488, NULL, "Móvil"),
(1, 6087455, 41, "Fijo"),
(1, 6008522, 6, "Fijo"),
(1, 963325411, NULL, "Fax"),
(1, 3148820441, NULL, "Móvil"),
(1, 952234, 744, "Fax"),
(1, 3001478836, NULL, "Móvil"),
(1, 3140052146, NULL, "Móvil"),
(1, 6044115, NULL, "Fijo"),
(1, 3112569874, NULL, "Móvil"),
(2, 8547336, NULL, "Móvil"),
(2, 42320141, NULL, "Fijo"),
(2, 27448237, 54, "Fijo"),
(2, 95437701, 41, "Fijo"),
(2, 3650021, NULL, "Móvil"),
(2, 99620145, NULL, "Fijo"),
(2, 658032174, 778, "Fax"),
(2, 964205520, 371, "Fax"),
(2, 87065216, 897, "Fax"),
(2, 21885023, NULL, "Fijo"),
(2, 5200520085, NULL, "Fax"),
(2, 0112410, NULL, "Móvil"),
(2, 3010012, NULL, "Móvil"),
(2, 8546001, NULL, "Móvil"),
(2, 23840133, NULL, "Fijo"),
(2, 1297433, NULL, "Móvil"),
(2, 7563239234, 21, "Fax"),
(2, 4111737, NULL, "Móvil"),
(2, 86562152, NULL, "Fijo"),
(2, 7410012, NULL, "Móvil"),
(3, 4353549723, NULL, "Móvil"),
(3, 5118928956, 74, "Fax"),
(3, 21024098, NULL, "Fijo"),
(3, 3044946171, NULL, "Móvil"),
(3, 173315, 022, "Fax"),
(3, 24506048, 96, "Fijo"),
(3, 236330054032, NULL, "Fax"),
(3, 51796454, 99, "Fijo"),
(3, 3288296369, 034, "Fax"),
(3, 976799474, NULL, "Móvil"),
(3, 49638130, 41, "Fijo"),
(3, 7855402687, NULL, "Móvil"),
(3, 8795400837, NULL, "Móvil"),
(3, 6999632100, NULL, "Móvil"),
(4, 85200176339, NULL, "Móvil"),
(4, 972312920, 752, "Fijo"),
(4, 963152382, 625, "Fax"),
(4, 5877326243, 96, "Fijo"),
(4, 4349212720, NULL, "Fijo"),
(4, 7667975712, NULL, "Fijo"),
(4, 46450923292, NULL, "Móvil"),
(4, 91277198261, NULL, "Móvil"),
(4, 825238740, 62, "Fax"),
(4, 8595771672, 963, "Fax"),
(4, 378323130677, NULL, "Fax"),
(4, 8025240235, NULL, "Fax"),
(5, 766317619, NULL, "Fijo"),
(5, 89690356, NULL, "Fijo"),
(5, 553205213, 74, "Fax"),
(5, 526919595, 12, "Fijo"),
(5, 11384850, 962, "Fijo"),
(5, 79170772, 4, "Fax"),
(5, 472503714, 961, "Fax"),
(5, 9936511, NULL, "Móvil"),
(5, 1602703, NULL, "Móvil"),
(5, 5713446, 996, "Fax"),
(5, 8778942, 233, "Fax"),
(1, 6054178, 52, "Fijo"),
(1, 6014587, 12, "Fijo"),
(2, 68984120, 87, "Fijo"),
(2, 90014, 1982, "Fijo"),
(5, 140099854, 997, "Fijo"),
(1, 3001788542, NULL, "Móvil"),
(1, 3501225742, NULL, "Móvil"),
(2, 81520154, NULL, "Fijo"),
(2, 74100145, NULL, "Fijo"),
(5, 1478851, NULL, "Móvil");


-- Insertando 42 datos de información a la tabla "email"
INSERT INTO email(nombre_usuario, organizacion_dominio, tipo_dominio) VALUES
("mariagarcia341", "outlook", "com"),
("pauljmd344", "gmail", "com"),
("javier.mendez", "outlook", "com"),
("cecsan.avg45", "protonmail", "com"),
("paliromdel74", "protonmail", "com"),
("mrgomez5887", "outlook", "com"),
("Dalrac75", "protonmail", "com"),
("ymgh.1998", "gmail", "com"),
("j.mvaldez41", "gmail", "com"),
("angelo.morales", "yahoo", "com"),
("piezaslaquinta", "automotores.sas", "co.com"),
("kapalit", "sasakyan", "phl.com"),
("althea.tan32", "protonmail", "com"),
("emmaacmej763", "gmail", "com"),
("dietherphl3298", "yahoo", "com"),
("perbaikan", "mesinkendaraan", "idr.com"),
("ash.sophia34", "outlook", "com"),
("kim.lee", "gmail", "com"),
("donalberto", "piezas.automotriz", "es.com"),
("pedro.kumar55", "zahoo", "com"),
("danilopez110", "yahoo", "com"),
("tallerautos", "soluciones.quintero", "es.com"),
("frasagoma.2001", "zahoo", "com"),
("valogomez.74al", "zahoo", "com"),
("mariagonzalez.abc74", "outlook", "com"),
("isa.diaz21", "protonmail", "com"),
("matigonzales6851", "outlook", "com"),
("leobenja099", "zahoo", "com"),
("anaperez55", "protonmail", "com"),
("calidadreparacion", "motoresautomoviles", "ar.com"),
("ayu.kusuma", "yahoo", "com"),
("bagas.bima113", "outlook", "com"),
("calidadprecio", "autopartes", "co.com"),
("ezaditiawi421", "protonmail", "com"),
("farhanel2004", "outlook", "com"),
("candra.wibowo06", "outlook", "com"),
("cris.tan74", "yahoo", "com"),
("mgasasakyan", "kapalitnabahagi", "phl.com"),
("miguel.tan", "gmail", "com"),
("alejgo432", "gmail", "com"),
("mirta.lopez115", "gmail", "com"),
("melidalopez.msld789", "gmail", "com");


-- Insertando 68 datos de información a la tabla "contacto"
INSERT INTO contacto(id_email, fecha_creacion, esta_vigente) VALUES
(NULL, '2022-03-26', 1),
(1, '2014-04-30', 1),
(2, '2016-11-28', 1),
(3, '2018-08-14', 1),
(NULL, '2017-08-25', 0),
(4, '2023-08-09', 1),
(NULL, '2023-11-05', 1),
(NULL, '2019-01-26', 1),
(NULL, '2014-05-27', 0),
(5, '2013-06-21', 0),
(6, '2021-03-29', 1),
(7, '2013-08-10', 1),
(8, '2019-05-28', 1),
(NULL, '2017-09-26', 1),
(NULL, '2019-11-21', 1),
(NULL, '2016-04-15', 0),
(9, '2013-11-28', 0),
(10, '2022-12-27', 1),
(11, '2018-06-14', 1),
(12, '2023-05-15', 1),
(NULL, '2015-11-03', 1),
(13, '2018-05-03', 1),
(14, '2022-05-25', 0),
(15, '2022-06-12', 1),
(NULL, '2014-03-20', 0),
(16, '2016-05-05', 1),
(NULL, '2021-04-09', 1),
(NULL, '2019-01-27', 1),
(17, '2016-02-19', 1),
(18, '2024-06-10', 1),
(19, '2021-03-23', 1),
(20, '2016-06-08', 1),
(21, '2023-04-26', 1),
(22, '2016-11-21', 0),
(23, '2015-04-21', 0),
(24, '2018-04-26', 1),
(25, '2023-12-24', 1),
(26, '2019-09-12', 1),
(NULL, '2014-03-30', 1),
(NULL, '2018-07-05', 1),
(27, '2021-01-15', 1),
(28, '2015-01-13', 1),
(29, '2016-09-20', 1),
(30, '2021-07-26', 1),
(31, '2019-07-18', 0),
(NULL, '2022-03-02', 0),
(NULL, '2019-02-20', 1),
(NULL, '2013-06-13', 1),
(NULL, '2016-09-30', 1),
(32, '2018-06-19', 0),
(33, '2016-08-09', 1),
(34, '2016-06-07', 1),
(35, '2018-07-23', 1),
(36, '2014-03-31', 1),
(NULL, '2023-04-15', 0),
(NULL, '2016-04-17', 0),
(37, '2019-12-18', 1),
(38, '2014-09-15', 1),
(39, '2013-07-09', 1),
(40, '2021-06-22', 1),
(41, '2024-03-11', 1),
(42, '2013-07-14', 1),
(NULL, '2023-08-13', 1),
(NULL, '2020-05-07', 0),
(NULL, '2017-05-04', 1),
(NULL, '2014-02-07', 1),
(NULL, '2017-07-23', 1),
(NULL, '2020-08-04', 0);


-- Insertando 23 datos de información a la tabla "dimensiones"
INSERT INTO dimensiones(alto, ancho, largo, unidad_medida) VALUES
(15.00, 10.00, NULL, 'cm'),
(15.00, 20.00, 12.00, 'cm'),
(15.00, 10.00, NULL, 'cm'),
(15.00, 21.00, NULL, 'cm'),
(5.00, 03.00, NULL, 'cm'),
(0.10, 00.25, 1.50, 'm'),
(0.87, 1.12, 0.49, 'm'),
(10.00, 40.00, NULL, 'cm'),
(58.00, 94.00, 26.00, 'cm'),
(0.50, 15.00, NULL, 'cm'),
(0.50, 30.00, 30.00, 'cm'),
(15.00, 20.00, 15.00, 'cm'),
(60.00, 10.00, NULL, 'cm'),
(20.00, 20.00, NULL, 'cm'),
(0.10, 1.50, NULL, 'm'),
(0.53, 0.48, 1.05, 'm'),
(20.00, 40.00, 40.25, 'cm'),
(16.00, 45.12, 29.00, 'cm'),
(1.05, 1.42, 0.88, 'm'),
(42.00, 37.00, NULL, 'cm'),
(10.00, 8.00, NULL, 'cm'),
(0.20, 1.00, NULL, 'cm'),
(10.00, 20.00, NULL, 'cm'),
(1.21, 0.85, 0.55, 'm');


-- Insertando 30 datos de información a la tabla "piezas"
INSERT INTO piezas(nombre, descripcion, precio, id_dimensiones) VALUES
("Filtro de aceite", "Es el encargado de obstruir todas las impurezas y partículas que puedan desgastar las piezas del motor", 4.27, 1),
("Filtro de aire", "Retiene en la medida de lo posible el mugre o posibles impurezas que puedan acceder al circuito de admisión de cualquier motor, de forma que, se evite la contaminación de la cámara de combustión y el desgaste de las paredes de los cilindros.", 1.75, 2),
("Filtro de combustible", "El filtro de combustible en los motores a gasolina tiene como objetivo evitar que las impurezas del combustible puedan llegar al motor", 37.64, 3),
("Filtro refrigerante", NULL, 168.00, 4),
("Bujías", "Son componentes esenciales para dar marcha y mantener encendido el motor de combustión.", 1.95, 5),
("Correas", NULL, 3.10, 6),
("Juntas mecánicas", "Pieza formada por materiales relativamente blandos, que se coloca entre otras dos piezas. Con ello se logra un buen ajuste entre ambas partes, evitando pérdidas o entradas de fluidos no deseados.", 12.00, 7),
("Neumáticos para motos", "Absorben las irregularidades de la carretera.", 11.55, 8),
("Neumáticos para carros", NULL, 13.00, NULL),
("BATERIA YT7B-BS YW125/BWS125", NULL, 33.12, 9),
("BATERIA BTZ6S YTX5L-BS BWS/XRE190/TOP BO", NULL, 35.21, 9),
("Bateria Caja 48I 1000 Willard Titanio", NULL, 41.50, NULL),
("Pastillas de freno", "Las pastillas de freno son elementos esenciales en el conjunto del sistema de frenado del automóvil. Estas proporcionan la fricción necesaria a los discos de freno.", 16.94, 10),
("Rotores de freno", "Los rotores de freno son componentes del sistema de freno en forma de disco montados en el conjunto del cubo de la rueda o en el husillo", 50.19, 11),
("Pinzas de freno", NULL, 76.00, 12),
("Amortiguadores", "Los amortiguadores son componentes comunes de la suspensión de automóviles y de otros vehículos, como motocicletas, bicicletas, etc.", 21.81, 13),
("Resortes", NULL, 8.99, 14),
("Barras estabilizadoras", NULL, 6.85, 15),
("Transmisión", NULL, 11.99, 16),
("Convertidor de par", "El convertidor de par hidrodinámico es una transmisión hidrodinámica adicional al cambio automático.", 339.80, 17),
("Diferencial", "Un diferencial es el elemento mecánico que permite que las ruedas derecha e izquierda de un vehículo giren a distinta velocidad, según este se encuentre tomando una curva hacia un lado o hacia el otro.", 15.90, 18),
("Bloque de motor", "El bloque del motor, bloque motor, bloque de cilindros o monoblock es una pieza fundida en hierro o aluminio que aloja los cilindros de un motor de combustión interna así como los soportes de apoyo del cigüeñal.", 112.92, 19),
("Culata", "La culata es la pieza que asegura el cierre de los cilindro por su parte superior, y agrupa ciertas funciones en un motor de pistón alternativo.", 30.11, 20),
("Pistones de aluminio fundido", "En los motores de combustión, el pistón es la parte móvil dentro del cilindro, por lo que constituye la pared móvil de la cámara de combustión.", 14.20, 21),
("Pistones a presion", NULL, 17.25, 21),
("Pistones hipereutecticos", NULL, 13.50, NULL),
("Anillos", NULL, 4.99, 22),
("Bielas", "Es aquella pieza que conecta el cigüeñal con el pistón con el fin de transmitirle movimiento similar al que hacemos al pedalear una bicicleta.", 12.99, 23),
("Bielas Shimano Claris R2000 170mm 8v 50/34", "La linea CLARIS es el componente de 8 velocidades. CLARIS está orientada a los ciclistas deportivos que buscan mantenerse en forma con estilo y con un diseño limpio.", 21.80, NULL),
("Bnvb Juego De Bielas Para Bicicleta", NULL, 75.28, NULL);


-- Insertando 30 datos de información a la tabla "inventario"
INSERT INTO inventario(id_piezas, cantidad, ubicacion_pieza, estado, imagen, garantia, material, observaciones) VALUES
(1, 43, "Sala 2C", 'Disponible', "https://server-imagenes/filtro-de-aceite.png/", "6 meses", NULL, NULL),
(2, 128, "Sala 2B", 'Disponible', "https://server-imagenes/filtro-de-aire.png/", "6 meses", NULL, "Garantía de 1 año con el proveedor."),
(3, 169, "Sala 2D", 'Disponible', "https://server-imagenes/filtro-de-combustible.png/", "9 meses", NULL, NULL),
(4, 60, "Sala 2A", 'Disponible', "https://server-imagenes/filtro-refrigerante.png/", "12 meses", "Acero", NULL),
(5, 7, "Estante 2A", 'Reservado', "https://server-imagenes/bujias.png/", "6 meses", NULL, NULL),
(6, 165, "Estante 4B", 'Disponible', "https://server-imagenes/correas.png/", "3 meses", NULL, NULL),
(7, 91, "Habitacion 212-A", 'Disponible', "https://server-imagenes/juntas.png/", "3 meses", NULL, NULL),
(8, 9, "Habitacion 214-C", 'Reservado', "https://server-imagenes/neumaticos-para-motos.png/", "6 meses", NULL, NULL),
(9, 59, "Habitacion 214-A", 'Disponible', "https://server-imagenes/neumaticos-para-carros.png/", "6 meses", NULL, NULL),
(10, 198, "Sala 12D", 'Disponible', "https://server-imagenes/bateria_YT7B-BS_YW125-BWS125.png/", "18 meses", NULL, NULL),
(11, 78, "Sala 12B", 'Disponible', "https://server-imagenes/bateria_BTZ6S_YTX5L-BS_BWS-XRE190-TOP_BO.png/", "18 meses", "Acero inoxidable", "Contactar con el proveedor directamente."),
(12, 53, "Sala 12C", 'Disponible', NULL, NULL, NULL, NULL),
(13, 12, "Sala 12A", 'Sin soporte', NULL, NULL, NULL, NULL),
(14, 112, "Estante 6F", 'Disponible', "https://server-imagenes/rotores-de-freno.png/", "12 meses", NULL, NULL),
(15, 11, "Estante 5H", 'Reservado', "https://server-imagenes/pinzas-de-freno.png/", "9 meses", NULL, NULL),
(16, 83, "Habitacion 1A", 'Disponible', "https://server-imagenes/amortiguadores.png/", "6 meses", NULL, NULL),
(17, 149, "Estante 5F", 'Disponible', "https://server-imagenes/resortes.png/", "3 meses", "Metal hierro", NULL),
(18, 125, "Estante 5D", 'Disponible', "https://server-imagenes/barras-estabilizadoras.png/", "12 meses", NULL, NULL),
(19, 0, "Habitacion 1B", 'Sin soporte', "https://server-imagenes/transmision.png/", "3 meses", NULL, NULL),
(20, 53, "Habitacion 8J", 'Disponible', "https://server-imagenes/convertidor-de-par.png/", "3 meses", NULL, NULL),
(21, 25, "Habitacion 8L", 'Disponible', "https://server-imagenes/diferencial.png/", "3 meses", NULL, NULL),
(22, 17, "Sala F1", 'Disponible', "https://server-imagenes/bloque-de-motor.png/", "9 meses", NULL, NULL),
(23, 78, "Estante 8T", 'Disponible', "https://server-imagenes/pistones-de-aluminio-fundido.png/", "6 meses", "Aluminio", NULL),
(24, 29, "Estante 8E", 'Disponible', "https://server-imagenes/pistones-a-presion.png/", "6 meses", NULL, NULL),
(25, 2, "Estante 8A", 'Reservado', "https://server-imagenes/pistones-hipereutecticos.png/", "9 meses", NULL, NULL),
(26, 33, "Estante 5B", 'Sin soporte', "https://server-imagenes/anillos.png/", "3 meses", NULL, NULL),
(27, 9, "Sala RS43", 'Reservado', "https://server-imagenes/culata.png/", "6 meses", NULL, NULL),
(28, 54, "Estante 37A", 'Disponible', "https://server-imagenes/bielas.png/", "6 meses", NULL, NULL),
(29, 18, "Estante 37B", 'Disponible', "https://server-imagenes/bielas_Shimano_Claris_R2000_170mm_8v_50-34.png/", "6 meses", NULL, NULL),
(30, 15, "Estante 37C", 'Reservado', "https://server-imagenes/bnvb_Juego_De_Bielas_Para_Bicicleta.png/", "3 meses", NULL, NULL);


-- Insertanto 8 datos de información a la tabla "sucursal"
INSERT INTO sucursal(nro_identificacion, tipo_identificacion, nombre, linea_direccion1, linea_direccion2, id_codigo_postal, id_contacto, id_inventario) VALUES
(831002541244, 'NIT', "Tu Auto en Buenas Manos", "Carrera 19", "#127D - 55", 1, 64, 3),
(985220552055, 'NIT', "Automotriz Súper Mecánica", "Calle 53", "#70 - 86", 5, 65, 5),
(853254712022, 'NIT', "Ang Garahe", "1608 Makati City", NULL, 8, 66, 10),
(251014710251, 'NIT', "Pinagsamang Mga Solusyon sa Sasakyan", "Barangay Poblacion", "#47FD-95", 10, 67, 15),
(740014225852, 'NIT', "Tu Taller Amigo", "Calle San Martín 567, X5170JE", NULL, 14, 68, 30),
(010155557410, 'NIT', "Especialistas Automotrices", "Avenida Corrientes 123", "C1042AAN CABA", 17, 25, 11),
(754241110000, 'NIT', "Mobil Mengkilap Anda", "Jalan Raya Pupuan No.60", NULL, 22, 63, 18),
(323852686354, 'NIT', "Centro Automotriz de Alta Tecnología", "Carrer de la Indústria 15, 08019", NULL, 23, 11, 13);


-- Insertando 30 datos de información a la tabla "cliente"
-- 20 Clientes serán los que se usen, los 10 restantes solo estarán registrados.
INSERT INTO cliente(nro_identificacion, tipo_identificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, linea_direccion1, linea_direccion2, id_codigo_postal, id_contacto, id_sucursal) VALUES
(1234567890, 'Cédula ciudadania', "Maria", "Isabel", "Garcia", NULL, "Carrera 7", "#14-28", 1, 2, 1),
(9876543210, 'Cédula ciudadania', "Paul", "Jimenez", "Mendez", "Diaz", "Avenida Chile 234", "#14-87a", 1, 3, 1),
(1357924680, 'Cédula ciudadania', "José", "Javier", "Mendez", "Espinoza", "Calle 10", "#5A-23", 2, 4, 1),
(0426813579, 'Cédula ciudadania', "Cecilia", NULL, "Sanchez", NULL, "123 Main Street", "Av.47 #74-12", 3, 6, 1),
(9756423186, 'Cédula ciudadania', "John", "Mark", "Aquino", "Valdez", "Rockville Street 23", NULL, 3, 17, 2),
(1978645328, 'Cédula ciudadania', "Ashley", "Sophia", "Enrile", "Ramos", "Paseo del Mar 5", "46022", 4, 22, 2),
(2089756439, 'Cédula ciudadania', "Miguel", "Alejandro", "Kumar", "Sharma", "Avenida de la Constitución 17", "41001", 6, 23, 2),
(3198675450, 'Cédula ciudadania', "Miguel", NULL, "Tan", NULL, "Calle Mayor, 12", "28013", 6, 24, 7),
(5310987672, 'Cédula ciudadania', "Annisa", NULL, "Cahyono", NULL, "Plaza del Ayuntamiento, 5", "41001", 7, 30, 8),
(6412098783, 'Cédula ciudadania', "Devin", NULL, "Kevin", "Pratama", "4352 Okey Falls", "Apt. 370", 8, 32, 8),
(7523109894, 'Cédula ciudadania', "Nicole", "Ashley", "Singh", "Yang", "13518 Wolf Rue", NULL, 9, 33, 8),
(8634210905, 'Cédula ciudadania', "Ana", "Nathalia", "Ramirez", "Medina", "84068 Amelie Port", "Apt. 729", 5, 35, 3),
(1967543238, 'Cédula ciudadania', "Miguel", NULL, "Rodriguez", NULL, "Plaza Ona, 437", "90", 11, 40, 3),
(2078654349, 'Cédula ciudadania', "Martín", "Leonardo", "Torres", "Estriada", "90068 Luisa Plaza", NULL, 12, 41, 3),
(3189765460, 'Cédula ciudadania', "Mónica", NULL, "Herrera", NULL, "32750 Marquardt", "Hill", 13, 42, 3),
(4290876571, 'Cédula ciudadania', "Graciela", "Sofía", "Ruíz", "Álvarado", "840 Shields Key", "Apt. 890", 14, 44, 4),
(5301987682, 'Cédula ciudadania', "Horacio", NULL, "Benito", NULL, "Av. Eva Saavedra, 77", "Casa 1", 15, 49, 6),
(6412098793, 'Tarjeta identidad', "Claudia", "Liliana", "Álvarez", NULL, "Calle Galván, 941", "Hab. 1", 16, 51, 6),
(7523109804, 'Tarjeta identidad', "Farhan", NULL, "Farel", "Prasetyo", "Av. Brito", "Casa 6", 17, 52, 5),
(8634210915, 'Tarjeta identidad', "María", "Sofía", "González", "Martínez", "Cl. Zelaya", "Piso 5", 18, 53, 4),
(9745321026, 'Tarjeta identidad', "Alejandro", "Nicolás", "Fernández", "Pérez", "Av. Zulay Badillo, 524", "Piso 60", 19, 56, 4),
(0856432137, 'Tarjeta identidad', "Leonardo", "Benjamín", "Díaz", "Alonso", "Dk. Tambun", "No. 176", 20, 58, 4),
(1967543248, 'Tarjeta identidad', "Matías", "Agustín", "González", "Rodríguez", "Ki. Madrasah", "No. 608", 21, 59, 4),
(2078654359, 'Libreta militar', "Francisco", "Santiago", "Gómez", "Martínez", "Gg. Baha", "No. 740", 22, 60, 4),
(3189765470, 'Libreta militar', "Juan", "Manuel", "García", "López", "371 Fahey Hollow", NULL, 23, 61, 4),
(4290876581, 'Libreta militar', "Ana", "Valentina", "Rodríguez", "Pérez", "Av. Valentina Castro", "#4207 Dpto. 349", 24, 45, 5),
(5301987692, 'Libreta militar', "Isabella", "Agustina", "Díaz", "García", "Plaça Noelia, 463", "Ático 9º", 24, 46, 5),
(8634211025, 'Pasaporte', "Nélida", NULL, "Lopez", NULL, "Psr. Jambu", "No. 187", 14, 7, 6),
(9745321136, 'Pasaporte', "Cristina", "Sandra", "Tan", NULL, "Jln. Ters. Pasir Koja", NULL, 9, 8, 6),
(3778521852, 'Pasaporte', "Alejandro", NULL, "Lao", "Go", "Psr. Babakan", "No. 210", 7, 9, 7);


-- Insertando 85 datos de información a la tabla "contacto_telefono"
INSERT INTO contacto_telefono(id_contacto, id_telefono, es_principal) VALUES
-- 6 proveedores --> 12 contactos en total
(1, 1, 1),
(1, 2, 0),
(5, 3, 0),
(5, 4, 1),
(14, 5, 1),
(14, 6, 0),
(15, 7, 1),
(15, 8, 0),
(16, 9, 1),
(16, 10, 0),
(21, 11, 0),
(21, 12, 1),
-- 8 sucursales --> 16 contactos en total
(25, 13, 1),
(25, 14, 0),
(27, 15, 1),
(27, 16, 0),
(28, 17, 0),
(28, 18, 1),
(39, 19, 1),
(39, 20, 0),
(55, 21, 1),
(55, 22, 0),
(63, 23, 1),
(63, 24, 0),
(64, 25, 1),
(64, 26, 0),
(65, 27, 1),
(65, 28, 0),
-- 20 empleados
(18, 29, 1),
(29, 30, 1),
(10, 31, 1),
(11, 32, 1),
(12, 33, 1),
(13, 34, 1),
(36, 35, 1),
(37, 36, 1),
(47, 37, 1),
(48, 38, 1),
(66, 39, 1),
(67, 40, 1),
(68, 41, 1),
(19, 42, 1),
(20, 43, 1),
(26, 44, 1),
(31, 45, 1),
(34, 46, 1),
(38, 47, 1),
(43, 48, 1),
-- 30 clientes
(2, 49, 1),
(3, 50, 1),
(4, 51, 1),
(6, 52, 1),
(17, 53, 1),
(22, 54, 1),
(35, 55, 1),
(23, 56, 1),
(24, 57, 1),
(30, 58, 1),
(9, 59, 1),
(32, 60, 1),
(33, 61, 1),
(8, 62, 1),
(40, 63, 1),
(41, 64, 1),
(42, 65, 1),
(44, 66, 1),
(7, 67, 1),
(49, 68, 1),
(51, 69, 1),
(52, 70, 1),
(53, 71, 1),
(56, 72, 1),
(58, 73, 1),
(59, 74, 1),
(60, 75, 1),
(61, 76, 1),
(45, 77, 1),
(46, 78, 1),
(8, 79, 0),
(22, 80, 0),
(22, 81, 0),
(40, 82, 0),
(40, 83, 0),
(4, 84, 0),
(4, 85, 0);


-- Insertando 8 datos de información a la tabla "marca_vehiculo"
INSERT INTO marca_vehiculo(nombre, descripcion) VALUES
('Toyota', 'Fabricante de automóviles japonés'),
('Honda', NULL),
('Nissan', 'Fabricante de automóviles japonés'),
('Ford', 'Fabricante de automóviles estadounidense'),
('Chevrolet', 'Fabricante de automóviles estadounidense'),
('Volkswagen', NULL),
('BMW', NULL),
('Mercedes-Benz', 'Fabricante de automóviles alemán');


-- Insertando 40 datos de información a la tabla "vehiculo"
INSERT INTO vehiculo(placa, modelo, anio, color, kilometraje, id_marca_vehiculo, tipo_vehiculo, id_cliente) VALUES
('ABC123', 'Corolla', 2023, 'Blanco', 10000.00, 1, 'Automovil', 1),
('DEF456', 'Civic', 2022, 'Gris', 20000.00, 2, 'Automovil', 2),
('GHI789', 'Sentra', 2021, 'Negro', 30000.00, 3, 'Motocicletas', 3),
('JKL012', 'Mustang', 2020, 'Rojo', 40000.00, 4, 'Automovil', 4),
('MNO345', 'Camaro', 2019, 'Azul', 50000.00, 4, 'Automovil', 5),
('PQR678', 'Golf', 2018, 'Verde', 60000.00, 5, 'Automovil', 6),
('STU901', 'Serie 3', 2017, 'Amarillo', 70000.00, 6, 'Automovil', 7),
('VWX123', 'Clase C', 2016, 'Naranja', 80000.00, 6, 'Motocicletas', 8),
('YZA456', 'Yaris', 2015, 'Morado', 90000.00, 1, 'Automovil', 9),
('BCD789', 'Fit', 2014, 'Rosa', 100000.00, 2, 'Automovil', 10),
('DEF012', 'Versa', 2013, 'Celeste', 110000.00, 3, 'Motocicletas', 11),
('FGH345', 'Focus', 2012, 'Marrón', 120000.00, 4, 'Motocicletas', 12),
('GHI678', 'Cruze', 2011, 'Dorado', 130000.00, 4, 'Motocicletas', 13),
('JKL901', 'Jetta', 2010, 'Plateado', 140000.00, 5, 'Automovil', 14),
('MNO234', 'Passat', 2009, 'Bronceado', 150000.00, 5, 'Automovil', 15),
('PQR567', 'A3', 2008, 'Bordo', 160000.00, 6, 'Automovil', 16),
('STU890', 'C-Klasse', 2007, 'Gris Claro', 170000.00, 6, 'Automovil', 17),
('VWX1234', 'E-Klasse', 2006, 'Gris Oscuro', 180000.00, 6, 'Automovil', 18),
('YZA4567', 'Aygo', 2005, 'Blanco Nieve', 190000.00, 1, 'Motocicletas', 19),
('BCD7890', 'Jazz', 2004, 'Negro Mate', 200000.00, 2, 'Motocicletas', 20),
('DEF0123', 'Tiida', 2003, 'Azul Marino', 210000.00, 3, 'Automovil', 21),
('FGH3456', 'Fiesta', 2002, 'Verde Militar', 220000.00, 4, 'Automovil', 22),
('GHI6789', 'Cobalt', 2001, 'Rojo Ferrari', 230000.00, 4, 'Motocicletas', 23),
('JKL9012', 'Vento', 2000, 'Naranja Quemado', 240000.00, 5, 'Motocicletas', 24),
('MNO2345', 'Santana', 1999, 'Amarillo Pollito', 250000.00, 5, 'Automovil', 25),
('PQR5678', 'A4', 1998, 'Verde Lima', 260000.00, 6, 'Automovil', 1),
('STU8901', 'CLK-Klasse', 1997, 'Azul Eléctrico', 270000.00, 6, 'Motocicletas', 2),
('VWX12345', 'S-Klasse', 1996, 'Morado Real', 280000.00, 6, 'Automovil', 3),
('YZA45678', 'RAV4', 1995, 'Blanco Perlado', 290000.00, 1, 'Automovil', 4),
('BCD78901', 'CR-V', 1994, 'Negro Brillante', 300000.00, 2, 'Motocicletas', 5),
('DEF01234', 'Civic del Sol', 1993, 'Rojo Intenso', 310000.00, 2, 'Automovil', 6),
('FGH34567', 'Prelude', 1992, 'Azul Zafiro', 320000.00, 2, 'Automovil', 7),
('GHI67890', 'NSX', 1991, 'Amarillo Neón', 330000.00, 2, 'Automovil', 8),
('JKL90123', 'Supra', 1990, 'Naranja Tangerine', 340000.00, 4, 'Automovil', 9),
('MNO23456', 'MR2', 1989, 'Verde Hierba', 350000.00, 4, 'Motocicletas', 10),
('PQR56789', 'Camry', 1988, 'Azul Cielo', 360000.00, 1, 'Automovil', 11),
('STU89012', 'Accord', 1987, 'Gris Perla', 370000.00, 1, 'Automovil', 12),
('VWX123456', 'Prelude', 1986, 'Rojo Cereza', 0.00, 2, 'Motocicletas', 13),
('YZA456789', 'Civic', 1985, 'Blanco Inmaculado', 0.00, 2, 'Automovil', 14),
('BCD789012', 'Accord', 1984, 'Negro Azabache', 0.00, 1, 'Automovil', 15);


-- Insertando 5 datos de información a la tabla "tipo_servicio"
INSERT INTO tipo_servicio (nombre, descripcion) VALUES
('Revisión general', 'Revisión completa del vehículo para detectar posibles problemas y garantizar su buen funcionamiento.'),
('Cambio de aceite y filtro de aceite', 'Reemplazo del aceite del motor y del filtro de aceite para mantener el rendimiento del motor.'),
('Rotación de neumáticos', 'Cambio de la posición de los neumáticos para asegurar un desgaste uniforme y prolongar su vida útil.'),
('Alineación y balanceo de neumáticos', 'Ajuste de la dirección y el equilibrio de las ruedas para mejorar la estabilidad y el manejo del vehículo.'),
('Freno', 'Revisión, ajuste o reemplazo de los frenos para garantizar una frenada segura y eficiente.');


-- Insertando 15 datos de información a la tabla "servicio"
INSERT INTO servicio(nombre, descripcion, costo, id_pais, duracion_estimada, id_tipo_servicio) VALUES
('Cambio de aceite sintético', 'Reemplazo del aceite del motor con aceite sintético de alto rendimiento.', 50.00, 1, '2 horas', 2),
('Cambio de filtro de aceite de motor', 'Reemplazo del filtro de aceite del motor para mejorar la filtración del aceite.', 10.00, 3, '30 minutos', 2),
('Revisión de frenos', 'Inspección completa del sistema de frenos, incluyendo pastillas, discos, pinzas y líquido de frenos.', 30.00, 5, '1 hora', 5),
('Ajuste de frenos', 'Ajuste o reemplazo de las pastillas de freno y/o discos de freno para garantizar una frenada suave y efectiva.', 40.00, 2, '1 hora', 5),
('Reemplazo de líquido de frenos', 'Cambio del líquido de frenos para mantener el sistema hidráulico de frenos en óptimas condiciones.', 20.00, 4, '30 minutos', 5),
('Rotación y calibración de neumáticos', 'Cambio de la posición de los neumáticos y ajuste de la presión de aire para optimizar su rendimiento.', 25.00, 1, '1 hora', 3),
('Revisión de alineación y balanceo de neumáticos', 'Verificación de la alineación y el balanceo de las ruedas para garantizar una conducción segura y estable.', 35.00, 3, '1 hora', 4),
('Ajuste de alineación de neumáticos', 'Ajuste de la alineación de las ruedas para corregir la dirección del vehículo y mejorar el manejo.', 45.00, 5, '1 hora', 4),
('Balanceo de neumáticos', 'Eliminación de cualquier desequilibrio de peso en las ruedas para mejorar la estabilidad y reducir las vibraciones.', 20.00, 2, '30 minutos', 4),
('Sustitución de neumáticos delanteros', 'Reemplazo de los neumáticos delanteros con neumáticos nuevos.', 120.00, 4, '1 hora por neumático', 3),
('Sustitución de neumáticos traseros', 'Reemplazo de los neumáticos traseros con neumáticos nuevos.', 100.00, 1, '1 hora por neumático', 3),
('Sustitución de batería', 'Reemplazo de la batería del vehículo con una batería nueva.', 80.00, 3, '30 minutos', 1),
('Revisión del sistema eléctrico', 'Inspección del sistema eléctrico del vehículo para detectar posibles problemas y garantizar su buen funcionamiento.', 40.00, 5, '1 hora', 1),
('Cambio de bujías', 'Reemplazo de las bujías del motor para mejorar el rendimiento y la eficiencia del combustible.', 60.00, 2, '1 hora', 1),
('Scaneo computarizado', 'Lectura y análisis de los códigos de error del vehículo para identificar posibles problemas.', 35.00, 2, '1 hora', 1);


-- Insertando 8 datos de información a la tabla "cargo"
INSERT INTO cargo(nombre, descripcion, salario_minimo, salario_maximo) VALUES
('Mecánico automotriz', 'Realiza el mantenimiento y reparación de vehículos automotores.', 1500.00, 3000.00),
('Electricista automotriz', 'Diagnostica y repara los sistemas eléctricos de los vehículos automotores.', 1200.00, 2500.00),
('Chapa y pintura', 'Repara la carrocería y pinta los vehículos automotores.', 1000.00, 2000.00),
('Lavador de autos', 'Lava y detalla los vehículos automotores.', 800.00, 1500.00),
('Recepcionista', 'Atiende a los clientes y gestiona las citas de servicio.', 900.00, 1800.00),
('Vendedor de repuestos', 'Vende repuestos y accesorios para vehículos automotores.', 1000.00, 2000.00),
('Gerente de taller', 'Supervisa las operaciones del taller y gestiona el personal.', 2500.00, 4000.00),
('Contador', 'Registra las transacciones financieras del taller y prepara informes.', 1200.00, 2500.00);


-- Insertando 20 datos de información a la tabla "empleado"
INSERT INTO empleado(nro_identificacion, tipo_identificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, id_cargo, linea_direccion1, linea_direccion2, id_codigo_postal, id_contacto, id_sucursal) VALUES
(0867534297, 'Cédula ciudadania', "Angelo", "Christian", "Morales", "Manalo", 1, "Quezon Avenue", NULL, 4, 18, 2),
(4209876561, 'Cédula ciudadania', "Ayu", "Putri", "Kusuma", NULL, 2, "Avenida del Mar, 34", "08003", 7, 29, 7),
(5312764305, 'Cédula ciudadania', "Patricia", "Lizeth", "Romero", "Delgado", 3, "Av. Presidente Masaryk", "111", 1, 10, 1),
(6423157932, 'Cédula ciudadania', "Mario", "Gomez", "Loyo", NULL, 4, "Rua Augusta 123", NULL, 1, 11, 7),
(7534261849, 'Cédula ciudadania', "Daniel", "Alberto", "Ramirez", "Acosta", 6, "Avenida 9 de Julio 1666", NULL, 2, 12, 1),
(8645312765, 'Cédula ciudadania', "Yannis", "Milet", "García", "Herrera", 6, "Calle Mayor 12", "28013", 3, 13, 7),
(9745321016, 'Cédula ciudadania', "Intan", NULL, "Cahyani", NULL, 7, "51571 D'angelo Turnpike", "Suite 827", 10, 36, 3),
(0856432127, 'Cédula ciudadania', "Bagas", "Arya", "Bima", "Pratama", 8, "Ruela Ismael, 28", "8º 9º", 8, 37, 3),
(6412098803, 'Libreta militar', "Ramón", NULL, "García", NULL, 8, "Avenida Roig, 9", "#10-85", 18, 47, 5),
(7523109914, 'Libreta militar', "Juana", "Alicia", "Sosa", "Acosta", 4, "Jr. Hidalgo Sandoval", "#64", 6, 48, 5),
(5645548546, 'Cédula ciudadania', "Emma", "Aiko", "Canoy", "Mejia", 1, "Jr. Balikpapan", "No. 952", 12, 66, 4),
(4535345433, 'Cédula ciudadania', "Diether", "Jacinto", "Chua", "Singh", 2, "8587 Stark Center", "Apt. 102", 20, 67, 2),
(9854117841, 'Cédula ciudadania', "Kim", "Ina", "Lim", "Lee", 2, "Jln. Bayam", "No. 282", 14, 68, 8),
(1700875780, 'Cédula ciudadania', "Pedro", "Antonio", "Kumar", "Estrada", 1, "7457 Devyn Station", NULL, 4, 19, 6),
(5258912022, 'Cédula ciudadania', "Daniela", "Camila", "Fernández", "López", 3, "Camino Inés, 88", "Ático 9º", 17, 20, 1),
(4115002102, 'Cédula ciudadania', "María", "Lucía", "Florez", "Jiménez", 8, "Jr. Juana Posada", "#9970", 21, 26, 5),
(4214323532, 'Cédula ciudadania', "Sergio", "José", "Carreño", "Romero", 4, "Av. Martín Barrios", "#5", 23, 31, 3),
(1741412011, 'Cédula ciudadania', "Zahra", "Jasmine", "Renata", "Putri", 3, "Jr. Pasteur", "No. 638", 22, 34, 8),
(9855200417, 'Cédula ciudadania', "Nadine", "Sekar", "Cempaka", "Ramadhan", 2, "Gg. Yogyakarta", "No. 854", 8, 38, 8),
(7848454544, 'Cédula ciudadania', "Cinthya", "Lucía", "Sánchez", NULL, 4, "Urb. Hipólito Ozuna", "#58599", 24, 42, 5);


-- Insertando 13 datos de información a la tabla "reparacion"
INSERT INTO reparacion(id_vehiculo) VALUES
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14);


-- Insertando 25 datos de información a la tabla "reparacion_empleado"
INSERT INTO reparacion_empleado(id_empleado, id_reparacion, fecha_hora_inicio, fecha_hora_final, comentarios) VALUES
(1, 1, '2021-12-15 10:30:00', '2021-12-15 12:00:00', 'Cambio de aceite sintético 5W-30 realizado con éxito.'),
(2, 2, '2016-01-12 14:00:00', '2016-01-12 15:30:00', 'Reemplazo del filtro de aceite sin problemas.'),
(3, 3, '2015-02-08 09:00:00', '2015-02-08 10:15:00', 'Revisión de niveles de líquidos completa y sin novedades.'),
(4, 4, '2019-03-22 11:45:00', '2019-03-22 12:45:00', 'Scaneo computarizado realizado sin identificar códigos de error.'),
(5, 5, '2017-04-19 08:00:00', '2017-04-19 10:00:00', 'Revisión de frenos completa, pastillas y discos en buen estado.'),
(6, 6, '2017-05-10 13:30:00', '2017-05-10 14:30:00', 'Rotación y calibración de presión de neumáticos realizada correctamente.'),
(7, 7, '2021-06-07 09:15:00', '2021-06-07 11:00:00', 'Alineación y balanceo de neumáticos realizados con éxito.'),
(8, 8, '2020-07-05 14:45:00', '2020-07-05 16:15:00', 'Sustitución de neumáticos delanteros completada sin problemas.'),
(9, 9, '2019-08-02 10:30:00', '2019-08-02 12:00:00', 'Sustitución de neumáticos traseros realizada sin inconvenientes.'),
(10, 10, '2018-09-27 08:00:00', '2018-09-27 09:30:00', 'Revisión de suspensión sin identificar problemas relevantes.'),
(11, 11, '2015-10-18 13:15:00', '2015-10-18 15:00:00', 'Reemplazo de amortiguadores delanteros realizado con éxito.'),
(12, 12, '2013-11-15 11:00:00', '2013-11-15 12:30:00', 'Reemplazo de amortiguadores traseros sin complicaciones.'),
(13, 13, '2019-12-13 09:45:00', '2019-12-13 11:15:00', 'Cambio de kit de embrague completado sin inconvenientes.'),
(1, 1, '2018-01-10 10:00:00', '2018-01-10 11:30:00', 'Cambio de aceite sintético 5W-30 realizado con éxito.'),
(2, 2, '2018-02-07 13:45:00', '2018-02-07 15:15:00', 'Reemplazo del filtro de aceite sin problemas.'),
(3, 3, '2014-03-05 08:30:00', '2014-03-05 10:00:00', 'Revisión de niveles de líquidos completa y sin novedades.'),
(4, 4, '2014-04-02 12:15:00', '2014-04-02 13:45:00', 'Scaneo computarizado realizado sin identificar códigos de error.'),
(5, 5, '2018-05-29 09:00:00', '2018-05-29 11:00:00', 'Revisión de frenos completa, pastillas y discos en buen estado.'),
(6, 6, '2018-06-18 14:00:00', '2018-06-18 15:00:00', 'Rotación y calibración de presión de neumáticos realizada correctamente.'),
(7, 7, '2018-07-09 10:45:00', '2018-07-09 12:15:00', 'Alineación y balanceo de neumáticos realizados con éxito.'),
(8, 8, '2018-08-06 15:30:00', '2018-08-06 17:00:00', 'Sustitución de neumáticos delanteros completada sin problemas.'),
(9, 9, '2013-09-03 11:00:00', '2013-09-03 12:30:00', 'Sustitución de neumáticos traseros realizada sin inconvenientes.'),
(10, 10, '2013-10-01 09:15:00', '2013-10-01 10:45:00', 'Revisión de suspensión sin identificar problemas relevantes.'),
(11, 11, '2013-11-26 14:00:00', '2013-11-26 15:30:00', 'Reemplazo de amortiguadores delanteros realizado con éxito.'),
(12, 12, '2013-12-17 12:30:00', '2013-12-17 14:00:00', 'Reemplazo de amortiguadores traseros sin complicaciones.');


-- Insertar 6 datos de información a la tabla "proveedor"
INSERT INTO proveedor(nro_identificacion, tipo_identificacion, nombre_empresa, linea_direccion1, linea_direccion2, id_codigo_postal, id_contacto, tipo_proveedor) VALUES
(1401555633, 'NIT', "automotores s.a.s", "Av. Lautaro Meza", "#6", 4, 19, 'Persona jurídica'),
(7841855548, 'NIT', "Kapalit Sasakyan", "Psr. Flora No. 397", NULL, 10, 20, 'Persona jurídica'),
(0504110014, 'NIT', "Perbaikan Mesinkendaraan", "Ki. Asia Afrika", "No. 838", 16, 26, 'Persona jurídica'),
(3545558955, 'NIT', "Don Alberto", "Camiño Madrigal, 45, 4º A", NULL, 24, 31, 'Persona natural'),
(9584387324, 'NIT', "Autopartes", "Av. María Camila Muñoz", "#60", 2, 51, 'Persona jurídica'),
(6783299281, 'NIT', "Mgasasakyan Kapalit na bahagi", "3079 Wilkinson Forge", "Suite 167", 9, 58, 'Persona natural');


-- Insertar 6 datos de información a la tabla "contacto_proveedor"
INSERT INTO contacto_proveedor(primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, id_proveedor) VALUES
("Valentina", "Florencia", "Gómez", "Alonso", 1),
("Candra", "Bayu", "Satria", "Wibowo", 2),
("Eza", "Arkananta", "Aditya", "Wijaya", 3),
("Víctor", "Martín", "Torres", "Fernández", 4),
("Oscar", "José", "Gómez", "Flores", 5),
("Mirta", "Valeria", "Gonzales", "Lopez", 6);


-- Insertar 27 datos de información a la tabla "proveedor_piezas"
INSERT INTO proveedor_piezas(id_proveedor, id_piezas, marca_pieza) VALUES
(1, 1, "Bosch"),
(1, 2, "Aisin"),
(1, 3, "MAHLE"),
(2, 4, "MAHLE"),
(2, 5, "Getrag"),
(2, 6, "Bosch"),
(3, 7, "ZF Friedrichshafen AG"),
(3, 8, "ZF Friedrichshafen AG"),
(3, 9, "Bosch"),
(4, 10, "ZF Friedrichshafen AG"),
(4, 11, "Bosch"),
(4, 12, "Jatco"),
(5, 14, "Monroe"),
(5, 15, "KYB"),
(5, 16, "Jatco"),
(6, 17, "Monroe"),
(6, 18, "Jatco"),
(6, 20, "KYB"),
(1, 21, "Denso"),
(1, 22, "Delphi Automotive"),
(2, 23, "Delphi Automotive"),
(2, 24, "Hella"),
(5, 25, "Hella"),
(5, 27, "Jatco"),
(6, 28, "Hella"),
(1, 29, "Hella"),
(4, 30, "Jatco");


-- Insertando 15 datos de información a la tabla "reparacion_servicios"
INSERT INTO reparacion_servicios(id_reparacion, id_servicio, id_pieza, id_empleado, id_cliente, cantidad, estado, fecha, costo_total) VALUES
(1, 1, 2, 1, 1, 3, 'Nuevo', '2021-12-15', 50.00),
(2, 2, 4, 11, 2, 2, 'Usado', '2015-10-18', 10.00),
(3, 3, 6, 13, 3, 12, 'Nuevo', '2019-12-13', 30.00),
(3, 3, 8, 2, 4, 5, 'Nuevo', '2016-01-12', 30.00),
(4, 4, 10, 12, 5, 8, 'Usado', '2013-11-15', 40.00),
(5, 5, 12, 3, 6, 9, 'Reacondicionado', '2015-02-08', 20.00),
(6, 6, 14, 9, 7, 3, 'Nuevo', '2019-08-02', 25.00),
(7, 7, 16, 4, 8, 11, 'Usado', '2019-03-22', 35.00),
(8, 8, 18, 5, 9, 2, 'Nuevo', '2017-04-19', 45.00),
(8, 9, 20, 8, 10, 1, 'Nuevo', '2020-07-05', 20.00),
(9, 10, 22, 4, 12, 1, 'Nuevo', '2019-03-22', 120.00),
(10, 11, 24, 10, 18, 1, 'Usado', '2018-09-27', 100.00),
(11, 12, 26, 9, 22, 7, 'Nuevo', '2019-08-02', 80.00),
(12, 13, 28, 11, 28, 7, 'Usado', '2015-10-18', 40.00),
(13, 5, 30, 10, 25, 4, 'Nuevo', '2019-03-22', 20.00);

    
-- Insertando 15 datos de información a la tabla "cita"
INSERT INTO cita(fecha, hora, id_vehiculo, id_servicio) VALUES
('2021-12-15', '10:30:00', 2, 1),
('2018-02-07', '13:45:00', 3, 2),
('2015-02-08', '09:00:00', 4, 3),
('2014-03-05', '08:30:00', 4, 4),
('2014-04-02', '12:15:00', 5, 5),
('2018-05-29', '09:00:00', 6, 6),
('2018-06-18', '14:00:00', 7, 7),
('2021-06-07', '09:15:00', 8, 8),
('2020-07-05', '14:45:00', 9, 9),
('2019-08-02', '10:30:00', 10, 10),
('2018-09-27', '08:00:00', 11, 11),
('2015-10-18', '13:15:00', 12, 12),
('2013-12-17', '12:30:00', 13, 13),
('2019-12-13', '09:45:00', 14, 14),
('2013-09-03', '11:00:00', 10, 15);


-- Insertando 20 datos de información a la tabla "orden_compra"
INSERT INTO orden_compra(fecha_emision, fecha_vencimiento, id_empleado, id_proveedor, id_pais) VALUES
('2016-03-11', '2016-03-12', 5, 1, 1),
('2016-09-21', '2016-09-21', 6, 1, 1),
('2020-09-20', '2020-09-20', 7, 2, 1),
('2021-02-19', '2021-02-25', 8, 2, 1),
('2021-10-01', '2021-10-01', 9, 2, 2),
('2014-08-20', '2014-08-20', 16, 2, 2),
('2019-07-13', '2019-07-13', 5, 3, 2),
('2022-06-02', '2022-06-02', 6, 4, 2),
('2014-12-20', '2014-12-28', 7, 4, 3),
('2022-02-01', '2022-02-01', 8, 4, 3),
('2015-11-21', '2015-11-21', 9, 4, 3),
('2020-11-17', '2020-12-02', 16, 5, 3),
('2022-12-31', '2022-12-31', 5, 5, 4),
('2022-10-20', '2022-10-20', 6, 5, 4),
('2024-01-07', '2024-01-07', 7, 5, 4),
('2021-03-15', '2021-03-15', 8, 6, 2),
('2022-01-17', '2022-01-17', 9, 6, 3),
('2021-06-01', '2021-06-01', 16, 6, 5),
('2015-04-14', '2015-04-14', 7, 3, 5),
('2024-03-16', '2024-03-16', 16, 2, 5);


-- Insertando 4 datos de información a la tabla "forma_pago"
INSERT INTO forma_pago(nombre, es_digital) VALUES
("Efectivo", 0),
("Paypal", 1),
("Tarjeta Crédito / Débito", 0),
("Aplicación bancaria local", 1);


-- Insertando 30 datos de información a la tabla "orden_detalle"
INSERT INTO orden_detalle(id_pieza, id_orden_compra, cantidad, precio, id_pais, condicion_pago, id_forma_pago) VALUES
(1, 1, 8, 34.16, 1, 'Contado', 1),
(2, 2, 15, 26.25, 2, 'Contado', 3),
(3, 3, 7, 263.48, 3, 'Contado', 2),
(4, 4, 3, 504.00, 4, 'Contado', 4),
(5, 5, 9, 5376.00, 5, 'Contado', 1),
(6, 6, 17, 4200.00, 5, 'Cuotas', 2),
(7, 7, 37, 17.55, 3, 'Contado', 3),
(8, 8, 45, 81.90, 1, 'Contado', 4),
(9, 9, 25, 52.70, 2, 'Contado', 1),
(10, 10, 41, 444.00, 1, 'Contado', 2),
(11, 11, 20, 696.00, 2, 'Cuotas', 3),
(12, 12, 28, 519.75, 2, 'Contado', 4),
(14, 14, 26, 346.50, 5, 'Cuotas', 1),
(15, 15, 16, 325.00, 2, 'Cuotas', 2),
(16, 16, 13, 182.00, 3, 'Contado', 3),
(17, 17, 17, 1357.92, 4, 'Contado', 4),
(18, 18, 11, 2119.68, 5, 'Cuotas', 1),
(20, 20, 5, 704.20, 3, 'Cuotas', 2),
(21, 1, 8, 422.52, 1, 'Contado', 3),
(24, 4, 7, 1162.00, 3, 'Contado', 4),
(7, 20, 58, 1120.50, 1, 'Contado', 1),
(10, 20, 64, 1304.94, 5, 'Contado', 2),
(18, 5, 37, 1216.00, 2, 'Contado', 3),
(5, 3, 42, 283.53, 4, 'Contado', 4),
(11, 4, 12, 152.83, 3, 'Cuotas', 1),
(12, 1, 27, 75.35, 3, 'Contado', 2),
(4, 15, 32, 253.45, 1, 'Cuotas', 3),
(4, 9, 25, 1699.00, 2, 'Cuotas', 4),
(8, 16, 30, 127.20, 3, 'Cuotas', 1),
(9, 17, 14, 99.40, 5, 'Contado', 2);


-- Insertando 15 datos de información a la tabla "factura"
INSERT INTO factura(fecha_emision, fecha_vencimiento, id_cliente, porcentaje_iva, descuento, condicion_pago, id_forma_pago) VALUES
('2021-12-15', '2021-12-15', 1, 19, 0, "Contado", 1),
('2015-10-18','2015-10-18', 2, 19, 0, "Contado", 3),
('2019-12-13', '2019-12-13', 3, 21, 0, "Contado", 4),
('2016-01-12', '2016-01-12', 4, 15, 0, "Contado", 4),
('2013-11-15', '2013-11-30', 5, 24, 0, "Contado", 4),
('2015-02-08', '2015-02-19', 6, 19, 0, "Cuotas", 1),
('2019-08-02', '2019-08-25', 7, 19, 0, "Cuotas", 3),
('2019-03-22', '2019-03-22', 8, 21, 25, "Cuotas", 3),
('2017-04-19', '2017-04-19', 9, 17, 0, "Contado", 2),
('2020-07-05', '2020-07-05', 10, 17, 0, "Contado", 2),
('2019-03-22', '2019-04-02', 12, 19, 0, "Contado", 2),
('2018-09-27', '2018-10-08', 18, 21, 0, "Cuotas", 1),
('2020-08-02', '2020-08-02', 7, 15, 0, "Cuotas", 1),
('2015-10-18', '2015-10-28', 7, 15, 0, "Contado", 1),
('2019-03-22', '2019-03-24', 4, 18, 30, "Cuotas", 1);


-- Insertando 15 datos de información a la tabla "factura_info_servicios"
INSERT INTO factura_info_servicios(id_factura, id_reparacion_servicios, costo_iva, costo_descuento, subtotal, descripcion) VALUES
(1, 1, 59.50, 0.00, 59.50, NULL),
(2, 2, 11.90, 0.00, 11.90, NULL),
(3, 3, 36.30, 0.00, 36.30, NULL),
(4, 4, 34.50, 0.00, 34.50, NULL),
(5, 5, 49.60, 0.00, 49.60, NULL),
(6, 6, 23.80, 0.00, 23.80, NULL),
(7, 7, 29.75, 0.00, 29.75, NULL),
(8, 8, 42.35, 10.58, 31.77, NULL),
(9, 9, 52.65, 0.00, 52.65, NULL),
(10, 10, 23.40, 0.00, 23.40, NULL),
(11, 11, 142.80, 0.00, 142.80, NULL),
(12, 12, 121.00, 0.00, 121.00, NULL),
(13, 13, 92.00, 0.00, 92.00, NULL),
(14, 14, 46.00, 0.00, 46.00, NULL),
(15, 15, 23.60, 7.08, 16.52, NULL);


-- Insertando 15 datos de información a la tabla "factura_detalle"
INSERT INTO factura_detalle(id_factura, cantidad, precio_agregado, precio_final) VALUES
(1, 1, 0.00, 59.50),
(2, 1, 0.00, 11.90),
(3, 1, 0.00, 36.30),
(4, 5, 0.00, 172.50),
(5, 4, 0.00, 198.40),
(6, 7, 0.00, 166.60),
(7, 1, 0.00, 29.75),
(8, 5, 0.00, 158.85),
(9, 8, 0.00, 421.20),
(10, 9, 5.50, 260.10),
(11, 1, 0.00, 142.80),
(12, 4, 0.00, 484.00),
(13, 4, 6.00, 392.00),
(14, 9, 7.85, 484.65),
(15, 1, 0.00, 16.52);








-- Automatización de cálculos aritméticos mediante procedimientos almacenados:
/* Actualizar campos con procedimientos:
reparacion_servicios --> costo_total
orden_detalle --> precio
factura_info_servicios --> costo_iva, costo_descuento, subtotal
factura_detalle --> precio_final
*/