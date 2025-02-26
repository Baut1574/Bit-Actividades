create table sucursal 
(
	sucursal_id SERIAL PRIMARY KEY,
	name_sucursal VARCHAR (100) NOT NULL
);

INSERT INTO sucursal (sucursal_id, name_sucursal)
VALUES(2, 'miluc');



create table modalidad
(
	modalidad_id SERIAL PRIMARY KEY,
	name_modalidad VARCHAR (100) NOT NULL
);

CREATE TABLE origen
(
	origen_id SERIAL PRIMARY KEY,
	name_origen VARCHAR (100) NOT NULL
);

CREATE TABLE tipo_vehiculo
(
	tipo_vehiculo_id SERIAL PRIMARY KEY,
	name_tipo_vehiculo VARCHAR (50) NOT NULL
);