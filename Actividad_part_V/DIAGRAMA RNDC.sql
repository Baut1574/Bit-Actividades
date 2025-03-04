CREATE TABLE "Sucursal" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "nombre" varchar(255),
  "origen" varchar(255),
  "destino" varchar(255)
);

CREATE TABLE "Cliente" (
  "nit" varchar(20) PRIMARY KEY,
  "nombre" varchar(255),
  "direccion" varchar(255)
);

CREATE TABLE "OrdenServicio" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "fecha" date,
  "num_orden" int,
  "documento" varchar(50),
  "razon" text,
  "observaciones" text,
  "cliente_nit" varchar(20),
  "sucursal_id" int
);

ALTER TABLE "Cliente" ADD FOREIGN KEY ("nit") REFERENCES "OrdenServicio" ("cliente_nit");

ALTER TABLE "Sucursal" ADD FOREIGN KEY ("id") REFERENCES "OrdenServicio" ("sucursal_id");
