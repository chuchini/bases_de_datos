GO
CREATE TABLE Cilindro(
nIdCilindro		INT IDENTITY,
nCilindros		INT
);

CREATE TABLE Transmision(
nIdTransmision	INT IDENTITY,
sTransmision	VARCHAR(18)
);

CREATE TABLE Licencia(
sNoLicencia			VARCHAR(8),
nPuntos				INT,
dFechaExpedicion	DATE,
nVigencia			INT,
sEstatus			VARCHAR(32),
sRFC				VARCHAR(13),
nIdTipoDeLicencia	INTEGER
);

CREATE TABLE Tipo_de_Licencia(
nIdTipoDeLicencia	INT IDENTITY,
sTipoDeLicencia		VARCHAR(16)
);

CREATE TABLE Direccion(
nIdDireccion		INT IDENTITY,
sCalle				VARCHAR(128),
sColonia			VARCHAR(64),
sCP					VARCHAR(5),
bActivo				BIT,
nIdMunicipio		INTEGER
);

CREATE TABLE Direccion_Persona(
nIdDireccion	INTEGER,
sRFC			VARCHAR(13),
bActivo			BIT
);

CREATE TABLE CMunicipio(
nIdMunicipio	INT IDENTITY,
sMunicipio		VARCHAR(64),
nIdEstado		INTEGER
);

CREATE TABLE CEstado(
nIdEstado		INT IDENTITY,
sEstado			VARCHAR(64)
);

CREATE TABLE Persona(
sRFC				VARCHAR(13),
sNombre				VARCHAR(32),
sApp				VARCHAR(32),
sApm				VARCHAR(32),
sGenero				VARCHAR(9),
sCorreo				VARCHAR(128),
dFechaNacimiento	DATE
);

CREATE TABLE Agente(
nNoIdentificacion	INT IDENTITY,
sSector				VARCHAR(128),
sRFC				VARCHAR(13)
);

CREATE TABLE Tipo_de_Auto(
nIdTipoDeAuto	INT IDENTITY,
sTipoDeAuto		VARCHAR(18)
);

CREATE TABLE Modelo(
sNombre					VARCHAR(64),
sNombreMarca			VARCHAR(64),
sNoSerieMotor			VARCHAR(17),
sLugarDeFabricacion		VARCHAR(10),
nIdDireccion			INTEGER,
nIdCilindros			INTEGER,
nIdTipoDeAuto			INTEGER,
nIdTransmision			INTEGER
);

CREATE TABLE Vehiculo(
sNoSerieMotor			VARCHAR(17),
nCapacidadTanque		INT,
dEspacioEquipaje		FLOAT,
nLitrosMotor			FLOAT,
nNoPasajeros			INT,
dFechaInicioPropiedad	DATE,
dFechaFinPropiedad		DATE,
sRFC					VARCHAR(13)
);

CREATE TABLE Persona_Infraccion(
sRFC			VARCHAR(13),
nNoExpediente	INTEGER
);

CREATE TABLE Telefono(
nIdTelefono		INT IDENTITY,
sTelefono		VARCHAR(16),
);

CREATE TABLE Persona_Telefono(
sRFC		VARCHAR(13),
nIdTelefono	INTEGER,
bActivo		BIT
);

CREATE TABLE Marca(
sNombre			VARCHAR(64),
sNombreArmadora	VARCHAR(64),
nIdPais			INTEGER
);

CREATE TABLE Pais(
nIdPais		INT IDENTITY,
sPais		VARCHAR(128)
);

CREATE TABLE Placa(
sNoPlaca		VARCHAR(9),
dFechaInicio	DATE,
dFechaFin		DATE,
sNoSerieMotor	VARCHAR(17),
nIdEstado		INTEGER
);

CREATE TABLE Tarjeta_de_Circulacion(
nNoTarjeta			INT IDENTITY,
dFechaExpedicion	DATE,
nVigencia			INT,
sNoSerieMotor		VARCHAR(17)
);

CREATE TABLE Infraccion(
nNoExpediente		INT IDENTITY,
dFechaHora			DATETIME,
nNoIdentificacion	INTEGER,
sNoSerieMotor		VARCHAR(17),
nIdArticulo			INTEGER,
nIdUbicacion		INTEGER
);

CREATE TABLE Articulo(
nIdArticulo	INT IDENTITY,
sArticulo	VARCHAR(900)
);

CREATE TABLE FotoMulta(
nNoCamara				INT IDENTITY,
nIdUbicacion			INTEGER
);

CREATE TABLE FotoMulta_Placa(
nNoCamara				INTEGER,
sNoPlaca				VARCHAR(9),
sColorAuto				VARCHAR(16),
dFechaHora				DATETIME,
dVelocidadInfraccion	FLOAT
);

CREATE TABLE Multa(
nIdMulta		INT IDENTITY,
sEstado			VARCHAR(64), -- CAMBIAR POR ESTATUS
dImporte		FLOAT,
nNoExpediente	INTEGER,
nNoCamara		INTEGER
);

CREATE TABLE Ubicacion(
nIdUbicacion	INT IDENTITY,
sCalle			VARCHAR(128),
sReferencia		VARCHAR(128),
nIdMunicipio	INTEGER
);

CREATE TABLE Entre_Calles_Ubicacion(
sEntreCalles	VARCHAR(128),
nIdUbicacion	INTEGER
);

--CREACION DE RESTRICCIONES
GO
-- Cilindro
ALTER TABLE Cilindro ALTER COLUMN nCilindros INT NOT NULL;
ALTER TABLE Cilindro ADD CONSTRAINT unq_Cilindro_nCilindros UNIQUE (nCilindros);

-- Transmision
ALTER TABLE Transmision ALTER COLUMN sTransmision VARCHAR(10) NOT NULL;
ALTER TABLE Transmision ADD CONSTRAINT unq_Transmision_sTransmision UNIQUE (sTransmision);

-- Licencia
ALTER TABLE Licencia ALTER COLUMN sNoLicencia VARCHAR(8) NOT NULL;
ALTER TABLE Licencia ALTER COLUMN nPuntos INT NOT NULL;
ALTER TABLE Licencia ALTER COLUMN dFechaExpedicion DATE NOT NULL;
ALTER TABLE Licencia ALTER COLUMN nVigencia INT NOT NULL;
ALTER TABLE Licencia ALTER COLUMN sEstatus VARCHAR(32) NOT NULL;
ALTER TABLE Licencia ALTER COLUMN sRFC VARCHAR(13) NOT NULL;
ALTER TABLE Licencia ALTER COLUMN nIdTipoDeLicencia INTEGER NOT NULL;
ALTER TABLE Licencia ADD CONSTRAINT ck_Licencia_nPuntos CHECK (nPuntos >= 0);
ALTER TABLE Licencia ADD CONSTRAINT ck_Licencia_nVigencia CHECK (nVigencia > 0);
ALTER TABLE Licencia ADD CONSTRAINT unq_Licencia_sNoLicencia UNIQUE (sNoLicencia);

-- Tipo_de_Licencia
ALTER TABLE Tipo_de_Licencia ALTER COLUMN sTipoDeLicencia VARCHAR(16) NOT NULL;

-- Direccion
ALTER TABLE Direccion ALTER COLUMN sCalle VARCHAR(128) NOT NULL;
ALTER TABLE Direccion ALTER COLUMN sColonia VARCHAR(64) NOT NULL;
ALTER TABLE Direccion ALTER COLUMN sCP VARCHAR(5) NOT NULL;
ALTER TABLE Direccion ALTER COLUMN bActivo BIT NOT NULL;
ALTER TABLE Direccion ALTER COLUMN nIdMunicipio INTEGER NOT NULL;

-- Direccion_Persona
ALTER TABLE Direccion_Persona ALTER COLUMN nIdDireccion INTEGER NOT NULL;
ALTER TABLE Direccion_Persona ALTER COLUMN sRFC VARCHAR(13) NOT NULL;
ALTER TABLE Direccion_Persona ALTER COLUMN bActivo BIT NOT NULL;

-- CMunicipio
ALTER TABLE CMunicipio ALTER COLUMN sMunicipio VARCHAR(64) NOT NULL;
ALTER TABLE CMunicipio ALTER COLUMN nIdEstado INTEGER NOT NULL;

-- CEstado
ALTER TABLE CEstado ALTER COLUMN sEstado VARCHAR(64) NOT NULL;
ALTER TABLE CEstado ADD CONSTRAINT unq_CEstado_sEstado UNIQUE (sEstado);

-- Persona
ALTER TABLE Persona ALTER COLUMN sRFC VARCHAR(13) NOT NULL;
ALTER TABLE Persona ALTER COLUMN dFechaNacimiento DATE NOT NULL;
ALTER TABLE Persona ALTER COLUMN sNombre VARCHAR(32) NOT NULL;
ALTER TABLE Persona ALTER COLUMN sApp VARCHAR(32) NOT NULL;
ALTER TABLE Persona ALTER COLUMN sGenero VARCHAR(9) NOT NULL;
ALTER TABLE Persona ALTER COLUMN sCorreo VARCHAR(128) NOT NULL;
ALTER TABLE Persona ADD CONSTRAINT unq_Persona_sCorreo UNIQUE (sCorreo);
ALTER TABLE Persona ADD CONSTRAINT unq_Persona_sRFC UNIQUE (sRFC);

-- Agente
ALTER TABLE Agente ALTER COLUMN sSector VARCHAR(128) NOT NULL;
ALTER TABLE Agente ALTER COLUMN sRFC VARCHAR(13) NOT NULL;
ALTER TABLE Agente ADD CONSTRAINT unq_Agente_nNoIdentificacion UNIQUE (nNoIdentificacion);

-- Tipo_de_Auto
ALTER TABLE Tipo_de_Auto ALTER COLUMN sTipoDeAuto VARCHAR(16) NOT NULL;
ALTER TABLE Tipo_de_Auto ADD CONSTRAINT unq_Tipo_de_Auto_sTipoDeAuto UNIQUE (sTipoDeAuto);

-- Modelo
ALTER TABLE Modelo ALTER COLUMN sNombre VARCHAR(64) NOT NULL;
ALTER TABLE Modelo ALTER COLUMN sNombreMarca VARCHAR(32) NOT NULL;
ALTER TABLE Modelo ALTER COLUMN sNoSerieMotor VARCHAR(17) NOT NULL;
ALTER TABLE Modelo ALTER COLUMN sLugarDeFabricacion VARCHAR(10) NOT NULL;
ALTER TABLE Modelo ALTER COLUMN nIdDireccion INTEGER NOT NULL;
ALTER TABLE Modelo ALTER COLUMN nIdCilindros INTEGER NOT NULL;
ALTER TABLE Modelo ALTER COLUMN nIdTipoDeAuto INTEGER NOT NULL;
ALTER TABLE Modelo ALTER COLUMN nIdTransmision INTEGER NOT NULL;

-- Vehiculo
ALTER TABLE Vehiculo ALTER COLUMN sNoSerieMotor VARCHAR(17) NOT NULL;
ALTER TABLE Vehiculo ALTER COLUMN nCapacidadTanque INT NOT NULL;
ALTER TABLE Vehiculo ALTER COLUMN dEspacioEquipaje FLOAT NOT NULL;
ALTER TABLE Vehiculo ALTER COLUMN nLitrosMotor FLOAT NOT NULL;
ALTER TABLE Vehiculo ALTER COLUMN nNoPasajeros INT NOT NULL;
ALTER TABLE Vehiculo ALTER COLUMN dFechaInicioPropiedad DATE NOT NULL;
ALTER TABLE Vehiculo ALTER COLUMN dFechaFinPropiedad DATE NULL;
ALTER TABLE Vehiculo ALTER COLUMN sRFC VARCHAR(13) NOT NULL; -- VERIFICAR, PUEDE QUE NO SEA NECESARIO.
-- OPCIONAL ALTER TABLE Vehiculo ADD CONSTRAINT ck_Vehiculo_dFechaFinPropiedad CHECK (dFechaFinPropiedad > dFechaInicioPropiedad);
ALTER TABLE Vehiculo ADD CONSTRAINT ck_Vehiculo_dFechaInicioPropiedad CHECK (dFechaInicioPropiedad < dFechaFinPropiedad);
ALTER TABLE Vehiculo ADD CONSTRAINT unq_Vehiculo_sNoSerieMotor UNIQUE (sNoSerieMotor);

-- Persona_Infraccion
ALTER TABLE Persona_Infraccion ALTER COLUMN sRFC VARCHAR(13) NOT NULL;
ALTER TABLE Persona_Infraccion ALTER COLUMN nNoExpediente INTEGER NOT NULL;

-- Telefono
ALTER TABLE Telefono ALTER COLUMN sTelefono VARCHAR(16) NOT NULL;
ALTER TABLE Telefono ADD CONSTRAINT unq_Telefono_sTelefono UNIQUE (sTelefono);

-- Persona_Telefono
ALTER TABLE Persona_Telefono ALTER COLUMN sRFC VARCHAR(13) NOT NULL;
ALTER TABLE Persona_Telefono ALTER COLUMN nIdTelefono INTEGER NOT NULL;
ALTER TABLE Persona_Telefono ALTER COLUMN bActivo BIT NOT NULL;

-- Marca
ALTER TABLE Marca ALTER COLUMN sNombre VARCHAR(32) NOT NULL;
ALTER TABLE Marca ALTER COLUMN sNombreArmadora VARCHAR(64) NOT NULL;
ALTER TABLE Marca ALTER COLUMN nIdPais INTEGER NOT NULL;
ALTER TABLE Marca ADD CONSTRAINT unq_Marca_sNombre UNIQUE (sNombre);

-- Pais
ALTER TABLE Pais ALTER COLUMN sPais VARCHAR(128) NOT NULL;
ALTER TABLE Pais ADD CONSTRAINT unq_Pais_sPais UNIQUE (sPais);

-- Placa
ALTER TABLE Placa ALTER COLUMN sNoPlaca VARCHAR(9) NOT NULL;
ALTER TABLE Placa ALTER COLUMN dFechaInicio DATE NOT NULL;
ALTER TABLE Placa ALTER COLUMN dFechaFin DATE NULL;
ALTER TABLE Placa ALTER COLUMN sNoSerieMotor VARCHAR(17) NOT NULL;
ALTER TABLE Placa ALTER COLUMN nIdEstado INTEGER NOT NULL;
ALTER TABLE Placa ADD CONSTRAINT unq_Placa_sNoPlaca UNIQUE (sNoPlaca);
ALTER TABLE Placa ADD CONSTRAINT ck_Placa_dFechaInicio CHECK (dFechaInicio < dFechaFin);
-- OPCIONAL: ALTER TABLE Placa ADD CONSTRAINT ck_Placa_dFechaFin CHECK (dFechaFin > dFechaInicio);

-- Tarjeta_de_Circulacion
ALTER TABLE Tarjeta_de_Circulacion ALTER COLUMN dFechaExpedicion DATE NOT NULL;
ALTER TABLE Tarjeta_de_Circulacion ALTER COLUMN sNoSerieMotor VARCHAR(17) NOT NULL;
ALTER TABLE Tarjeta_de_Circulacion ADD CONSTRAINT ck_Tarjeta_de_Circulacion_nVigencia CHECK (nVigencia > 0);
ALTER TABLE Tarjeta_de_Circulacion ADD CONSTRAINT unq_Tarjeta_de_Circulacion_nNoTarjeta UNIQUE (nNoTarjeta);

-- Infraccion
ALTER TABLE Infraccion ALTER COLUMN dFechaHora DATETIME NOT NULL;
ALTER TABLE Infraccion ALTER COLUMN nNoIdentificacion INTEGER NOT NULL;
ALTER TABLE Infraccion ALTER COLUMN sNoSerieMotor VARCHAR(17) NOT NULL;
ALTER TABLE Infraccion ALTER COLUMN nIdArticulo INTEGER NOT NULL;
ALTER TABLE Infraccion ALTER COLUMN nIdUbicacion INTEGER NOT NULL;
ALTER TABLE Infraccion ADD CONSTRAINT unq_Infraccion_nNoExpediente UNIQUE (nNoExpediente);

-- Articulo
ALTER TABLE Articulo ALTER COLUMN sArticulo VARCHAR(900) NOT NULL;
ALTER TABLE Articulo ADD CONSTRAINT unq_Articulo_sArticulo UNIQUE (sArticulo);

-- FotoMulta
ALTER TABLE FotoMulta ALTER COLUMN nIdUbicacion INTEGER NOT NULL;

-- FotoMulta_Placa
ALTER TABLE FotoMulta_Placa ALTER COLUMN nNoCamara INTEGER NOT NULL;
ALTER TABLE FotoMulta_Placa ALTER COLUMN sNoPlaca VARCHAR(9) NOT NULL;
ALTER TABLE FotoMulta_Placa ALTER COLUMN dFechaHora DATETIME NOT NULL;
ALTER TABLE FotoMulta_Placa ALTER COLUMN dVelocidadInfraccion FLOAT NOT NULL;
ALTER TABLE FotoMulta_Placa ADD CONSTRAINT ck_FotoMulta_Placa_dVelocidadInfraccion CHECK (dVelocidadInfraccion > 0); -- VERIFICAR LIMITE DE VELOCIDAD INICIAL Y FINAL

-- Multa
ALTER TABLE Multa ALTER COLUMN dImporte FLOAT NOT NULL;
ALTER TABLE Multa ALTER COLUMN  sEstado VARCHAR(64) NOT NULL; -- CAMBIAR POR ESTATUS
ALTER TABLE Multa ADD CONSTRAINT unq_Multa_nIdMulta UNIQUE (nIdMulta);
ALTER TABLE Multa ADD CONSTRAINT unq_Multa_dImporte CHECK (dImporte > 0);

-- Ubicacion
ALTER TABLE Ubicacion ALTER COLUMN sCalle VARCHAR(128) NOT NULL;
ALTER TABLE Ubicacion ALTER COLUMN sReferencia VARCHAR(128) NOT NULL;
ALTER TABLE Ubicacion ALTER COLUMN nIdMunicipio INTEGER NOT NULL;

-- Entre_Calles_Ubicacion
ALTER TABLE Entre_Calles_Ubicacion ALTER COLUMN sEntreCalles VARCHAR(128) NOT NULL;
ALTER TABLE Entre_Calles_Ubicacion ALTER COLUMN nIdUbicacion INTEGER NOT NULL;


-- CREACION DE LLAVES PRIMARIAS Y FORANEAS
GO
-- LLAVES PRIMARIAS
ALTER TABLE Cilindro ADD CONSTRAINT pk_Cilindro_nIdCilindro PRIMARY KEY (nIdCilindro);
ALTER TABLE Transmision ADD CONSTRAINT pk_Transmision_nIdTransmision PRIMARY KEY (nIdTransmision);
ALTER TABLE Licencia ADD CONSTRAINT pk_Licencia_sNoLicencia PRIMARY KEY (sNoLicencia);
ALTER TABLE Direccion ADD CONSTRAINT pk_Direccion_nIdDireccion PRIMARY KEY (nIdDireccion);
ALTER TABLE CMunicipio ADD CONSTRAINT pk_CMunicipio_nIdMunicipio PRIMARY KEY (nIdMunicipio);
ALTER TABLE CEstado ADD CONSTRAINT pk_CEstado_nIdEstado PRIMARY KEY (nIdEstado);
ALTER TABLE Modelo ADD CONSTRAINT pk_Modelo_sNombreModelo PRIMARY KEY (sNombre);
ALTER TABLE Vehiculo ADD CONSTRAINT pk_Vehiculo_sNoSerieMotor PRIMARY KEY (sNoSerieMotor);
ALTER TABLE Telefono ADD CONSTRAINT pk_Telefono_nIdTelefono PRIMARY KEY (nIdTelefono);
ALTER TABLE Persona ADD CONSTRAINT pk_Persona_sRFC PRIMARY KEY (sRFC);
ALTER TABLE Agente ADD CONSTRAINT pk_Agente_nNoIdentificacion PRIMARY KEY (nNoIdentificacion);
ALTER TABLE Tipo_de_Auto ADD CONSTRAINT pk_Tipo_de_Auto_nIdTipoDeAuto PRIMARY KEY (nIdTipoDeAuto);
ALTER TABLE Marca ADD CONSTRAINT pk_Marca_sNombre PRIMARY KEY (sNombre);
ALTER TABLE Pais ADD CONSTRAINT pk_Pais_nIdPais PRIMARY KEY (nIdPais);
ALTER TABLE Placa ADD CONSTRAINT pk_Placa_sNoPlaca PRIMARY KEY (sNoPlaca);
ALTER TABLE Tarjeta_de_Circulacion ADD CONSTRAINT pk_Tarejeta_de_Circulacion_nNoTarjeta PRIMARY KEY (nNoTarjeta);
ALTER TABLE Infraccion ADD CONSTRAINT pk_Infraccion_nNoExpediente PRIMARY KEY (nNoExpediente);
ALTER TABLE Articulo ADD CONSTRAINT pk_Articulo_nIdArticulo PRIMARY KEY (nIdArticulo);
ALTER TABLE FotoMulta  ADD CONSTRAINT pk_FotoMulta_nNoCamara PRIMARY KEY (nNoCamara);
ALTER TABLE Multa ADD CONSTRAINT pk_Multa_nIdMulta PRIMARY KEY (nIdMulta);
ALTER TABLE Ubicacion ADD CONSTRAINT pk_Ubicacion_nIdUbicacion PRIMARY KEY (nIdUbicacion);
ALTER TABLE Tipo_de_Licencia ADD CONSTRAINT pk_Tipo_de_Licencia_nIdTipoDeLicencia PRIMARY KEY (nIdTipoDeLicencia);

-- LLAVES FORANEAS
ALTER TABLE Licencia ADD CONSTRAINT fk_Licencia_sRFC FOREIGN KEY (sRFC) REFERENCES Persona (sRFC);
ALTER TABLE Agente ADD CONSTRAINT fk_Agente_sRFC FOREIGN KEY (sRFC) REFERENCES Persona (sRFC);
ALTER TABLE Modelo ADD CONSTRAINT fk_Modelo_sNombreMarca FOREIGN KEY (sNombreMarca) REFERENCES Marca (sNombre) ON UPDATE CASCADE;
ALTER TABLE Modelo ADD CONSTRAINT fk_Modelo_nIdDireccion FOREIGN KEY (nIdDireccion) REFERENCES Direccion (nIdDireccion) ON UPDATE CASCADE;
ALTER TABLE Modelo ADD CONSTRAINT fk_Modelo_sNoSerieMotor FOREIGN KEY (sNoSerieMotor) REFERENCES Vehiculo (sNoSerieMotor);
ALTER TABLE Modelo ADD CONSTRAINT fk_Modelo_nIdCilindros FOREIGN KEY (nIdCilindros) REFERENCES Cilindro (nIdCilindro);
ALTER TABLE Modelo ADD CONSTRAINT fk_Modelo_nIdTipoDeAuto FOREIGN KEY (nIdTipoDeAuto) REFERENCES Tipo_de_Auto (nIdTipoDeAuto) ON UPDATE CASCADE;
ALTER TABLE Modelo ADD CONSTRAINT fk_Modelo_nIdTransmision FOREIGN KEY (nIdTransmision) REFERENCES Transmision (nIdTransmision) ON UPDATE CASCADE;
ALTER TABLE Vehiculo ADD CONSTRAINT fk_Vehiculo_sRFC FOREIGN KEY (sRFC) REFERENCES Persona (sRFC) ON UPDATE CASCADE;
ALTER TABLE Direccion ADD CONSTRAINT fk_Direccion_nIdMunicipio FOREIGN KEY (nIdMunicipio) REFERENCES CMunicipio (nIdMunicipio);
ALTER TABLE CMunicipio ADD CONSTRAINT fk_CMunicipio_nIdEstado FOREIGN KEY (nIdEstado) REFERENCES CEstado (nIdEstado);

ALTER TABLE Direccion_Persona ADD CONSTRAINT fk_Direccion_Persona_nIdDireccion FOREIGN KEY (nIdDireccion) REFERENCES Direccion (nIdDireccion);
ALTER TABLE Direccion_Persona ADD CONSTRAINT fk_Direccion_Persona_sRFC FOREIGN KEY (sRFC) REFERENCES Persona (sRFC);
ALTER TABLE Direccion_Persona ADD CONSTRAINT pk_Direccion_Persona_nIdDireccion_sRFC PRIMARY KEY (nIdDireccion, sRFC);

ALTER TABLE Persona_Infraccion ADD CONSTRAINT fk_Persona_Infraccion_sRFC FOREIGN KEY (sRFC) REFERENCES Persona (sRFC)
ALTER TABLE Persona_Infraccion ADD CONSTRAINT fk_Persona_Infraccion_nNoExpediente FOREIGN KEY (nNoExpediente) REFERENCES Infraccion (nNoExpediente);
ALTER TABLE Persona_Infraccion ADD CONSTRAINT pk_Persona_Infraccion_sRFC_nNoExpediente PRIMARY KEY (sRFC, nNoExpediente);

ALTER TABLE Persona_Telefono ADD CONSTRAINT fk_Persona_Telefono_sRFC FOREIGN KEY (sRFC) REFERENCES Persona (sRFC);
ALTER TABLE Persona_Telefono ADD CONSTRAINT fk_Persona_Telefono_nIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono (nIdTelefono);
ALTER TABLE Persona_Telefono ADD CONSTRAINT pk_Persona_Telefono_sRFC_nIdTelefono PRIMARY KEY (sRFC, nIdTelefono);

ALTER TABLE FotoMulta_Placa ADD CONSTRAINT fk_FotoMulta_Placa_nNoCamara FOREIGN KEY (nNoCamara) REFERENCES FotoMulta (nNoCamara);
ALTER TABLE FotoMulta_Placa ADD CONSTRAINT fk_FotoMulta_Placa_sNoPlaca FOREIGN KEY (sNoPlaca) REFERENCES Placa (sNoPlaca);
ALTER TABLE FotoMulta_Placa ADD CONSTRAINT pk_FotoMulta_Placa_nNoCamara_sNoPlaca PRIMARY KEY (nNoCamara, sNoPlaca);

ALTER TABLE Licencia ADD CONSTRAINT fk_Licencia_nIdTipoDeLicencia FOREIGN KEY (nIdTipoDeLicencia) REFERENCES Tipo_de_Licencia (nIdTipoDeLicencia) ON UPDATE CASCADE;
ALTER TABLE Marca ADD CONSTRAINT fk_Marca_nIdPais FOREIGN KEY (nIdPais) REFERENCES Pais (nIdPais);
ALTER TABLE Placa ADD CONSTRAINT fk_Placa_sNoSerieMotor FOREIGN KEY (sNoSerieMotor) REFERENCES Vehiculo (sNoSerieMotor);
ALTER TABLE Placa ADD CONSTRAINT fk_Placa_nIdEstado FOREIGN KEY (nIdEstado) REFERENCES CEstado (nIdEstado);
ALTER TABLE Tarjeta_de_Circulacion ADD CONSTRAINT fk_Tarjeta_de_Circulacion_sNoSerieMotor FOREIGN KEY (sNoSerieMotor) REFERENCES Vehiculo (sNoSerieMotor);
ALTER TABLE Infraccion ADD CONSTRAINT fk_Infraccion_nNoIdentificacion FOREIGN KEY (nNoIdentificacion) REFERENCES Agente (nNoIdentificacion) ON UPDATE CASCADE;
ALTER TABLE Infraccion ADD CONSTRAINT fk_Infraccion_sNoSerieMotor FOREIGN KEY (sNoSerieMotor) REFERENCES Vehiculo (sNoSerieMotor) ON DELETE CASCADE;
ALTER TABLE Infraccion ADD CONSTRAINT fk_Infraccion_nIdUbicacion FOREIGN KEY (nIdUbicacion) REFERENCES Ubicacion (nIdUbicacion);
ALTER TABLE Infraccion ADD CONSTRAINT fk_Infraccion_nIdArticulo FOREIGN KEY (nIdArticulo) REFERENCES Articulo (nIdArticulo) ON UPDATE CASCADE;
ALTER TABLE FotoMulta ADD CONSTRAINT fk_FotoMulta_nIdUbicacion FOREIGN KEY (nIdUbicacion) REFERENCES Ubicacion (nIdUbicacion);
ALTER TABLE Multa ADD CONSTRAINT fk_Multa_nNoCamara FOREIGN KEY (nNoCamara) REFERENCES FotoMulta (nNoCamara);
ALTER TABLE Multa ADD CONSTRAINT fk_Multa_nNoExpediente FOREIGN KEY (nNoExpediente) REFERENCES Infraccion (nNoExpediente);
ALTER TABLE Ubicacion ADD CONSTRAINT fk_Ubicacion_nIdMunicipio FOREIGN KEY (nIdMunicipio) REFERENCES CMunicipio (nIdMunicipio);
ALTER TABLE Entre_Calles_Ubicacion ADD CONSTRAINT fk_Entre_Calles_Ubicacion_nIdUbicacion FOREIGN KEY (nIdUbicacion) REFERENCES Ubicacion (nIdUbicacion);
