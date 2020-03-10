--CDia
ALTER TABLE CDia ALTER COLUMN nIdDia integer NOT NULL;
ALTER TABLE CDia ALTER COLUMN sDia varchar(32) NOT NULL;
--Horario
ALTER TABLE Horario ALTER COLUMN nIdHorario int NOT NULL;
ALTER TABLE Horario ALTER COLUMN nIdSucursal int NOT NULL;
ALTER TABLE Horario ALTER COLUMN nIdDia int NOT NULL;
-- Direccion
--ALTER TABLE Direccion ALTER COLUMN nIdDireccion int NOT NULL;
ALTER TABLE Direccion ALTER COLUMN nIdDireccion int NOT NULL;
ALTER TABLE Direccion ALTER COLUMN nIdMunicipio int NOT NULL;
-- CMunicipio
ALTER TABLE CMunicipio ALTER COLUMN nIdMunicipio int NOT NULL;
ALTER TABLE CMunicipio ALTER COLUMN sMunicipio varchar(64) NOT NULL;
ALTER TABLE CMunicipio ALTER COLUMN nIdEstado int NOT NULL;
-- CEstado
ALTER TABLE CEstado ALTER COLUMN nIdEstado int NOT NULL;
ALTER TABLE CEstado ALTER COLUMN sEstado varchar(64) NOT NULL;
--Proveedor_Telefono
ALTER TABLE Proveedor_Telefono ALTER COLUMN nIdProveedor integer NOT NULL;
ALTER TABLE Proveedor_Telefono ALTER COLUMN nIdTelefono integer NOT NULL;
--ALTER TABLE Proveedor_Telefono ALTER COLUMN bActivo int NOT NULL;
ALTER TABLE Proveedor_Telefono ALTER COLUMN nIdTipoTelefono int NOT NULL;
--CTipo_Direccion
ALTER TABLE CTipo_Direccion ALTER COLUMN nIdTipoDireccion integer NOT NULL;
ALTER TABLE CTipo_Direccion ALTER COLUMN sTipoDireccion varchar(32) NOT NULL;
-- Direccion_Persona
ALTER TABLE Direccion_Persona ALTER COLUMN nIdDireccion int NOT NULL;
ALTER TABLE Direccion_Persona ALTER COLUMN nIdPersona int NOT NULL;
--ALTER TABLE Direccion_Persona ALTER COLUMN bActivo bit NOT NULL;
ALTER TABLE Direccion_Persona ALTER COLUMN nIdTipoDireccion integer NOT NULL;
--Persona
ALTER TABLE Persona ALTER COLUMN nIdPersona integer NOT NULL;
ALTER TABLE Persona ALTER COLUMN sApm varchar(32) NOT NULL;
ALTER TABLE Persona ALTER COLUMN sNombre varchar(32) NOT NULL;
ALTER TABLE Persona ALTER COLUMN dFechaNacimiento date NOT NULL;
ALTER TABLE Persona ALTER COLUMN sCorreo varchar(128) NOT NULL;
-- Persona_Telefono
ALTER TABLE Persona_Telefono ALTER COLUMN nIdPersona integer NOT NULL;
ALTER TABLE Persona_Telefono ALTER COLUMN nIdTelefono integer NOT NULL;
ALTER TABLE Persona_Telefono ALTER COLUMN bActivo bit NOT NULL;
ALTER TABLE Persona_Telefono ALTER COLUMN nIdTipoTelefono integer NOT NULL;
-- Telefono
ALTER TABLE Telefono ALTER COLUMN nIdTelefono int NOT NULL;
ALTER TABLE Telefono ALTER COLUMN sTelefono varchar(16) NOT NULL;
-- CTipoTelefono
ALTER TABLE CTipoTelefono ALTER COLUMN nIdTipoTelefono integer NOT NULL;
ALTER TABLE CTipoTelefono ALTER COLUMN sTipoTelefono varchar(32) NOT NULL;
-- Empleado
ALTER TABLE Empleado ALTER COLUMN nIdEmpleado int NOT NULL;
ALTER TABLE Empleado ALTER COLUMN sRFC varchar(13) NOT NULL;
ALTER TABLE Empleado ALTER COLUMN nIdPersona int NOT NULL;
ALTER TABLE Empleado ALTER COLUMN nIdSucursal int NOT NULL;
ALTER TABLE Empleado ALTER COLUMN nIdTipoEmpleado int NOT NULL;
-- CTipo_Empleado
ALTER TABLE CTipo_Empleado ALTER COLUMN nIdTipoEmpleado integer NOT NULL;
ALTER TABLE CTipo_Empleado ALTER COLUMN sTipoEmpleado varchar(16) NOT NULL;
-- Orden
ALTER TABLE Orden ALTER COLUMN nIdOrden int NOT NULL;
ALTER TABLE Orden ALTER COLUMN nIdEmpleado int NOT NULL;
ALTER TABLE Orden ALTER COLUMN nIdDia int NOT NULL;
-- DetalleOrden
ALTER TABLE DetalleOrden ALTER COLUMN nIdDetalleOrden int NOT NULL;
ALTER TABLE DetalleOrden ALTER COLUMN nIdSucursalProducto int NOT NULL;
ALTER TABLE DetalleOrden ALTER COLUMN nIdOrden int NOT NULL;
ALTER TABLE DetalleOrden ALTER COLUMN nIdCliente int NOT NULL;
-- Cliente
ALTER TABLE Cliente ALTER COLUMN nIdCliente int NOT NULL;
ALTER TABLE Cliente ALTER COLUMN sMonedero varchar(32) NOT NULL;
ALTER TABLE Cliente ALTER COLUMN nIdPersona int NOT NULL;
-- Sucursal_Producto
ALTER TABLE Sucursal_Producto ALTER COLUMN nIdSucursalProducto int NOT NULL;
ALTER TABLE Sucursal_Producto ALTER COLUMN nIdSucursal int NOT NULL;
ALTER TABLE Sucursal_Producto ALTER COLUMN nIdProducto int NOT NULL;
-- Promocion
ALTER TABLE Promocion ALTER COLUMN nIdPromocion int NOT NULL;
ALTER TABLE Promocion ALTER COLUMN nIdSucursalProducto int NOT NULL;
ALTER TABLE Promocion ALTER COLUMN nIdDia int NOT NULL;
-- CTipo_Sucursal
ALTER TABLE CTipo_Sucursal ALTER COLUMN nIdTipoSucursal integer NOT NULL;
ALTER TABLE CTipo_Sucursal ALTER COLUMN sTipoSucursal varchar(32) NOT NULL;
-- Proveedor
ALTER TABLE Proveedor ALTER COLUMN nIdProveedor int NOT NULL;
ALTER TABLE Proveedor ALTER COLUMN nIdDireccion int NOT NULL;
-- Proveedor_Ingrediente
ALTER TABLE Proveedor_Ingrediente ALTER COLUMN nIdProveedorIngrediente int	NOT NULL;
ALTER TABLE Proveedor_Ingrediente ALTER COLUMN nIdProveedor int NOT NULL;
ALTER TABLE Proveedor_Ingrediente ALTER COLUMN nIdIngrediente int NOT NULL;
ALTER TABLE Proveedor_Ingrediente ALTER COLUMN nIdSucursal int NOT NULL;
-- Sucursal
ALTER TABLE Sucursal ALTER COLUMN nIdSucursal integer NOT NULL;
ALTER TABLE Sucursal ALTER COLUMN sNombre varchar(16) NOT NULL;
ALTER TABLE Sucursal ALTER COLUMN nIdDireccion integer NOT NULL;
ALTER TABLE Sucursal ALTER COLUMN nIdTelefono integer NOT NULL;
ALTER TABLE Sucursal ALTER COLUMN nIdTipoSucursal integer NOT NULL;
-- Telefono_Proveedor
ALTER TABLE Telefono_Proveedor ALTER COLUMN nIdTelefono int NOT NULL;
ALTER TABLE Telefono_Proveedor ALTER COLUMN nIdProveedor int NOT NULL;
ALTER TABLE Telefono_Proveedor ALTER COLUMN nIdTipoTelefono int NOT NULL;
-- CPicor
ALTER TABLE CPicor ALTER COLUMN nIdPicor int NOT NULL;
ALTER TABLE CPicor ALTER COLUMN sPicor varchar(32) NOT NULL;
-- Salsa
ALTER TABLE Salsa ALTER COLUMN nIdSalsa int NOT NULL;
ALTER TABLE Salsa ALTER COLUMN sSalsa varchar(32) NOT NULL;
ALTER TABLE Salsa ALTER COLUMN nIdPicor int NOT NULL;
-- Salsa_Ingrediente
ALTER TABLE Salsa_Ingrediente ALTER COLUMN nIdSalsa int NOT NULL;
ALTER TABLE Salsa_Ingrediente ALTER COLUMN nIdIngrediente int NOT NULL;
-- CCategoria_Producto
ALTER TABLE CCategoria_Producto ALTER COLUMN nIdCategoria int NOT NULL;
ALTER TABLE CCategoria_Producto ALTER COLUMN sCategoria varchar(32) NOT NULL;
-- Salsa_Producto
ALTER TABLE Salsa_Producto ALTER COLUMN nIdSalsa int NOT NULL;
ALTER TABLE Salsa_Producto ALTER COLUMN nIdProducto int NOT NULL;
-- Ingrediente
ALTER TABLE Ingrediente ALTER COLUMN nIdIngrediente int NOT NULL;
ALTER TABLE Ingrediente ALTER COLUMN sIngrediente varchar(64) NOT NULL;
-- Ingrediente_Producto
ALTER TABLE Ingrediente_Producto ALTER COLUMN nIdIngrediente int NOT NULL;
ALTER TABLE Ingrediente_Producto ALTER COLUMN nIdProducto int NOT NULL;
-- Producto
ALTER TABLE Producto ALTER COLUMN nIdProducto int NOT NULL;
ALTER TABLE Producto ALTER COLUMN sProducto varchar(64) NOT NULL;
ALTER TABLE Producto ALTER COLUMN nIdCategoria int NOT NULL;

/*
UNIQUE CONSTRAINT
*/

--CDia
ALTER TABLE CDia ADD CONSTRAINT uc_Cdia_sDia UNIQUE (sDia);
--Horario
--------- NO TIENE
-- Direccion
--------- NO TIENE
-- CMunicipio
ALTER TABLE CMunicipio ADD CONSTRAINT uc_CMunicipio_sMunicipio UNIQUE (sMunicipio);
-- CEstado
ALTER TABLE CEstado ADD CONSTRAINT uc_CEstado_sEstado UNIQUE (sEstado);
--Proveedor_Telefono
--------- NO TIENE
-- CTipo_Direccion
ALTER TABLE CTipo_Direccion ADD CONSTRAINT uc_CTipo_Direccion_sTipoDireccion UNIQUE (sTipoDireccion);
-- Direccion_Persona
--------- NO TIENE
-- Persona
ALTER TABLE Persona ADD CONSTRAINT uc_Persona_sCorreo UNIQUE(sCorreo);
-- Persona_Telefono
--------- NO TIENE
-- Telefono
ALTER TABLE Telefono ADD CONSTRAINT uc_Telefono_sTelefono UNIQUE (sTelefono);
-- CTipoTelefono
ALTER TABLE CTipoTelefono ADD CONSTRAINT uc_CTipoTelefono_sTipoTelefono UNIQUE(sTipoTelefono);
-- Empleado
ALTER TABLE Empleado ADD CONSTRAINT uc_Empleado_sRFC UNIQUE (sRFC);
-- CTipo_Empleado
ALTER TABLE CTipo_Empleado ADD CONSTRAINT uc_CTipoEmpleado_sTipoEmpleado UNIQUE(sTipoEmpleado);
-- Orden
------- NO TIENE
-- DetalleOrden
------- NO TIENE
-- Cliente
ALTER TABLE Cliente ADD CONSTRAINT uc_Cliente_sMonedero UNIQUE (sMonedero);
-- Sucursal_Producto
------- NO TIENE
-- Promocion
------- NO TIENE
-- CTipo_Sucursal
ALTER TABLE CTipo_Sucursal ADD CONSTRAINT uc_CTipo_Sucursal_STipoSucursal UNIQUE (STipoSucursal);
-- Proveedor
------- NO TIENE
-- Proveedor_Ingrediente
------- NO TIENE
-- Sucursal
ALTER TABLE Sucursal ADD CONSTRAINT uc_Sucursal_sNombre UNIQUE (sNombre);
-- Telefono_Proveedor
------- NO TIENE
-- CPicor
ALTER TABLE CPicor ADD CONSTRAINT uc_CPicor_sPicor UNIQUE (sPicor);
-- Salsa
ALTER TABLE Salsa ADD CONSTRAINT uc_Salsa_sSalsa UNIQUE (sSalsa);
-- Salsa_Ingrediente
------- NO TIENE
-- CCategoria_Producto
ALTER TABLE CCategoria_Producto		ADD CONSTRAINT uc_CCategoria_Producto_sCategoria	UNIQUE(sCategoria);
-- Salsa_Producto
------- NO TIENE
-- Ingrediente
ALTER TABLE Ingrediente ADD CONSTRAINT uc_Ingrediente_sIngrediente UNIQUE (sIngrediente);
-- Ingrediente_Producto
------- NO TIENE
-- Producto
ALTER TABLE Producto				ADD CONSTRAINT uc_Producto_sProducto				UNIQUE (sProducto);