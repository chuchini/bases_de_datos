CREATE TABLE Promocion(
nIdPromocion            INT IDENTITY,
sPromocion              VARCHAR(32),
sDia                    VARCHAR(10),
nIdSucursalProducto     INT
);

CREATE TABLE Proveedor(
nIdProveedor            INT IDENTITY,
sProveedor              VARCHAR(32),
sRFC                    CHAR(13),
nIdDireccion            INT
);

CREATE TABLE Proveedor_Ingrediente(
nIdProveedor            INT,
nIdIngrediente          INT,
dFecha                  DATE,
dCosto                  MONEY,
nCantidad               INT,
nIdSucursal             INT,
sNombre                 VARCHAR(16)
);

CREATE TABLE Producto(
nIdProducto       INT IDENTITY,
sProducto         VARCHAR(64)
);

CREATE TABLE Ingrediente_Producto(
nIdIngrediente        INT IDENTITY,
nIdProducto           INT,
sPorcion              VARCHAR(64)
);

CREATE TABLE Ingrediente(
nIdIngrediente        INT IDENTITY,
sIngrediente          VARCHAR(64)
);

CREATE TABLE Cliente(
nIdCliente	  INT IDENTITY,
sMonedero     VARCHAR(32),
sSaldo        FLOAT(10),
nIdPersona	  INT
);

CREATE TABLE Direccion_Persona(
nIdDireccion INT,
nIdPersona   INT
);

CREATE TABLE Persona_Telefono(
nIdPersona       INT,
nIdTelefono      INT,
nIdTipoTelefono  INT
);

CREATE TABLE Sucursal(
nIdSucursal     INT IDENTITY,
sNombre         VARCHAR(16),
nIdDireccion    INT,
nIdTelefono     INT
);

CREATE TABLE CTipoTelefono(
nIdTipoTelefono   INT IDENTITY,
sTipoTelefono     VARCHAR(32)
);

CREATE TABLE Empleado(
nIdEmpleado			INT IDENTITY,
dFechaContratacion  DATE,
sRFC				VARCHAR(13),
nIdPersona			INT,
nIdSucursal			INT,
sNombre				VARCHAR(16)
);

CREATE TABLE Sucursal_Producto(
nIdSucursalProducto		INT IDENTITY,
dPrecio					FLOAT(10),
dFechaActualizacion		DATE,
bActivo					BIT,
nIdSucursal				INT,
nIdProducto				INT,
sNombre					VARCHAR(16)
);

CREATE TABLE Horario(
nIdHorario         INT IDENTITY,
sDia               VARCHAR(16),
tHoraApertura      TIME(7),
tHoraCierre        TIME(7),
nIdSucursal        INT,
sNombre            VARCHAR(16)
);

CREATE TABLE Direccion(
nIdDireccion       INT IDENTITY,
sCalle             VARCHAR(100),
sColonia           VARCHAR(64),
sCp                INT,
sObservaciones     VARCHAR(256),
nIdMunicipio       INT
);

CREATE TABLE CMunicipio(
nIdMunicipio       INT IDENTITY,
sMunicipio         VARCHAR(64),
nIdEstado          INT
);

CREATE TABLE CEstado(
nIdEstado          INT IDENTITY,
sEstado            VARCHAR(30)
);

CREATE TABLE Proveedor_Telefono(
nIdProveedor       INT,
nIdTelefono        INT,
nIdTipoTelefono    INT
);

CREATE TABLE Telefono(
nIdTelefono        INT IDENTITY,
sTelefono          VARCHAR(16)
);

CREATE TABLE Persona(
nIdPersona         INT IDENTITY,
sApp               VARCHAR(32),
sApm               VARCHAR(32),
sNombre            VARCHAR(64),
dFechaNacimiento   DATE,
sCorreo            VARCHAR(126)
);

CREATE TABLE Salsa_Producto(
nIdSalsa    INT,
nIdProducto INT
);

CREATE TABLE DetalleOrden(
nIdDetalleOrden                       INT IDENTITY,
nCantidad                             INT,
bDomicilio                            BIT,
Sucursal_ProductonIdSucursalProducto  INT,
OrdennIdOrden                         INT,
ClientenIdCliente                     INT
);

CREATE TABLE Orden(
nIdOrden      INT IDENTITY,
dTotal        FLOAT,
sDia          VARCHAR(10),
dFecha        DATE,
nIdEmpleado   INT
);

CREATE TABLE Salsa_Ingrediente(
nIdSalsa        INT,
nIdIngrediente  INT,
sPorcion        VARCHAR(64)
);

CREATE TABLE Salsa(
nIdSalsa     INT IDENTITY,
sSalsa       VARCHAR(32),
nIdPicor     INT
);

CREATE TABLE CPicor(
nIdPicor    INT IDENTITY,
sPicor      VARCHAR(32)
);
