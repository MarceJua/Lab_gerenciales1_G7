USE electrovibe_db;

-- 1. Cargar Sucursales
LOAD DATA INFILE '/var/lib/mysql-files/sucursales.csv'
INTO TABLE sucursales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 2. Cargar Productos
LOAD DATA INFILE '/var/lib/mysql-files/productos.csv'
INTO TABLE productos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 3. Cargar Empleados
LOAD DATA INFILE '/var/lib/mysql-files/empleados.csv'
INTO TABLE empleados
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 4. Cargar Facturas
LOAD DATA INFILE '/var/lib/mysql-files/facturas.csv'
INTO TABLE facturas
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 5. Cargar Detalles de Factura
LOAD DATA INFILE '/var/lib/mysql-files/detalles_factura.csv'
INTO TABLE detalles_factura
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;