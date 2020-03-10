CREATE TABLE Horario(
nIdHorario	  INT IDENTITY,
sDia		  VARCHAR(10) NOT NULL,
tHoraApertura TIME(7),
tHoraCierre   TIME(7),
nIdSucursal   INTEGER,
);

CREATE TABLE Direccion(
nIdDireccion	INT IDENTITY,
sCalle			VARCHAR(128),
sObservaciones  VARCHAR(256),
nIdColonia		INTEGER,
nIdMunicipio    INTEGER
);

CREATE TABLE CColonia(
nIdColonia		INT IDENTITY,
sColonia		VARCHAR(64),
nIdMunicipio	INTEGER,
nIdCp			INTEGER,
);

CREATE TABLE CodigoPostal(
nIdCp	INT IDENTITY,
sCp		VARCHAR(16)
);

CREATE TABLE CMunicipio(
nIdMunicipio	INT IDENTITY,
sMunicipio		VARCHAR(64),
nIdEstado		INTEGER
);

CREATE TABLE CEstado(
nIdEstado	INT IDENTITY,
sEstado		VARCHAR(30)
);

CREATE TABLE Proveedor_Telefono(
nIdProveedor INTEGER NOT NULL,
nIdTelefono INTEGER NOT NULL
);

CREATE TABLE Direccion_Persona(
nIdDireccion INTEGER NOT NULL,
nIdPersona INTEGER NOT NULL
);

CREATE TABLE Persona(
nIdPersona			INT IDENTITY,
sApp				VARCHAR(32),
sApm				VARCHAR(32),
sNombre				VARCHAR(32),
dFechaNacimiento	DATE,
sCorreo				VARCHAR(128)
);

CREATE TABLE Persona_Telefono(
nIdPersona	INTEGER NOT NULL,
nIdTelefono INTEGER NOT NULL
);

CREATE TABLE Telefono(
nIdTelefono		INT IDENTITY,
sTelefono		VARCHAR(16),
nIdTipoTelefono	INTEGER
);

CREATE TABLE CTipoTelefono(
nIdTipoTelefono	INT IDENTITY,
sTipoTelefno	VARCHAR(32)
);

CREATE TABLE Sucursal(
nIdSucursal		INT IDENTITY,
sNombre			VARCHAR(16),
nIdDireccion	INTEGER,
nIdTelefono		INTEGER
);	

CREATE TABLE Cliente(
nIdCliente		INT IDENTITY,
nIdPersona		INTEGER,
nIdMonedero		INTEGER
);

CREATE TABLE Monedero(
nIdMonedero	INT IDENTITY,
sMondero	VARCHAR(32),
sSaldo		FLOAT
);

CREATE TABLE Empleado(
nIdEmpleado			INT IDENTITY,
dFechaContratacion	DATE,
sRFC				VARCHAR(13),
nIdPersona			INTEGER,
nIdSucursal			INTEGER
);

CREATE TABLE Promocion(
nIdPromocion		INT IDENTITY,
sPromocion			VARCHAR(32),
sDia				VARCHAR(10),
nIdSucursalProducto	INTEGER
);

CREATE TABLE Sucursal_Producto(
nIdSucursalProducto		INT IDENTITY,
dPrecio					FLOAT,
dFechaActualizacion		DATE,
bActivo					BIT,
nIdSucursal				INTEGER,
nIdProducto				INTEGER
);

CREATE TABLE DetalleOrden(
nIdDetalleOrden		INT IDENTITY,
nCantidad			INT,
bDomicilio			BIT,
nIdSucursalProducto	INTEGER,
nIdOrden			INTEGER,
nIdCliente			INTEGER
);

CREATE TABLE Orden(
nIdOrden	INT IDENTITY,
dTotal		FLOAT,
dFecha		DATE,
);

CREATE TABLE Proveedor(
nIdProveedor	INT IDENTITY,
sProveedor		VARCHAR(32),
sRFC			VARCHAR(13),
nIdDireccion	INTEGER
);

CREATE TABLE Producto(
nIdProducto	INT IDENTITY,
sProducto	VARCHAR(64),
);

CREATE TABLE Salsa_Producto(
nIdSalsa	INTEGER NOT NULL,
nIdProducto INTEGER NOT NULL
);

CREATE TABLE Proveedor_Ingrediente(
nIdProveedor				 INTEGER NOT NULL,
nIdIngrediente			   	 INTEGER NOT NULL,
nCantidad					 INT,
nIdProveedorIngredienteCosto INTEGER,
nIdSucursal					 INTEGER
);

CREATE TABLE Proveedor_Ingrediente_Costo(
nIdProveedorIngredienteCosto INT IDENTITY,
dCosto						 FLOAT,
nCantidad					 INT,
nIdIngrediente				 INTEGER
);

CREATE TABLE Ingrediente_Producto(
nIdIngrediente	INTEGER NOT NULL,
nIdProducto		INTEGER NOT NULL,
sPorcion		VARCHAR(64)
);

CREATE TABLE Ingrediente(
nIdIngrediente	INT IDENTITY,
sIngrediente	VARCHAR(64)
);

CREATE TABLE Salsa_Ingrediente(
nIdSalsa	   INTEGER NOT NULL,
nIdIngrediente INTEGER NOT NULL
);

CREATE TABLE Salsa(
nIdSalsa		INT IDENTITY,
sSalsa			VARCHAR(32),
nIdPicor		INTEGER
);

CREATE TABLE CPicor(
nIdPicor	INT IDENTITY,
sPicor		INT
);