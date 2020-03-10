--LlAVES PRIMARIAS

--Horario
ALTER TABLE Horario ADD CONSTRAINT pk_Horario_nIdHorario_sDia PRIMARY KEY (nIdHorario, sDia);

--Direccion
ALTER TABLE Direccion ADD CONSTRAINT pk_Direccion_nIdDireccion PRIMARY KEY (nIdDireccion);

--CColonia
ALTER TABLE CColonia ADD CONSTRAINT pk_CColonia_nIdColonia PRIMARY KEY (nIdColonia);

--CodigoPostal
ALTER TABLE CodigoPostal ADD CONSTRAINT pk_CodigoPostal_nIdCp PRIMARY KEY (nIdCp);

--CMunicipio
ALTER TABLE CMunicipio ADD CONSTRAINT pk_CMunicipio_nIdMunicipio PRIMARY KEY (nIdMunicipio);

--CEstado
ALTER TABLE CEstado ADD CONSTRAINT pk_CEstado_nIdEstado PRIMARY KEY (nIdEstado);

--Persona
ALTER TABLE Persona ADD CONSTRAINT pk_Persona_nIdPersona PRIMARY KEY (nIdPersona);

--Telefono
ALTER TABLE Telefono ADD CONSTRAINT pk_Telefono_nIdTelefono PRIMARY KEY (nIdTelefono);

--CTipoTelefono
ALTER TABLE CTipoTelefono ADD CONSTRAINT pk_CTipoTelefono PRIMARY KEY (nIdTipoTelefono);

--Sucursal
ALTER TABLE Sucursal ADD CONSTRAINT pk_Sucursal_nIdSucursal PRIMARY KEY (nIdSucursal);

--Cliente
ALTER TABLE Cliente ADD CONSTRAINT pk_Cliente_nIdCliente PRIMARY KEY (nIdCliente);

--Monedero
ALTER TABLE Monedero ADD CONSTRAINT pk_Monedero_nIdMonedero PRIMARY KEY (nIdMonedero);

--Empleado
ALTER TABLE Empleado ADD CONSTRAINT pk_Empleado_nIdEmpleado PRIMARY KEY (nIdEmpleado);

--Promocion
ALTER TABLE Promocion ADD CONSTRAINT pk_Promocion_nIdPromocion PRIMARY KEY (nIdPromocion);

--Sucursal_Producto
ALTER TABLE Sucursal_Producto ADD CONSTRAINT pk_Sucursal_Producto_nIdSucursalProducto PRIMARY KEY (nIdSucursalProducto);

--DetalleOrden
ALTER TABLE DetalleOrden ADD CONSTRAINT pk_Detalle_Orden_nIdDetalleOrden PRIMARY KEY (nIdDetalleOrden);

--Orden
ALTER TABLE Orden ADD CONSTRAINT pk_Orden_nIdOrden PRIMARY KEY (nIdOrden);

--Proveedor
ALTER TABLE Proveedor ADD CONSTRAINT pk_Proveedor_nIdProveedor PRIMARY KEY (nIdProveedor);

--Proveedor_Ingrediente_Costo
ALTER TABLE Proveedor_Ingrediente_Costo ADD CONSTRAINT pk_Proveedor_Ingrediente_Costo_nIdProveedorIngredienteCosto PRIMARY KEY (nIdProveedorIngredienteCosto);

--Producto
ALTER TABLE Producto ADD CONSTRAINT pk_Producto_nIdProducto PRIMARY KEY (nIdProducto);

--Ingrediente
ALTER TABLE Ingrediente ADD CONSTRAINT pk_Ingrediente_nIdIngrediente PRIMARY KEY (nIdIngrediente);

--Salsa
ALTER TABLE Salsa ADD CONSTRAINT pk_Salsa_nIdSalsa PRIMARY KEY (nIdSalsa);

--CPicor
ALTER TABLE CPicor ADD CONSTRAINT pk_CPicor_nIdPicor PRIMARY KEY (nIdPicor);

--LLAVES FORANEAS

--Horario
ALTER TABLE Horario ADD CONSTRAINT fk_Horario_nIdSucursal FOREIGN KEY (nIdSucursal) REFERENCES Sucursal (nIdSucursal);

--Direccion
ALTER TABLE Direccion ADD CONSTRAINT fk_Direccion_nIdMunicipio FOREIGN KEY (nIdMunicipio) REFERENCES CMunicipio (nIdMunicipio);
ALTER TABLE Direccion ADD CONSTRAINT fk_Direccion_nIdColonia FOREIGN KEY (nIdColonia) REFERENCES CColonia (nIdColonia);

--CColonia
ALTER TABLE CColonia ADD CONSTRAINT fk_CColonia_nIdMunicipio FOREIGN KEY (nIdMunicipio) REFERENCES CMunicipio (nIdMunicipio);
ALTER TABLE CColonia ADD CONSTRAINT fk_CColonia_nIdCp FOREIGN KEY (nIdCp) REFERENCES CodigoPostal (nIdCp);

--CMunicipio
ALTER TABLE CMunicipio ADD CONSTRAINT fk_CMunicipio_nIdEstado FOREIGN KEY (nIdEstado) REFERENCES CEstado (nIdEstado);

--Proveedor_Telefono
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT fk_Proveedor_Telefono_nIdProveedor FOREIGN KEY (nIdProveedor) REFERENCES Proveedor (nIdProveedor);
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT fk_Proveedor_Telefono_nIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono (nIdTelefono);
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT pk_Proveedor_Telefono_nIdTelefono PRIMARY KEY (nIdProveedor, nIdTelefono)

--Direccion_Persona
ALTER TABLE Direccion_Persona ADD CONSTRAINT fk_Direccion_Persona_nIdDireccion FOREIGN KEY (nIdDIreccion) REFERENCES Direccion (nIdDireccion)
ALTER TABLE Direccion_Persona ADD CONSTRAINT fk_Direccion_Persona_nIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
ALTER TABLE Direccion_Persona ADD CONSTRAINT pk_Direccion_Persona_nIdDireccion_nIdPersona PRIMARY KEY (nIdDireccion, nIdPersona);

--Persona_Telefono
ALTER TABLE Persona_Telefono ADD CONSTRAINT fk_Persona_Telefono_nIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
ALTER TABLE Persona_Telefono ADD CONSTRAINT fk_Persona_Telefono_nIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono (nIdTelefono);
ALTER TABLE Persona_Telefono ADD CONSTRAINT pk_Persona_Telefono_nIdPersona_nIdTelefono PRIMARY KEY (nIdPersona, nIdTelefono);

--Telefono
ALTER TABLE Telefono ADD CONSTRAINT fk_Telefono_nIdTipoTelefono FOREIGN KEY (nIdTipoTelefono) REFERENCES CTipoTelefono (nIdTipoTelefono);

--Sucursal
ALTER TABLE Sucursal ADD CONSTRAINT fk_Sucursal_nIdDireccion FOREIGN KEY (nIdDireccion) REFERENCES Direccion (nIdDireccion);
ALTER TABLE Sucursal ADD CONSTRAINT fk_Sucursal_nIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono (nIdTelefono);

--Cliente
ALTER TABLE Cliente ADD CONSTRAINT fk_Cliente_nIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
ALTER TABLE Cliente ADD CONSTRAINT fk_Cliente_nIdMonedero FOREIGN KEY (nIdMonedero) REFERENCES Monedero (nIdMonedero);

--Empleado
ALTER TABLE Empleado ADD CONSTRAINT fk_Empleado_nIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
ALTER TABLE Empleado ADD CONSTRAINT fk_Empleado_nIdSucursal FOREIGN KEY (nIdSucursal) REFERENCES Sucursal (nIdSucursal);

--Promocion
ALTER TABLE Promocion ADD CONSTRAINT fk_Promocion_nIdSucursalProducto FOREIGN KEY (nIdSucursalProducto) REFERENCES Sucursal_Producto (nIdSucursalProducto);

--Sucursal_Prodcto
ALTER TABLE Sucursal_Producto ADD CONSTRAINT fk_Sucursal_Producto_nIdSucursal FOREIGN KEY (nIdSucursal) REFERENCES Sucursal (nIdSucursal);
ALTER TABLE Sucursal_Producto ADD CONSTRAINT fk_Sucursal_Producto_nIdProducto FOREIGN KEY (nIdProducto) REFERENCES Producto (nIdProducto);

--DetalleOrden
ALTER TABLE DetalleOrden ADD CONSTRAINT fk_DetalleOrden_nIdSucursalProducto FOREIGN KEY (nIdSucursalProducto) REFERENCES Sucursal_Producto (nIdSucursalProducto);
ALTER TABLE DetalleOrden ADD CONSTRAINT fk_DetalleOrden_nIdOrden FOREIGN KEY (nIdOrden) REFERENCES Orden (nIdOrden);
ALTER TABLE DetalleOrden ADD CONSTRAINT fk_DetalleOrden_nIdCliente FOREIGN KEY (nIdCliente) REFERENCES Cliente (nIdCliente);

--Proveedor
ALTER TABLE Proveedor ADD CONSTRAINT fk_Proveedor_nIdDireccion FOREIGN KEY (nIdDireccion) REFERENCES Direccion (nIdDireccion);

--Salsa_Producto
ALTER TABLE Salsa_Producto ADD CONSTRAINT fk_Salsa_Producto_nIdSalsa FOREIGN KEY (nIdSalsa) REFERENCES Salsa (nIdSalsa);
ALTER TABLE Salsa_Producto ADD CONSTRAINT fk_Salsa_Producto_nIdProducto FOREIGN KEY (nIdProducto) REFERENCES Producto (nIdProducto);
ALTER TABLE Salsa_Producto ADD CONSTRAINT pk_Salsa_Producto_nIdSalsa_nIdProducto PRIMARY KEY (nIdSalsa, nIdProducto);	

--Proveedor_Ingrediente
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT fk_Proveedor_Ingrediente_nIdProveedor FOREIGN KEY (nIdProveedor) REFERENCES Proveedor(nIdProveedor);
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT fk_Proveedor_Ingrediente_nIdIngrediente FOREIGN KEY (nIdIngrediente) REFERENCES Ingrediente(nIdIngrediente);
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT pk_Proveedor_Ingrediente_nIdProveedor_nIdIngrediente PRIMARY KEY (nIdProveedor, nIdIngrediente);
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT fk_Proveedor_Ingrediente_nIdSucursal FOREIGN KEY (nIdSucursal) REFERENCES Sucursal (nIdSucursal)
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT fk_Proveedor_Ingrediente_nIdProveedorIngredienteCosto FOREIGN KEY (nIdProveedorIngredienteCosto) REFERENCES Proveedor_Ingrediente_Costo (nIdProveedorIngredienteCosto);

--Proveedor_Ingrediente_Costo
ALTER TABLE Proveedor_Ingrediente_Costo ADD CONSTRAINT fk_Proveedor_Ingrediente_Costo_nIdIngrediente FOREIGN KEY (nIdIngrediente) REFERENCES Ingrediente (nIdIngrediente);

--Ingrediente_Producto
ALTER TABLE Ingrediente_Producto ADD CONSTRAINT fk_Ingrediente_Producto_nIdIngrediente FOREIGN KEY (nIdIngrediente) REFERENCES Ingrediente (nIdIngrediente);
ALTER TABLE Ingrediente_Producto ADD CONSTRAINT fk_Ingrediente_Producto_nIdProducto FOREIGN KEY (nIdProducto) REFERENCES Producto (nIdProducto);
ALTER TABLE Ingrediente_Producto ADD CONSTRAINT pk_Ingrediente_Producto_nIdIngrediente_nIdProducto PRIMARY KEY (nIdIngrediente, nIdProducto);

--Salsa_Ingrediente
ALTER TABLE Salsa_Ingrediente ADD CONSTRAINT fk_Salsa_Ingrediente_nIdSalsa FOREIGN KEY (nIdSalsa) REFERENCES Salsa (nIdSalsa);
ALTER TABLE Salsa_Ingrediente ADD CONSTRAINT fk_Salsa_Ingrediente_nIdIngrediente FOREIGN KEY (nIdIngrediente) REFERENCES Ingrediente (nIdIngrediente);
ALTER TABLE Salsa_Ingrediente ADD CONSTRAINT pk_Salsa_Ingrediente_nIdSalsa_nIdIngrediente PRIMARY KEY (nIdSalsa, nIdIngrediente);

--Salsa
ALTER TABLE Salsa ADD CONSTRAINT fk_Salsa_nIdPicor FOREIGN KEY (nIdPicor) REFERENCES CPicor (nIdPicor);