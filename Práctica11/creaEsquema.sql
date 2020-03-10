/* ---------------------------------------------------------------------- */
/* Target DBMS:           MS SQL Server 2012                              */
/* Project file:          creaEsquema.sql                                 */
/* Project name:          pastorenchilado                                 */
/* Author:                Erick O. Matla Cru                              */
/*						  ematla@ciencias.unam.mx                         */
/* Script type:           Database creation script                        */
/* Created on:            2016-10-10 13:05                                */
/* ---------------------------------------------------------------------- */

USE pastorenchilado;
GO

--DDL CDia Table
CREATE TABLE CDia(
nIdDia	INT IDENTITY,
sDia	VARCHAR(16)
);
GO

--DDL Horario Table
CREATE TABLE Horario(
nIdHorario		INT IDENTITY,
tHoraApertura	TIME,
tHoraCierre		TIME,
bActivo			BIT,
nIdSucursal		INTEGER,
nIdDia			INTEGER
);
GO

--DDL Direccion Table
CREATE TABLE Direccion(
nIdDireccion	INT IDENTITY,
sCalle			VARCHAR(128),
sColonia		VARCHAR(64),
sCp				VARCHAR(5),
sObservaciones	VARCHAR(1024),
bActivo			BIT,
nIdMunicipio	INTEGER
);
GO

--DDL CMunicipio Table
CREATE TABLE CMunicipio(
nIdMunicipio	INT IDENTITY,
sMunicipio		VARCHAR(64),
nIdEstado		INTEGER
);
GO

--DDL CEstado Table
CREATE TABLE CEstado(
nIdEstado	INT IDENTITY,
sEstado		VARCHAR(64)
);
GO

--DDL Proveedor_Telefono Table
CREATE TABLE Proveedor_Telefono(
nIdProveedor	INTEGER,
nIdTelefono		INTEGER,
bActivo			BIT,
nIdTipoTelefono	INTEGER
);
GO

--DDL CTipo_Direccion Table
CREATE TABLE CTipo_Direccion(
nIdTipoDireccion	INT IDENTITY,
sTipoDireccion		VARCHAR(64)
);
GO

--DDL Direccion_Persona Table
CREATE TABLE Direccion_Persona(
nIdDireccion	 INTEGER,
nIdPersona		 INTEGER,
bActivo			 BIT,
nIdTipoDireccion INTEGER
);
GO

--DDL Persona Table
CREATE TABLE Persona(
nIdPersona			INT IDENTITY,
sApp				VARCHAR(32),
sApm				VARCHAR(32),
sNombre				VARCHAR(64),
dFechaNacimiento	DATE,
sCorreo				VARCHAR(128)
);
GO

--DDL Persona_Telefono Table
CREATE TABLE Persona_Telefono(
nIdPersona		INTEGER,
nIdTelefono		INTEGER,
bActivo			BIT,
nIdTipoTelefono	INTEGER
);
GO

--DDL Telefono Table
CREATE TABLE Telefono(
nIdTelefono	INT IDENTITY,
sTelefono	VARCHAR(16),
bActivo		BIT
);
GO

--DDL CTipo_Telefono Table
CREATE TABLE CTipoTelefono(
nIdTipoTelefono	INT IDENTITY,
sTipoTelefono	VARCHAR(32)
);
GO

--DDL Empleado Table
CREATE TABLE Empleado(
nIdEmpleado			INT IDENTITY,
dFechaContratacion	DATE,
sRFC				VARCHAR(13),
bActivo				BIT,
nIdPersona			INTEGER,
nIdSucursal			INTEGER,
nIdTipoempleado		INTEGER
);
GO

--DDL CTipo_Empleado Table
CREATE TABLE CTipo_Empleado(
nIdTipoEmpleado	INT IDENTITY,
sTipoEmpleado	VARCHAR(16)
);
GO

--DDL Orden Table
CREATE TABLE Orden(
nIdOrden	INT IDENTITY,
mTotal		MONEY,
dFecha		DATE,
nIdEmpleado	INTEGER,
nIdDia		INTEGER
);
GO

--DDL Detalle_Orden Table
CREATE TABLE DetalleOrden(
nIdDetalleOrden		INT IDENTITY,
nCantidad			INTEGER,
bDomicilio			BIT,
nIdSucursalProducto	INTEGER,
nIdOrden			INTEGER,
nIdCliente			INTEGER
);
GO

--DDL Cliente Table
CREATE TABLE Cliente(
nIdCliente		INT IDENTITY,
sMonedero		VARCHAR(32),
mSaldo			MONEY,
dFechaRegistro	DATE,
bActivo			BIT,
nIdPersona		INTEGER
);
GO

--DDL Sucursal_Producto Table
CREATE TABLE Sucursal_Producto(
nIdSucursalProducto		INT IDENTITY,
mPrecio					MONEY,
dFechaActualizacion		DATE,
bActivo					BIT,
nIdSucursal				INTEGER,
nIdProducto				INTEGER
);
GO

--DDL Promocion Table
CREATE TABLE Promocion (
nIdPromocion		INT IDENTITY,
sPromocion			VARCHAR(1024),
sDetalle			VARCHAR(2048),
nIdDia				INTEGER,
nIdSucursalProducto	INTEGER
);
GO

--DDL CTipo_Sucursal Table
CREATE TABLE CTipo_Sucursal(
nIdTipoSucursal		INT IDENTITY,
sTipoSucursal		VARCHAR(32)
);
GO

--DDL Proveedor Table
CREATE TABLE Proveedor(
nIdProveedor	INT IDENTITY,
sProveedor		VARCHAR(32),
sRFC			VARCHAR(13),
bActivo			BIT,
nIdDireccion	INTEGER
);
GO

--DDL Proveedor_Ingrediente Table
CREATE TABLE Proveedor_Ingrediente(
nIdProveedorIngrediente	INT IDENTITY,
dFecha					DATE,
mCosto					MONEY,
sCantidad				VARCHAR(64),
nIdProveedor			INTEGER,
nIdIngrediente			INTEGER,
nIdSucursal				INTEGER

);
GO

--DDL Sucursal Table
CREATE TABLE Sucursal(
nIdSucursal		INT IDENTITY,
sNombre			VARCHAR(16),
bAdomicilio		BIT,
bACtivo			BIT,
nIdDireccion	INTEGER,
nIdTelefono		INTEGER,
nIdTipoSucursal	INTEGER
);
GO

--DDL Telefono_Proveedor Table
CREATE TABLE Telefono_Proveedor(
nIdTelefono		INTEGER,
nIdProveedor	INTEGER,
bActivo			BIT,
nIdTipoTelefono	INTEGER
);

--DDL CPicor Table
CREATE TABLE CPicor(
nIdPicor	INT IDENTITY,
sPicor		VARCHAR(32),
bActivo		BIT
);
GO

--DDL Salsa Table
CREATE TABLE Salsa(
nIdSalsa	INT IDENTITY,
sSalsa		VARCHAR(32),
bActivo		BIT,
nIdPicor	INTEGER
);
GO

--DDL Salsa_Ingrediente Table
CREATE TABLE Salsa_Ingrediente(
nIdSalsa		INTEGER,
nIdIngrediente	INTEGER,
sPorcion		VARCHAR(64),
bActivo			BIT
);
GO

--DDL CCategoria_Producto
CREATE TABLE CCategoria_Producto(
nIdCategoria	INT IDENTITY,
sCategoria		VARCHAR(32)
);

--DDL Salsa_Producto Table
CREATE TABLE Salsa_Producto(
nIdSalsa	INTEGER,
nIdProducto	INTEGER,
bActivo		BIT
);
GO

--DDL Ingrediente Table
CREATE TABLE Ingrediente(
nIdIngrediente	INT IDENTITY,
sIngrediente	VARCHAR(64),
bActivo			BIT
);
GO

-- DDL Ingrediente_Producto Table
CREATE TABLE Ingrediente_Producto(
nIdIngrediente	INTEGER,
nIdProducto		INTEGER,
sPorcion		VARCHAR(512),
bActivo			BIT
);
GO

--DDL Producto Table
CREATE TABLE Producto(
nIdProducto		INT IDENTITY,
sProducto		VARCHAR(64),
bActivo			BIT,
nIdCategoria	INTEGER
);
GO