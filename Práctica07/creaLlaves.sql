--LLAVES PRIMARIAS--
--Promoción.
ALTER TABLE Promocion ADD CONSTRAINT pk_Promocion_nIdPromocion PRIMARY KEY (nIdPromocion);

--Proveedor.
ALTER TABLE Proveedor ADD CONSTRAINT pk_Proveedor_nIdProveedor PRIMARY KEY (nIdProveedor);

--Producto
ALTER TABLE Producto ADD CONSTRAINT pk_Producto_nIdProducto PRIMARY KEY (nIdProducto);

--Ingrediente
ALTER TABLE Ingrediente ADD CONSTRAINT pk_Ingrediente_nIdIngrediente PRIMARY KEY (nIdIngrediente);

--Horario.
ALTER TABLE Horario ADD CONSTRAINT pk_Horario_nIdHorario PRIMARY KEY (nIdHorario);

--Direccion.
ALTER TABLE Direccion ADD CONSTRAINT pk_Direccion_nIdDireccion PRIMARY KEY (nIdDireccion);

--CMunicipio
ALTER TABLE CMunicipio ADD CONSTRAINT pk_CMunicipio_nIdMunicipio PRIMARY KEY (nIdMunicipio);

--CEstado
ALTER TABLE CEstado ADD CONSTRAINT pk_CEstado_nIdEstado PRIMARY KEY (nIdEstado);

--Telefono
ALTER TABLE Telefono ADD CONSTRAINT pk_Telefono_nIdTelefono PRIMARY KEY (nIdTelefono);

--Persona
ALTER TABLE Persona ADD CONSTRAINT pk_Persona_nIdPersona PRIMARY KEY (nIdPersona);

--CTipoTelefono
ALTER TABLE CTipoTelefono ADD CONSTRAINT pk_CTipoTelefono_nIdTipoTelefono PRIMARY KEY (nIdTipoTelefono);

--Empleado.
ALTER TABLE Empleado ADD CONSTRAINT pk_Empleado_nIdEmpleado PRIMARY KEY (nIdEmpleado);

--Sucursal.
ALTER TABLE Sucursal ADD CONSTRAINT pk_Sucursal_nIdSucursal_sNombre PRIMARY KEY (nIdSucursal, sNombre)

--Cliente.
ALTER TABLE Cliente ADD CONSTRAINT pk_Cliente_nIdCliente PRIMARY KEY (nIdCliente);

--Sucursal_Producto
ALTER TABLE Sucursal_Producto ADD CONSTRAINT pk_Sucursal_Producto_nIdSucursalProducto PRIMARY KEY (nIdSucursalProducto);

--DetalleOrden
ALTER TABLE DetalleOrden ADD CONSTRAINT pk_DetalleOrden_nIdDetalleOrden PRIMARY KEY (nIdDetalleOrden);

--Orden.
ALTER TABLE Orden ADD CONSTRAINT pk_Orden_nIdOrden PRIMARY KEY (nIdOrden);

--Salsa
ALTER TABLE Salsa ADD CONSTRAINT pk_Salsa_nIdSalsa PRIMARY KEY (nIdSalsa);

--CPicor
ALTER TABLE CPicor ADD CONSTRAINT pk_CPicor_nIdPicor PRIMARY KEY (nIdPicor);

--LLAVES FORÁNEAS--
-- Promocion
ALTER TABLE Promocion ADD CONSTRAINT fk_Promocion_nIdSucursalProducto FOREIGN KEY (nIdSucursalProducto) REFERENCES Sucursal_Producto(nIdSucursalProducto);

--Proveedor
ALTER TABLE Proveedor ADD CONSTRAINT fk_Proveedor_nIdDireccion FOREIGN KEY (nIdDireccion) REFERENCES Direccion(nIdDireccion);

--Proveedor_Ingrediente
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT fk_Proveedor_Ingrediente_nIdProveedor FOREIGN KEY (nIdProveedor) REFERENCES Proveedor(nIdProveedor);
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT fk_Proveedor_Ingrediente_nIdIngrediente FOREIGN KEY (nIdIngrediente) REFERENCES Ingrediente(nIdIngrediente);
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT pk_Proveedor_Ingrediente_nIdProveedor_nIdIngrediente PRIMARY KEY (nIdProveedor, nIdIngrediente);
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT fk_Proveedor_Ingrediente_nIdSucursal_sNombre FOREIGN KEY (nIdSucursal, sNombre) REFERENCES Sucursal (nIdSucursal, sNombre)

--Ingrediente_Producto
ALTER TABLE Ingrediente_Producto ADD CONSTRAINT fk_Ingrediente_Producto_nIdIngrediente FOREIGN KEY (nIdIngrediente) REFERENCES Ingrediente(nIdIngrediente);
ALTER TABLE Ingrediente_Producto ADD CONSTRAINT fk_Ingrediente_Producto_nIdProducto FOREIGN KEY (nIdProducto) REFERENCES Producto(nIdProducto);
ALTER TABLE Ingrediente_Producto ADD CONSTRAINT pk_Ingrediente_Producto_nIdIngrediente_nIdProducto PRIMARY KEY (nIdIngrediente, nIdProducto);

--Horario
ALTER TABLE Horario ADD CONSTRAINT fk_Horario_nIdSucursal_sNombre FOREIGN KEY (nIdSucursal, sNombre) REFERENCES Sucursal (nIdSucursal, sNombre)

--Direccion
ALTER TABLE Direccion ADD CONSTRAINT fk_Direccion_nIdMunicipio FOREIGN KEY (nIdMunicipio) REFERENCES CMunicipio(nIdMunicipio);

--CMunicipio
ALTER TABLE CMunicipio ADD CONSTRAINT fk_CMunicipio_nIdEstado FOREIGN KEY (nIdEstado) REFERENCES CEstado(nIdEstado);

--Proveedor_Telefono
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT fk_Proveedor_Telefono_nIdProveedor FOREIGN KEY (nIdProveedor) REFERENCES Proveedor(nIdProveedor);
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT fk_Proveedor_Telefono_nIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono(nIdTelefono);
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT pk_Proveedor_Telefono_nIdProveedor_nIdTelefono PRIMARY KEY (nIdProveedor, nIdTelefono);
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT fk_Proveedor_Telefono_nIdTipoTelefono FOREIGN KEY (nIdTipoTelefono) REFERENCES CTipoTelefono(nIdTipoTelefono);

--Direccion_Persona
ALTER TABLE Direccion_Persona ADD CONSTRAINT fk_Direccion_Persona_nIdDireccion FOREIGN KEY (nIdDIreccion) REFERENCES Direccion (nIdDireccion)
ALTER TABLE Direccion_Persona ADD CONSTRAINT fk_Direccion_Persona_nIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
ALTER TABLE Direccion_Persona ADD CONSTRAINT pk_Direccion_Persona_nIdDireccion_nIdPersona PRIMARY KEY (nIdDireccion, nIdPersona);

--Persona_Telefono
ALTER TABLE Persona_Telefono ADD CONSTRAINT fk_Persona_Telefono_nIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
ALTER TABLE Persona_Telefono ADD CONSTRAINT fk_Persona_Telefono_nIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono (nIdTelefono);
ALTER TABLE Persona_Telefono ADD CONSTRAINT pk_Persona_Telefono_nIdPersona_nIdTelefono PRIMARY KEY (nIdPersona, nIdTelefono);
ALTER TABLE Persona_Telefono ADD CONSTRAINT fk_Persona_Telefono_nIdTipoTelefono FOREIGN KEY (nIdTipoTelefono) REFERENCES CTipoTelefono (nIdTipoTelefono);

--Empleado
ALTER TABLE Empleado ADD CONSTRAINT fk_Empleado_nIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
ALTER TABLE Empleado ADD CONSTRAINT fk_Empleado_nIdSucursal_sNombre FOREIGN KEY (nIdSucursal, sNombre) REFERENCES Sucursal (nIdSucursal, sNombre)

--Sucursal
ALTER TABLE Sucursal ADD CONSTRAINT fk_Sucursal_nIdDireccion FOREIGN KEY (nIdDireccion) REFERENCES Direccion (nIdDireccion);
ALTER TABLE Sucursal ADD CONSTRAINT fk_Sucursal_nIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono (nIdTelefono);

--Cliente
ALTER TABLE Cliente ADD CONSTRAINT fk_Cliente_nIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);

--Sucursal_Producto
ALTER TABLE Sucursal_Producto ADD CONSTRAINT fk_Sucursal_Producto_nIdProducto FOREIGN KEY (nIdProducto) REFERENCES Producto (nIdProducto);
ALTER TABLE Sucursal_Producto ADD CONSTRAINT fk_Sucursal_Producto_nIdSucursal_sNombre FOREIGN KEY (nIdSucursal, sNombre) REFERENCES Sucursal (nIdSucursal, sNombre)

--Salsa_Producto
ALTER TABLE Salsa_Producto ADD CONSTRAINT fk_Salsa_Producto_nIdSalsa FOREIGN KEY (nIdSalsa) REFERENCES Salsa (nIdSalsa);
ALTER TABLE Salsa_Producto ADD CONSTRAINT fk_Salsa_Producto_nIdProducto FOREIGN KEY (nIdProducto) REFERENCES Producto (nIdProducto);
ALTER TABLE Salsa_Producto ADD CONSTRAINT pk_Salsa_Producto_nIdSalsa_nIdProducto PRIMARY KEY (nIdSalsa, nIdProducto);

--DetalleOrden
ALTER TABLE DetalleOrden ADD CONSTRAINT fk_DetalleOrden_nIdSucursalProducto FOREIGN KEY (Sucursal_ProductonIdSucursalProducto) REFERENCES Sucursal_Producto (nIdSucursalProducto);
ALTER TABLE DetalleOrden ADD CONSTRAINT fk_DetalleOrden_nIdOrden FOREIGN KEY (OrdennIdOrden) REFERENCES Orden (nIdOrden);
ALTER TABLE DetalleOrden ADD CONSTRAINT fk_DetalleOden_nIdCliente FOREIGN KEY (ClientenIdCliente) REFERENCES Cliente (nIdCliente);

--Orden
ALTER TABLE Orden ADD CONSTRAINT fk_Orden_nIdEmpleado FOREIGN KEY (nIdEmpleado) REFERENCES Empleado (nIdEmpleado);

--Salsa_Ingrediente
ALTER TABLE Salsa_Ingrediente ADD CONSTRAINT fk_Salsa_Ingrediente_nIdSalsa FOREIGN KEY (nIdSalsa) REFERENCES Salsa (nIdSalsa);
ALTER TABLE Salsa_Ingrediente ADD CONSTRAINT fk_Salsa_Ingrediente_nIdIngrediente FOREIGN KEY (nIdIngrediente) REFERENCES Ingrediente (nIdIngrediente);
ALTER TABLE Salsa_Ingrediente ADD CONSTRAINT pk_Salsa_Ingrediente_nIdSalsa_nIdIngrediente PRIMARY KEY (nIdSalsa, nIdIngrediente);

--Salsa
ALTER TABLE Salsa ADD CONSTRAINT fk_Salsa_nIdPicor FOREIGN KEY (nIdPicor) References CPicor (nIdPicor);