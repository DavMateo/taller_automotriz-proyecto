/* CREANDO Y USANDO LA BASE DE DATOS "taller_automotriz" */
DROP DATABASE IF EXISTS taller_automotriz;  -- Eliminar luego
CREATE DATABASE IF NOT EXISTS taller_automotriz;
USE taller_automotriz;



-- ------------------------------ --
-- CREANDO LAS TABLAS PERTINENTES --
-- ------------------------------ --

/* CREANDO LAS TABLAS PARA "cliente" */
-- Creando la tabla "pais"
CREATE TABLE IF NOT EXISTS pais(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  abreviatura CHAR(5) NOT NULL,
  prefijo INT(3) NOT NULL,
  nombre_moneda VARCHAR(50) NOT NULL,
  abreviatura_moneda CHAR(5),
  simbologia CHAR(4) NOT NULL,
  es_digital_moneda BIT DEFAULT 0,
  CONSTRAINT pk_pais PRIMARY KEY(id)
);

-- Creando la tabla "region"
CREATE TABLE IF NOT EXISTS region(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  id_pais INT UNSIGNED NOT NULL,
  CONSTRAINT pk_region PRIMARY KEY(id, id_pais),
  CONSTRAINT fk_region_id_pais FOREIGN KEY(id_pais) REFERENCES pais(id)
);

-- Creando la tabla "ciudad"
CREATE TABLE IF NOT EXISTS ciudad(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  es_capital BIT DEFAULT 0,
  id_region INT UNSIGNED NOT NULL,
  CONSTRAINT pk_ciudad PRIMARY KEY(id, id_region),
  CONSTRAINT fk_ciudad_id_region FOREIGN KEY(id_region) REFERENCES region(id)
);

-- Creando la tabla "codigo_postal"
CREATE TABLE IF NOT EXISTS codigo_postal(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  codigo VARCHAR(8) NOT NULL,
  id_ciudad INT UNSIGNED NOT NULL,
  CONSTRAINT pk_codigo_postal PRIMARY KEY(id, id_ciudad),
  CONSTRAINT fk_codigo_postal_id_ciudad FOREIGN KEY(id_ciudad) REFERENCES ciudad(id)
);

-- Creando la tabla "telefono"
CREATE TABLE IF NOT EXISTS telefono(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_pais INT UNSIGNED NOT NULL,
  nro_telefono BIGINT NOT NULL,
  nro_extension INT(8) DEFAULT NULL,
  tipo_telefono ENUM('Fijo', 'Móvil', 'Fax', 'Satelital', 'Otro') NOT NULL,
  CONSTRAINT pk_telefono PRIMARY KEY(id, id_pais),
  CONSTRAINT fk_telefono_id_pais FOREIGN KEY(id_pais) REFERENCES pais(id)
);

-- Creando la tabla "email"
CREATE TABLE IF NOT EXISTS email(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre_usuario VARCHAR(75) NOT NULL,
  organizacion_dominio VARCHAR(45) NOT NULL,
  tipo_dominio VARCHAR(20) NOT NULL,
  CONSTRAINT pk_email PRIMARY KEY(id)
);

-- Creando la tabla "contacto"
CREATE TABLE IF NOT EXISTS contacto(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_email INT UNSIGNED UNIQUE DEFAULT NULL,
  fecha_creacion DATE NOT NULL,
  fecha_modificacion DATE DEFAULT NULL,
  esta_vigente BIT DEFAULT 1,
  CONSTRAINT pk_contacto PRIMARY KEY(id),
  CONSTRAINT fk_contacto_id_email FOREIGN KEY(id_email) REFERENCES email(id)
);

-- Creando la tabla "dimensiones"
CREATE TABLE IF NOT EXISTS dimensiones(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  alto DOUBLE(6, 2) NOT NULL,
  ancho DOUBLE(6, 2) NOT NULL,
  largo DOUBLE(6, 2) DEFAULT NULL,
  unidad_medida ENUM('mm', 'cm', 'm'),
  CONSTRAINT pk_dimensiones PRIMARY KEY(id)
);

-- Creando la tabla "piezas"
CREATE TABLE IF NOT EXISTS piezas(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  descripcion TEXT,
  precio DOUBLE(15, 2) NOT NULL,
  id_dimensiones INT UNSIGNED,
  CONSTRAINT pk_piezas PRIMARY KEY(id),
  CONSTRAINT fk_piezas_id_dimensiones FOREIGN KEY(id_dimensiones) REFERENCES dimensiones(id)
);

-- Creando la tabla "inventario"
CREATE TABLE IF NOT EXISTS inventario(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_piezas INT UNSIGNED NOT NULL,
  cantidad INT NOT NULL,
  ubicacion_pieza VARCHAR(75) NOT NULL,
  estado ENUM('Disponible', 'Agotado', 'Reservado', 'Sin soporte') NOT NULL,
  imagen VARCHAR(255),
  garantia VARCHAR(25) DEFAULT '3 meses',
  material VARCHAR(45),
  observaciones TEXT,
  CONSTRAINT pk_inventario PRIMARY KEY(id, id_piezas),
  CONSTRAINT fk_inventario_id_piezas FOREIGN KEY(id_piezas) REFERENCES piezas(id)
);

-- Creando la tabla "sucursal"
CREATE TABLE IF NOT EXISTS sucursal(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nro_identificacion BIGINT UNIQUE NOT NULL,
  tipo_identificacion ENUM('Tarjeta identidad', 'Cédula ciudadania', 'NIT', 'Pasaporte', 'Libreta militar', 'Otro') NOT NULL,
  nombre VARCHAR(75) NOT NULL,
  linea_direccion1 VARCHAR(100) NOT NULL,
  linea_direccion2 VARCHAR(100),
  id_codigo_postal INT UNSIGNED NOT NULL,
  id_contacto INT UNSIGNED NOT NULL,
  id_inventario INT UNSIGNED NOT NULL,
  CONSTRAINT pk_sucursal PRIMARY KEY(id, id_contacto),
  CONSTRAINT fk_sucursal_id_codigo_postal FOREIGN KEY(id_codigo_postal) REFERENCES codigo_postal(id),
  CONSTRAINT fk_sucursal_id_contacto FOREIGN KEY(id_contacto) REFERENCES contacto(id),
  CONSTRAINT fk_sucursal_id_inventario FOREIGN KEY(id_inventario) REFERENCES inventario(id)
);

-- Creando la tabla "cliente"
CREATE TABLE IF NOT EXISTS cliente(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nro_identificacion BIGINT UNIQUE NOT NULL,
  tipo_identificacion ENUM('Tarjeta identidad', 'Cédula ciudadania', 'NIT', 'Pasaporte', 'Libreta militar', 'Otro') NOT NULL,
  primer_nombre VARCHAR(25) NOT NULL,
  segundo_nombre VARCHAR(25),
  primer_apellido VARCHAR(25) NOT NULL,
  segundo_apellido VARCHAR(25),
  linea_direccion1 VARCHAR(100) NOT NULL,
  linea_direccion2 VARCHAR(100),
  id_codigo_postal INT UNSIGNED NOT NULL,
  id_contacto INT UNSIGNED NOT NULL,
  id_sucursal INT UNSIGNED NOT NULL,
  CONSTRAINT pk_cliente PRIMARY KEY(id, id_contacto, id_sucursal),
  CONSTRAINT fk_cliente_id_codigo_postal FOREIGN KEY(id_codigo_postal) REFERENCES codigo_postal(id),
  CONSTRAINT fk_cliente_id_contacto FOREIGN KEY(id_contacto) REFERENCES contacto(id),
  CONSTRAINT fk_cliente_id_sucursal FOREIGN KEY(id_sucursal) REFERENCES sucursal(id)
);

-- Creando la tabla intermedia "contacto_telefono"
CREATE TABLE IF NOT EXISTS contacto_telefono(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_contacto INT UNSIGNED NOT NULL,
  id_telefono INT UNSIGNED NOT NULL,
  es_principal BIT NOT NULL,
  CONSTRAINT pk_contacto_telefono PRIMARY KEY(id, id_contacto, id_telefono),
  CONSTRAINT fk_contacto_telefono_id_contacto FOREIGN KEY(id_contacto) REFERENCES contacto(id),
  CONSTRAINT fk_contacto_telefono_id_telefono FOREIGN KEY(id_telefono) REFERENCES telefono(id)
);


/* CREANDO LAS TABLAS PARA "vehiculo" */
-- Creando la tabla "marca_vehiculo"
CREATE TABLE IF NOT EXISTS marca_vehiculo(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion TEXT,
  CONSTRAINT pk_marca_vehiculo PRIMARY KEY(id)
);

-- Creando la tabla "vehiculo"
CREATE TABLE IF NOT EXISTS vehiculo(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  placa VARCHAR(10) UNIQUE NOT NULL,
  modelo VARCHAR(20) NOT NULL,
  anio INT(4) NOT NULL,
  color VARCHAR(25) NOT NULL,
  kilometraje DOUBLE,
  id_marca_vehiculo INT UNSIGNED NOT NULL,
  tipo_vehiculo ENUM('Motocicletas', 'Automovil', 'Bicicleta', 'Camión', 'Furgoneta', 'Microbus', 'Bus', 'Buseta', 'Tractocamión', 'Volqueta', 'Otro') NOT NULL,
  id_cliente INT UNSIGNED NOT NULL,
  CONSTRAINT pk_vehiculo PRIMARY KEY(id, id_marca_vehiculo),
  CONSTRAINT fk_vehiculo_id_marca_vehiculo FOREIGN KEY(id_marca_vehiculo) REFERENCES marca_vehiculo(id),
  CONSTRAINT fk_vehiculo_id_cliente FOREIGN KEY(id_cliente) REFERENCES cliente(id)
);


/* CREANDO LAS TABLAS PARA "servicio" */
-- Creando la tabla "tipo_servicio"
CREATE TABLE IF NOT EXISTS tipo_servicio(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(75) NOT NULL,
  descripcion TEXT,
  CONSTRAINT pk_tipo_servicio PRIMARY KEY(id)
);

-- Creando la tabla "servicio"
CREATE TABLE IF NOT EXISTS servicio(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  descripcion TEXT DEFAULT NULL,
  costo DOUBLE(15, 2) NOT NULL,
  id_pais INT UNSIGNED NOT NULL,
  duracion_estimada VARCHAR(75) DEFAULT NULL,
  id_tipo_servicio INT UNSIGNED NOT NULL,
  CONSTRAINT pk_servicio PRIMARY KEY(id, id_tipo_servicio),
  CONSTRAINT fk_servicio_id_pais FOREIGN KEY(id_pais) REFERENCES pais(id),
  CONSTRAINT fk_servicio_id_tipo_servicio FOREIGN KEY(id_tipo_servicio) REFERENCES tipo_servicio(id)
);


/* CREANDO LAS TABLAS PARA "empleado" */
-- Creando la tabla "cargo"
CREATE TABLE IF NOT EXISTS cargo(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  descripcion TEXT,
  salario_minimo DOUBLE(15, 2) NOT NULL,
  salario_maximo DOUBLE(15, 2) NOT NULL,
  CONSTRAINT pk_cargo PRIMARY KEY(id)
);

-- Creando la tabla "empleado"
CREATE TABLE IF NOT EXISTS empleado(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nro_identificacion BIGINT UNIQUE NOT NULL,
  tipo_identificacion ENUM('Tarjeta identidad', 'Cédula ciudadania', 'NIT', 'Pasaporte', 'Libreta militar', 'Otro') NOT NULL,
  primer_nombre VARCHAR(25) NOT NULL,
  segundo_nombre VARCHAR(25),
  primer_apellido VARCHAR(25) NOT NULL,
  segundo_apellido VARCHAR(25),
  id_cargo INT UNSIGNED NOT NULL,
  linea_direccion1 VARCHAR(100) NOT NULL,
  linea_direccion2 VARCHAR(100),
  id_codigo_postal INT UNSIGNED NOT NULL,
  id_contacto INT UNSIGNED NOT NULL,
  id_sucursal INT UNSIGNED NOT NULL,
  CONSTRAINT pk_empleado PRIMARY KEY(id, id_codigo_postal, id_contacto, id_sucursal),
  CONSTRAINT fk_empleado_id_cargo FOREIGN KEY(id_cargo) REFERENCES cargo(id),
  CONSTRAINT fk_empleado_id_codigo_postal FOREIGN KEY(id_codigo_postal) REFERENCES codigo_postal(id),
  CONSTRAINT fk_empleado_id_contacto FOREIGN KEY(id_contacto) REFERENCES contacto(id),
  CONSTRAINT fk_empleado_id_sucursal FOREIGN KEY(id_sucursal) REFERENCES sucursal(id)
);


/* CREANDO LAS TABLAS PARA "reparacion" */
-- Creando la tabla "reparacion"
CREATE TABLE IF NOT EXISTS reparacion(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_vehiculo INT UNSIGNED NOT NULL,
  descripcion TEXT DEFAULT NULL,
  CONSTRAINT pk_reparacion PRIMARY KEY(id, id_vehiculo),
  CONSTRAINT fk_reparacion_id_vehiculo FOREIGN KEY(id_vehiculo) REFERENCES vehiculo(id)
);

-- Creando la tabla intermedia "reparacion_empleado"
CREATE TABLE IF NOT EXISTS reparacion_empleado(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_empleado INT UNSIGNED NOT NULL,
  id_reparacion INT UNSIGNED NOT NULL,
  fecha_hora_inicio DATETIME NOT NULL,
  fecha_hora_final DATETIME NOT NULL,
  comentarios TEXT DEFAULT NULL,
  CONSTRAINT pk_reparacion_empleado PRIMARY KEY(id, id_empleado, id_reparacion),
  CONSTRAINT fk_reparacion_empleado_id_empleado FOREIGN KEY(id_empleado) REFERENCES empleado(id),
  CONSTRAINT fk_reparacion_empleado_id_reparacion FOREIGN KEY(id_reparacion) REFERENCES reparacion(id)
);


/* CREANDO LAS TABLAS PARA "proveedor" */
-- Creando la tabla "proveedor"
CREATE TABLE IF NOT EXISTS proveedor(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nro_identificacion BIGINT NOT NULL,
  tipo_identificacion ENUM('Tarjeta identidad', 'Cédula ciudadania', 'NIT', 'Pasaporte', 'Libreta militar', 'Otro') NOT NULL,
  nombre_empresa VARCHAR(50) NOT NULL,
  linea_direccion1 VARCHAR(100) NOT NULL,
  linea_direccion2 VARCHAR(100),
  id_codigo_postal INT UNSIGNED NOT NULL,
  id_contacto INT UNSIGNED NOT NULL,
  tipo_proveedor ENUM('Persona natural', 'Persona jurídica') NOT NULL,
  CONSTRAINT pk_proveedor PRIMARY KEY(id, id_codigo_postal, id_contacto),
  CONSTRAINT fk_proveedor_id_codigo_postal FOREIGN KEY(id_codigo_postal) REFERENCES codigo_postal(id),
  CONSTRAINT fk_proveedor_id_contacto FOREIGN KEY(id_contacto) REFERENCES contacto(id)
);

-- Creando la tabla "contacto_proveedor"
CREATE TABLE IF NOT EXISTS contacto_proveedor(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  primer_nombre VARCHAR(25) NOT NULL,
  segundo_nombre VARCHAR(25),
  primer_apellido VARCHAR(25) NOT NULL,
  segundo_apellido VARCHAR(25),
  id_proveedor INT UNSIGNED NOT NULL,
  CONSTRAINT pk_contacto_proveedor PRIMARY KEY(id, id_proveedor),
  CONSTRAINT fk_contacto_proveedor_id_proveedor FOREIGN KEY(id_proveedor) REFERENCES proveedor(id)
);

-- Creando la tabla intermedia "proveedor_piezas"
CREATE TABLE IF NOT EXISTS proveedor_piezas(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_proveedor INT UNSIGNED NOT NULL,
  id_piezas INT UNSIGNED NOT NULL,
  marca_pieza VARCHAR(100) NOT NULL,
  anotaciones TEXT DEFAULT NULL,
  CONSTRAINT pk_proveedor_piezas PRIMARY KEY(id, id_proveedor, id_piezas),
  CONSTRAINT fk_proveedor_piezas_id_proveedor FOREIGN KEY(id_proveedor) REFERENCES proveedor(id),
  CONSTRAINT fk_proveedor_piezas_id_piezas FOREIGN KEY(id_piezas) REFERENCES piezas(id)
);

-- Creando la tabla intermedia "reparacion_servicios"
CREATE TABLE IF NOT EXISTS reparacion_servicios(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_reparacion INT UNSIGNED NOT NULL,
  id_servicio INT UNSIGNED NOT NULL,
  id_pieza INT UNSIGNED NOT NULL,
  id_empleado INT UNSIGNED NOT NULL,
  id_cliente INT UNSIGNED NOT NULL,
  cantidad INT NOT NULL CHECK(cantidad > 0),
  estado ENUM('Nuevo', 'Usado', 'Reacondicionado') NOT NULL,
  fecha DATE NOT NULL,
  notas TEXT DEFAULT NULL,
  costo_total DOUBLE(15, 2) DEFAULT NULL,
  CONSTRAINT pk_reparacion_servicios PRIMARY KEY(id, id_reparacion, id_servicio, id_pieza, id_empleado, id_cliente),
  CONSTRAINT fk_reparacion_servicios_id_reparacion FOREIGN KEY(id_reparacion) REFERENCES reparacion(id),
  CONSTRAINT fk_reparacion_servicios_id_servicio FOREIGN KEY(id_servicio) REFERENCES servicio(id),
  CONSTRAINT fK_reparacion_servicios_id_piezas FOREIGN KEY(id_pieza) REFERENCES piezas(id),
  CONSTRAINT fk_reparacion_servicios_id_empleado FOREIGN KEY(id_empleado) REFERENCES empleado(id),
  CONSTRAINT fk_reparacion_servicios_id_cliente FOREIGN KEY(id_cliente) REFERENCES cliente(id)
);


/* CREANDO LAS TABLAS PARA "cita" */
-- Creando la tabla "cita"
CREATE TABLE IF NOT EXISTS cita(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  fecha DATE NOT NULL,
  hora TIME NOT NULL,
  id_vehiculo INT UNSIGNED NOT NULL,
  id_servicio INT UNSIGNED NOT NULL,
  anotaciones TEXT DEFAULT NULL,
  CONSTRAINT pk_cita PRIMARY KEY(id, id_vehiculo, id_servicio),
  CONSTRAINT fk_cita_id_vehiculo FOREIGN KEY(id_vehiculo) REFERENCES vehiculo(id),
  CONSTRAINT fk_cita_id_servicio FOREIGN KEY(id_servicio) REFERENCES servicio(id)
);


/* CREANDO LAS TABLAS PARA "orden_compra" */
-- Creando la tabla "orden_compra"
CREATE TABLE IF NOT EXISTS orden_compra(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  fecha_emision DATE NOT NULL,
  fecha_vencimiento DATE NOT NULL,
  id_empleado INT UNSIGNED NOT NULL,
  id_proveedor INT UNSIGNED NOT NULL,
  id_pais INT UNSIGNED NOT NULL,
  CONSTRAINT pk_orden_compra PRIMARY KEY(id, id_empleado, id_proveedor, id_pais),
  CONSTRAINT fk_orden_compra_id_empleado FOREIGN KEY(id_empleado) REFERENCES empleado(id),
  CONSTRAINT fk_orden_compra_id_proveedor FOREIGN KEY(id_proveedor) REFERENCES proveedor(id),
  CONSTRAINT fk_orden_compra_id_pais FOREIGN KEY(id_pais) REFERENCES pais(id)
);


/* CREANDO LAS TABLAS PARA "orden_detalle" */
-- Creando la tabla "forma_pago"
CREATE TABLE IF NOT EXISTS forma_pago(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  descripcion TEXT DEFAULT NULL,
  es_digital BIT DEFAULT 0,
  CONSTRAINT pk_forma_pago PRIMARY KEY(id)
);

-- Creando la tabla "orden_detalle"
CREATE TABLE IF NOT EXISTS orden_detalle(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_pieza INT UNSIGNED NOT NULL,
  id_orden_compra INT UNSIGNED NOT NULL,
  cantidad INT NOT NULL CHECK(cantidad >= 0),
  precio DOUBLE(15, 2) DEFAULT NULL CHECK(precio >= 0.00),
  id_pais INT UNSIGNED NOT NULL,
  condicion_pago ENUM('Contado', 'Cuotas') NOT NULL,
  id_forma_pago INT UNSIGNED NOT NULL,
  CONSTRAINT pk_orden_detalle PRIMARY KEY(id, id_pieza, id_orden_compra, id_pais, id_forma_pago),
  CONSTRAINT fk_orden_detalle_id_piezas FOREIGN KEY(id_pieza) REFERENCES piezas(id),
  CONSTRAINT fk_orden_detalle_id_orden_compra FOREIGN KEY(id_orden_compra) REFERENCES orden_compra(id),
  CONSTRAINT fk_orden_detalle_id_pais FOREIGN KEY(id_pais) REFERENCES pais(id),
  CONSTRAINT fk_orden_detalle_id_forma_pago FOREIGN KEY(id_forma_pago) REFERENCES forma_pago(id)
);


/* CREANDO LAS TABLAS PARA "factura" */
-- Creando la tabla "factura"
CREATE TABLE IF NOT EXISTS factura(
  id INT NOT NULL AUTO_INCREMENT,
  fecha_emision DATETIME NOT NULL,
  fecha_vencimiento DATETIME NOT NULL,
  id_cliente INT UNSIGNED NOT NULL,
  porcentaje_iva INT(3) NOT NULL,
  descuento INT(3) DEFAULT 0 CHECK(descuento >= 0),
  condicion_pago ENUM("Contado", "Cuotas") NOT NULL,
  id_forma_pago INT UNSIGNED NOT NULL,
  CONSTRAINT pk_factura PRIMARY KEY(id, id_cliente, id_forma_pago),
  CONSTRAINT fk_factura_id_cliente FOREIGN KEY(id_cliente) REFERENCES cliente(id),
  CONSTRAINT fk_factura_id_forma_pago FOREIGN KEY(id_forma_pago) REFERENCES forma_pago(id)
);

-- Creando la tabla "factura_info_servicios"
CREATE TABLE IF NOT EXISTS factura_info_servicios(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_factura INT NOT NULL,
  id_reparacion_servicios INT UNSIGNED NOT NULL,
  costo_iva DOUBLE DEFAULT 0.00 CHECK(costo_iva >= 0.00),
  costo_descuento DOUBLE DEFAULT 0.00 CHECK(costo_descuento >= 0.00),
  subtotal DOUBLE(15, 2) DEFAULT 0.00 CHECK(subtotal >= 0.00),
  descripcion TEXT,
  CONSTRAINT pk_factura_info_servicios PRIMARY KEY(id, id_factura, id_reparacion_servicios),
  CONSTRAINT fk_factura_info_servicios_id_factura FOREIGN KEY(id_factura) REFERENCES factura(id),
  CONSTRAINT fk_factura_info_servicios_id_reparacion_servicios FOREIGN KEY(id_reparacion_servicios) REFERENCES reparacion_servicios(id)
);

-- Creando la tabla intermedia "factura_detalle"
CREATE TABLE IF NOT EXISTS factura_detalle(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_factura INT NOT NULL,
  cantidad INT DEFAULT 0 CHECK(cantidad >= 0),
  precio_agregado DOUBLE(15, 2) DEFAULT 0.00 CHECK(precio_agregado >= 0.00),
  precio_final DOUBLE(15, 2) DEFAULT 0.00 CHECK(precio_final >= 0.00),
  descripcion TEXT DEFAULT NULL,
  CONSTRAINT pk_factura_detalle PRIMARY KEY(id, id_factura),
  CONSTRAINT fk_factura_detalle_id_factura FOREIGN KEY(id_factura) REFERENCES factura(id)
);