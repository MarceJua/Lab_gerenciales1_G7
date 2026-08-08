CREATE DATABASE IF NOT EXISTS electrovibe_db;
USE electrovibe_db;

CREATE TABLE sucursales (
    id_sucursal INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    ciudad VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    precio_actual DECIMAL(10,2) NOT NULL,
    sku VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    dni VARCHAR(20) UNIQUE NOT NULL,
    puesto VARCHAR(100),
    id_sucursal INT,
    FOREIGN KEY (id_sucursal) REFERENCES sucursales(id_sucursal)
);

CREATE TABLE facturas (
    id_factura INT PRIMARY KEY,
    numero_factura VARCHAR(50) UNIQUE NOT NULL,
    fecha_emision DATE NOT NULL,
    id_sucursal INT,
    id_empleado INT,
    total DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (id_sucursal) REFERENCES sucursales(id_sucursal),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);

CREATE TABLE detalles_factura (
    id_detalle INT PRIMARY KEY,
    id_factura INT,
    id_producto INT,
    cantidad INT NOT NULL,
    precio_venta DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (id_factura) REFERENCES facturas(id_factura),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);