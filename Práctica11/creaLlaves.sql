/*
PRIMARY KEYS
*/

-- CDia
ALTER TABLE CDia ADD CONSTRAINT pk_cdia_niddia PRIMARY KEY (nIdDia);
-- Horario
ALTER TABLE Horario ADD CONSTRAINT pk_horaio_nidhorario PRIMARY KEY (nIdHorario);
-- Direccion
ALTER TABLE Direccion ADD CONSTRAINT pk_direccion_niddireccion PRIMARY KEY (nIdDireccion);
-- CMunicipio
ALTER TABLE CMunicipio ADD CONSTRAINT pk_cmunicipio_nidmunicipio PRIMARY KEY (nIdMunicipio);
-- CEstado
ALTER TABLE CEstado	ADD CONSTRAINT pk_cestado_nidestado PRIMARY KEY (nIdEstado);
-- Proveedor_Telefono *****
--ALTER TABLE Proveedor_Telefono ADD CONSTRAINT pk_proveedor_telefono_nidproveedor_nidtelefono PRIMARY KEY (nIdProveedor,nIdTelefono);
-- CTipo_Direccion
ALTER TABLE CTipo_Direccion ADD CONSTRAINT pk_ctipo_direccion PRIMARY KEY (nIdTipoDireccion);
-- Direccion_Persona ******
--ALTER TABLE Direccion_Persona ADD CONSTRAINT pk_Direccion_Persona_nIdDireccion PRIMARY KEY (nIdDireccion,nIdPersona);
-- Persona
ALTER TABLE Persona ADD CONSTRAINT pk_persona_nidpersona PRIMARY KEY (nIdPersona);
-- Persona_Telefono ******
--ALTER TABLE Persona_Telefono ADD CONSTRAINT pk_Persona_Telefono_nIdPersona PRIMARY KEY (nIdPersona,nIdTelefono);
-- Telefono
ALTER TABLE Telefono ADD CONSTRAINT pk_telefono	PRIMARY KEY (nIdTelefono);
-- CTipoTelefono
ALTER TABLE CTipoTelefono	ADD CONSTRAINT pk_ctipo_telefono_nidtipotelefono PRIMARY KEY (nIdTipoTelefono);
-- Empleado
ALTER TABLE Empleado ADD CONSTRAINT pk_Empleado_nIdEmpleado PRIMARY KEY (nIdEmpleado);
-- CTipo_Empleado
ALTER TABLE CTipo_Empleado ADD CONSTRAINT pk_ctipo_empleado_nidtipoempleado PRIMARY KEY (nIdTipoEmpleado);
-- Orden
ALTER TABLE Orden ADD CONSTRAINT pk_Orden_nIdOrden PRIMARY KEY (nIdOrden);
-- DetalleOrden
ALTER TABLE DetalleOrden ADD CONSTRAINT pk_DetalleOrden_nIdDetalleOrden PRIMARY KEY (nIdDetalleOrden);
-- Cliente
ALTER TABLE Cliente ADD CONSTRAINT pk_Cliente_nIdCliente PRIMARY KEY (nIdCliente);
-- Sucursal_Producto 
ALTER TABLE Sucursal_Producto ADD CONSTRAINT pk_Sucursal_Producto_nIdSucursalProducto PRIMARY KEY (nIdSucursalProducto);
-- Promocion
ALTER TABLE Promocion ADD CONSTRAINT pk_Promocion_nIdPromocion PRIMARY KEY (nIdPromocion);
-- CTipo_Sucursal
ALTER TABLE CTipo_Sucursal ADD CONSTRAINT pk_ctipo_sucursal PRIMARY KEY (nIdTipoSucursal);
-- Proveedor
ALTER TABLE Proveedor ADD CONSTRAINT pk_Proveedor_nIdProveedor  PRIMARY KEY (nIdProveedor);
-- Proveedor_Ingrediente ******
--ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT pk_Proveedor_Ingrediente_nIdProveedorIngrediente PRIMARY KEY (nIdProveedorIngrediente);
-- Sucursal
ALTER TABLE Sucursal ADD CONSTRAINT pk_sucursal_nidsucursal	PRIMARY KEY (nIdSucursal);
-- Telefono_Proveedor ******
--ALTER TABLE Telefono_Proveedor ADD CONSTRAINT pk_Telefono_Proveedor_nIdTelefono_nIdProveedor PRIMARY KEY (nIdTelefono,nIdProveedor);
-- CPicor
ALTER TABLE CPicor ADD CONSTRAINT pk_cpicor_nidpicor PRIMARY KEY (nIdPicor);
-- Salsa
ALTER TABLE Salsa ADD CONSTRAINT pk_salsa_nidsalsa PRIMARY KEY (nIdSalsa);
-- Salsa_Ingrediente *******
--ALTER TABLE Salsa_Ingrediente ADD CONSTRAINT pk_salsa_ingrediente_nidsalsa_nidingrediente PRIMARY KEY (nIdSalsa,nIdIngrediente);
-- CCategoria_Producto
ALTER TABLE CCategoria_Producto	ADD CONSTRAINT pk_CCategoria_Producto_nIdCategoria PRIMARY KEY (nIdCategoria);
-- Salsa_Producto
ALTER TABLE Salsa_Producto ADD CONSTRAINT pk_salsa_producto_nidsalsa_nidproducto PRIMARY KEY (nIdSalsa,nIdProducto);
-- Ingrediente
ALTER TABLE Ingrediente ADD CONSTRAINT pk_ingrediente_nidingrediente PRIMARY KEY (nIdIngrediente);
-- Ingrediente_Producto ******
--ALTER TABLE Ingrediente_Producto ADD CONSTRAINT pk_ingrediente_producto_nidingrediente_nidproducto PRIMARY KEY (nIdIngrediente,nIdProducto);
-- Producto
ALTER TABLE Producto ADD CONSTRAINT pk_Producto_nIdProducto PRIMARY KEY (nIdProducto);

/*
FOREING KEYS
*/
-- CDia 
-- Horario
-- Direccion
-- CMunicipio
-- CEstado
-- Proveedor_Telefono
-- CTipo_Direccion
-- Direccion_Persona
-- Persona
-- Persona_Telefono
-- Telefono
-- CTipoTelefono
-- Empleado
-- CTipo_Empleado
-- Orden
-- DetalleOrden
-- Cliente
-- Sucursal_Producto
-- Promocion
-- CTipo_Sucursal
-- Proveedor
-- Proveedor_Ingrediente
-- Sucursal
-- Telefono_Proveedor
-- CPicor
-- Salsa
-- Salsa_Ingrediente
-- CCategoria_Producto
-- Salsa_Producto
-- Ingrediente
-- Ingrediente_Producto
-- Producto


-- CDia
-- NO TIENE --
-- Horario
ALTER TABLE Horario ADD CONSTRAINT fk_Horario_nIdSucursal FOREIGN KEY (nIdSucursal) REFERENCES Sucursal (nIdSucursal);
ALTER TABLE Horario ADD CONSTRAINT fk_Horario_nIdDia FOREIGN KEY (nIdDia) REFERENCES CDia (nIdDia);
-- Direccion
ALTER TABLE Direccion ADD CONSTRAINT fk_Direccion_nIdMunicipio FOREIGN KEY (nIdMunicipio) REFERENCES CMunicipio (nIdMunicipio);
-- CMunicipio
ALTER TABLE CMunicipio ADD CONSTRAINT fk_CMunicipio_nIdEstado FOREIGN KEY (nIdEstado) REFERENCES CEstado (nIdEstado);
-- CEstado
-- NO TIENE --
-- Proveedor_Telefono
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT fk_Proveedor_Telefono_nIdProveedor FOREIGN KEY (nIdProveedor) REFERENCES Proveedor (nIdProveedor);
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT fk_Proveedor_Telefono_nIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono (nIdTelefono);
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT fk_Proveedor_Telefono_TelefononIdTelefono FOREIGN KEY (nIdTipoTelefono) REFERENCES CTipoTelefono(nIdTipoTelefono);
-- CTipo_Direccion
-- NO TIENE --
-- Direccion_Persona
ALTER TABLE Direccion_Persona ADD CONSTRAINT fk_Direccion_Persona_nIdDireccion FOREIGN KEY (nIdDireccion) REFERENCES Direccion (nIdDireccion);
ALTER TABLE Direccion_Persona ADD CONSTRAINT fk_Direccion_Persona_nIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
ALTER TABLE Direccion_Persona ADD CONSTRAINT fk_Direccion_Persona_nIdTipoDireccion FOREIGN KEY (nIdTipoDireccion) REFERENCES CTipo_Direccion (nIdTipoDireccion);
-- Persona
-- NO TIENE --
-- Persona_Telefono
ALTER TABLE Persona_Telefono ADD CONSTRAINT fk_Persona_Telefono_nIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
ALTER TABLE Persona_Telefono ADD CONSTRAINT fk_Persona_Telefono_nIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono (nIdTelefono);
ALTER TABLE Persona_Telefono ADD CONSTRAINT fk_Persona_Telefono_nIdTipoTelefono FOREIGN KEY (nIdTipoTelefono) REFERENCES CTipoTelefono (nIdTipoTelefono);
-- Telefono
-- NO TIENE-- 
-- CTipoTelefono
-- NO TIENE --
-- Empleado
ALTER TABLE Empleado ADD CONSTRAINT fk_Empleado_PersonanIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
ALTER TABLE Empleado ADD CONSTRAINT fk_Empleado_SucursalnIdSucursal FOREIGN KEY (nIdSucursal) REFERENCES Sucursal (nIdSucursal);
ALTER TABLE Empleado ADD CONSTRAINT fk_Empleado_CTipo_EmpleadonIdTipoEmpleado FOREIGN KEY (nIdTipoEmpleado) REFERENCES CTipo_Empleado (nIdTipoEmpleado);
-- CTipo_Empleado
-- NO TIENE --
-- Orden
ALTER TABLE Orden ADD CONSTRAINT fk_Orden_EmpleadonIdEmpleado FOREIGN KEY (nIdEmpleado) REFERENCES Empleado (nIdEmpleado);
ALTER TABLE Orden ADD CONSTRAINT fk_Orden_CDianIdDia FOREIGN KEY (nIdDia) REFERENCES CDia (nIdDia);
-- DetalleOrden
ALTER TABLE DetalleOrden ADD CONSTRAINT fk_DetalleOrden_nIdSucursalProducto FOREIGN KEY (nIdSucursalProducto) REFERENCES Sucursal_Producto (nIdSucursalProducto);
ALTER TABLE DetalleOrden ADD CONSTRAINT fk_DetalleOrden_OrdennIdOrden FOREIGN KEY (nIdOrden) REFERENCES Orden (nIdOrden);
ALTER TABLE DetalleOrden ADD CONSTRAINT fk_DetalleOrden_ClientenIdCliente FOREIGN KEY (nIdCliente) REFERENCES Cliente (nIdCliente);
-- Cliente
ALTER TABLE Cliente ADD CONSTRAINT fk_Cliente_PersonanIdPersona FOREIGN KEY (nIdPersona) REFERENCES Persona (nIdPersona);
-- Sucursal_Producto
ALTER TABLE Sucursal_Producto ADD CONSTRAINT fk_Sucursal_Producto_SucursalnIdSucursal FOREIGN KEY (nIdSucursal) REFERENCES Sucursal (nIdSucursal);
ALTER TABLE Sucursal_Producto ADD CONSTRAINT fk_Sucursal_Producto_ProductonIdProducto FOREIGN KEY (nIdProducto) REFERENCES Producto (nIdProducto);
-- Promocion
ALTER TABLE Promocion ADD CONSTRAINT fk_Promocion_nIdSucursalProducto FOREIGN KEY (nIdSucursalProducto) REFERENCES Sucursal_Producto(nIdSucursalProducto);
ALTER TABLE Promocion ADD CONSTRAINT fk_Promocion_nIdDia FOREIGN KEY (nIdDia) REFERENCES CDia(nIdDia);
-- CTipo_Sucursal
-- NO TIENE --
-- Proveedor
ALTER TABLE Proveedor ADD CONSTRAINT fk_Proveedor_Direccion FOREIGN KEY (nIdDireccion) REFERENCES Direccion(nIdDireccion);
-- Proveedor_Ingrediente
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT fk_Proveedor_Ingrediente_nIdProveedor FOREIGN KEY (nIdProveedor) REFERENCES Proveedor(nIdProveedor);
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT fk_Proveedor_Ingrediente_nIdIngrediente FOREIGN KEY (nIdIngrediente) REFERENCES Ingrediente(nIdIngrediente);
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT fk_Proveedor_Ingrediente_nIdSucursal FOREIGN KEY (nIdSucursal) REFERENCES Sucursal(nIdSucursal);
-- Sucursal
ALTER TABLE Sucursal ADD CONSTRAINT fk_Sucursal_DireccionnIdDireccion FOREIGN KEY (nIdDireccion) REFERENCES Direccion(nIdDireccion);
ALTER TABLE Sucursal ADD CONSTRAINT fk_Sucursal_TelefononIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono(nIdTelefono);
ALTER TABLE Sucursal ADD CONSTRAINT fk_Sucursal_CTipoSucursalnIdTipoSucursal FOREIGN KEY (nIdTipoSucursal) REFERENCES CTipo_Sucursal(nIdTipoSucursal);
-- Telefono_Proveedor
ALTER TABLE Telefono_Proveedor ADD CONSTRAINT fk_Telefono_Proveedor_nIdTelefono FOREIGN KEY (nIdTelefono) REFERENCES Telefono(nIdTelefono);
ALTER TABLE Telefono_Proveedor ADD CONSTRAINT fk_Telefono_Proveedor_nIdProveedor FOREIGN KEY (nIdProveedor) REFERENCES Proveedor(nIdProveedor);
ALTER TABLE Telefono_Proveedor ADD CONSTRAINT fk_Telefono_Proveedor_nIdTipoTelefono FOREIGN KEY (nIdTipoTelefono) REFERENCES CTipoTelefono(nIdTipoTelefono);
-- CPicor
-- NO TIENE --
-- Salsa
ALTER TABLE Salsa ADD CONSTRAINT fk_Salsa_nIdPicor FOREIGN KEY (nIdPicor) REFERENCES CPicor (nIdPicor);
-- Salsa_Ingrediente
ALTER TABLE Salsa_Ingrediente ADD CONSTRAINT fk_Salsa_Ingrediente_nIdSalsa FOREIGN KEY (nIdSalsa) REFERENCES Salsa (nIdSalsa);
ALTER TABLE Salsa_Ingrediente ADD CONSTRAINT fk_Salsa_Ingrediente_nIdIngrediente FOREIGN KEY (nIdIngrediente) REFERENCES Ingrediente (nIdIngrediente);
-- CCategoria_Producto
-- NO TIENE --
-- Salsa_Producto
ALTER TABLE Salsa_Producto ADD CONSTRAINT fk_Salsa_Producto_nIdSalsa FOREIGN KEY (nIdSalsa) REFERENCES Salsa (nIdSalsa);
ALTER TABLE Salsa_Producto ADD CONSTRAINT fk_Salsa_Producto_nIdProducto FOREIGN KEY (nIdProducto) REFERENCES Producto (nIdProducto);
-- Ingrediente
-- NO TIENE --
-- Ingrediente_Producto
ALTER TABLE Ingrediente_Producto ADD CONSTRAINT fk_Ingrediente_Producto_nIdIngrediente FOREIGN KEY (nIdIngrediente) REFERENCES Ingrediente (nIdIngrediente);
ALTER TABLE Ingrediente_Producto ADD CONSTRAINT fk_Ingrediente_Producto_nIdProducto FOREIGN KEY (nIdProducto) REFERENCES Producto (nIdProducto);
-- Producto
ALTER TABLE Producto ADD CONSTRAINT fk_Producto_nIdCategoria FOREIGN KEY (nIdCategoria) REFERENCES CCategoria_Producto(nIdCategoria);


--- PRIMARY KEYS WITH FOREIGN KEY

-- Proveedor_Telefono *****
ALTER TABLE Proveedor_Telefono ADD CONSTRAINT pk_proveedor_telefono_nidproveedor_nidtelefono PRIMARY KEY (nIdProveedor,nIdTelefono);
-- Direccion_Persona ******
ALTER TABLE Direccion_Persona ADD CONSTRAINT pk_Direccion_Persona_nIdDireccion PRIMARY KEY (nIdDireccion,nIdPersona);
-- Persona_Telefono ******
ALTER TABLE Persona_Telefono ADD CONSTRAINT pk_Persona_Telefono_nIdPersona PRIMARY KEY (nIdPersona,nIdTelefono);
-- Proveedor_Ingrediente ******
ALTER TABLE Proveedor_Ingrediente ADD CONSTRAINT pk_Proveedor_Ingrediente_nIdProveedorIngrediente PRIMARY KEY (nIdProveedorIngrediente);
-- Telefono_Proveedor ******
ALTER TABLE Telefono_Proveedor ADD CONSTRAINT pk_Telefono_Proveedor_nIdTelefono_nIdProveedor PRIMARY KEY (nIdTelefono,nIdProveedor);
-- Salsa_Ingrediente *******
ALTER TABLE Salsa_Ingrediente ADD CONSTRAINT pk_salsa_ingrediente_nidsalsa_nidingrediente PRIMARY KEY (nIdSalsa,nIdIngrediente);
-- Ingrediente_Producto ******
ALTER TABLE Ingrediente_Producto ADD CONSTRAINT pk_ingrediente_producto_nidingrediente_nidproducto PRIMARY KEY (nIdIngrediente,nIdProducto);








