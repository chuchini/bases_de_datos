-- 1. Indicamos que el atributo de las observaciones puede ser nulo    
ALTER TABLE Direccion ALTER COLUMN sObservaciones VARCHAR(256) NULL;

-- 2. Indicamos que el atributo de la calle NO puede ser nulo
ALTER TABLE Direccion ALTER COLUMN sCalle VARCHAR(128) NOT NULL;

-- 3. Indicamos que el atributo de la colonia NO puede ser nulo
ALTER TABLE Direccion ALTER COLUMN sColonia VARCHAR(64) NOT NULL;

-- 4. Indicamos que el nombre de un municipio sea único para la base de datos
ALTER TABLE CMunicipio ADD CONSTRAINT unq_CMunicipio_sMunicipio UNIQUE (sMunicipio);

-- 5. Indicamos que el nombre de un estado sea único para la base de datos
ALTER TABLE CEstado ADD CONSTRAINT unq_CEstado_sEstado UNIQUE (sEstado);

-- 6. Indicamos que el número de un Telefono sea único para la base de datos
ALTER TABLE Telefono ADD CONSTRAINT unq_Telefono_sTelefono UNIQUE (sTelefono);

--AQUÍ ES PARA EL PUNTO EXTRA DEL FORMATO DEL TELÉFONO, CHAVOS JIJI
--Indicamos que el formato del número sea de la forma dd-dd-dd-dd-dd, es decir, cada 2 dígitos separados por un guión
ALTER TABLE Telefono ADD CONSTRAINT chk_Telefono CHECK (sTelefono LIKE '[0-9][0-9]-[0-9][0-9]-[0-9][0-9]-[0-9][0-9]-[0-9][0-9]');

-- 7. Indicamos que el correo de una Persona sea único para la base de datos
ALTER TABLE Persona ADD CONSTRAINT unq_Persona_sCorreo UNIQUE (sCorreo);

-- 8. Indicamos que el atributo del apellido materno puede ser nulo    ??
ALTER TABLE Persona ALTER COLUMN sApm VARCHAR(32) NULL;

-- 9. Indicamos que el atributo del nombre NO puede ser nulo    
ALTER TABLE Persona ALTER COLUMN sNombre VARCHAR(64) NOT NULL;

-- 10. Indicamos que el nombre del Producto NO puede ser nulo.
ALTER TABLE Producto ALTER COLUMN sProducto VARCHAR(64) NOT NULL;

-- 11. Indicamos que el nombre del Producto sea único para la base de datos.
ALTER TABLE Producto ADD CONSTRAINT unq_Producto_sProducto UNIQUE (sProducto);

-- 12. Indicamos que el nombre del Ingrediente NO puede ser nulo.
ALTER TABLE Ingrediente ALTER COLUMN sIngrediente VARCHAR(64) NOT NULL;

-- 13.Indicamos que el nombre del Ingrediente sea único para la base de datos.
ALTER TABLE Ingrediente ADD CONSTRAINT unq_Ingrediente_sIngrediente UNIQUE (sIngrediente);

-- 14. Indicamos que todos los valores del atributo dCosto de la tabla Proveedor_Ingrediente sean un número positivo o el cero. 
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT chk_Proveedor_Ingrediente_dCosto CHECK (dCosto >= 0);

-- 15. Indicamos que todos los valores del atributo nCantidad de la tabla Proveedor_Ingrediente sean un número positivo o cero.
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT chk_Proveedor_Ingrediente_nCantidad CHECK (nCantidad >= 0);

-- 16. Indicamos que el RFC de un Proveedor NO puede ser nulo.
ALTER TABLE Proveedor ALTER COLUMN sRFC VARCHAR(13) NOT NULL;

-- 17. Indicamos que el RFC de un Proveedor siga el formato establecido con homoclave.
ALTER TABLE Proveedor ADD CONSTRAINT chk_Proveedor_sRFC CHECK (sRFC LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z0-9][A-Z0-9][0-9]');

-- 18. Indicamos que el nombre del Proveedor NO puede ser nulo.
ALTER TABLE Proveedor ALTER COLUMN sProveedor VARCHAR(32) NOT NULL;

-- 19. Indica que el número de tarjeta del monedero debe de ser único.
ALTER TABLE Cliente ADD CONSTRAINT unq_Cliente_sMonedero UNIQUE (sMonedero);

-- 20. Indica que el saldo del monedero debe ser mayor o igual a 0.
ALTER TABLE Cliente ADD CONSTRAINT chk_Cliente_sSaldo CHECK (sSaldo >= 0);

-- 21. Indica que el precio de un producto debe de ser mayor o igual a 0.
ALTER TABLE Sucursal_Producto ADD CONSTRAINT chk_Sucursal_Producto_dPrecio CHECK (dPrecio >= 0);

-- 22. Verifica que el RFC de un empleado no sea nulo.
ALTER TABLE Empleado ALTER COLUMN sRFC VARCHAR(13) NOT NULL

-- 23. Indica que el RFC de un empleado debe de ser único.
ALTER TABLE Empleado ADD CONSTRAINT unq_Empleado_sRFC UNIQUE (sRFC);

-- 24. Verifica el formato del RFC para que sea correcto.
ALTER TABLE Empleado ADD CONSTRAINT chk_Empleado_sRFC_Formato CHECK (sRFC LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z0-9][A-Z0-9][0-9]');

-- 25. Indica que el atributo debe de ser único.
ALTER TABLE CTipoTelefono ADD CONSTRAINT unq_CTipoTelefono_sTipoTelefono UNIQUE (sTipoTelefono)

-- 26. Indica que el nombre de una sucursal no puede ser nulo.
ALTER TABLE Sucursal ALTER COLUMN sNombre VARCHAR(16) NOT NULL;

-- 27. Indica que el nombre de la salsa no puede ser nulo.
ALTER TABLE Salsa ALTER COLUMN sSalsa VARCHAR(32) NOT NULL;

-- 28. Verfica que el precio de un ingrediente no sea negativo.
ALTER TABLE Orden ADD CONSTRAINT chk_Orden_dTotal CHECK (dTotal >= 0);

-- 29. Indica que el picor de una salsa debe ser único.
ALTER TABLE CPicor ADD CONSTRAINT unq_CPicor_sPicor UNIQUE (sPicor);

-- 30. Aseguramos que la cantidad de la orden no posea un valor negativo.
ALTER TABLE DetalleOrden ADD CONSTRAINT chk_DetalleOrden_nCantidad CHECK (nCantidad >= 0);

--Restricciones para evitar valores nulos en las tablas de llaves primarias compuestas.
ALTER TABLE Proveedor_Ingrediente ALTER COLUMN nIdProveedor INT NOT NULL;
ALTER TABLE Proveedor_Ingrediente ALTER COLUMN nIdIngrediente INT NOT NULL;

ALTER TABLE Ingrediente_Producto ALTER COLUMN nIdIngrediente INT NOT NULL;
ALTER TABLE Ingrediente_Producto ALTER COLUMN nIdProducto INT NOT NULL;

ALTER TABLE Proveedor_Telefono ALTER COLUMN nIdProveedor INT NOT NULL;
ALTER TABLE Proveedor_Telefono ALTER COLUMN nIdTelefono INT NOT NULL;

ALTER TABLE Direccion_Persona ALTER COLUMN nIdDireccion INT NOT NULL;
ALTER TABLE Direccion_Persona ALTER COLUMN nIdPersona INT NOT NULL;

ALTER TABLE Persona_Telefono ALTER COLUMN nIdPersona INT NOT NULL;
ALTER TABLE Persona_Telefono ALTER COLUMN nIdTelefono INT NOT NULL;

ALTER TABLE Salsa_Producto ALTER COLUMN nIdSalsa INT NOT NULL;
ALTER TABLE Salsa_Producto ALTER COLUMN nIdProducto INT NOT NULL;

ALTER TABLE Salsa_Ingrediente ALTER COLUMN nIdSalsa INT NOT NULL;
ALTER TABLE Salsa_Ingrediente ALTER COLUMN nIdIngrediente INT NOT NULL;

