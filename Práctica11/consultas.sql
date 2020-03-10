-- 1. Nombre y apellidos de los empleados y nombre de la sucursal a la que pertenecen agrupados por tipo de empleado.
SELECT sTipoEmpleado, (Persona.sNombre + ' ' + sApp + ' ' + sApm) as [Nombre Completo], Sucursal.sNombre
FROM Persona JOIN Empleado
ON Persona.nIdPersona = Empleado.nIdPersona
JOIN Sucursal 
ON Empleado.nIdSucursal = Sucursal.nIdSucursal
JOIN CTipo_Empleado
ON Empleado.nIdTipoEmpleado = CTipo_Empleado.nIdTipoEmpleado
GROUP BY sTipoEmpleado, (Persona.sNombre + ' ' + sApp + ' ' + sApm), Sucursal.sNombre;

-- 2. Nombre y precio de los productos que se venden en cada sucursal ordenados alfabéticamente de manera descendente y agrupados por el nombre de la sucursal.
SELECT sProducto, ('$ ' + CONVERT(VARCHAR(32), ROUND(mPrecio, 2))) AS [Precio], sNombre
FROM Producto JOIN Sucursal_Producto
ON Producto.nIdProducto = Sucursal_Producto.nIdProducto
JOIN Sucursal
ON Sucursal_Producto.nIdSucursal = Sucursal.nIdSucursal
GROUP BY sNombre, sProducto, mPrecio
ORDER BY sNombre, sProducto DESC;

-- 3. Nombre y apellidos de la persona así como en el nombre y dirección de la sucursal en la que se ha consumido la orden más cara registrada en la cadena.
SELECT (Persona.sNombre + ' ' + sApp + ' ' + sApm) as [Nombre Completo], Sucursal.sNombre, (sCalle + ' ' + sColonia + ' ' + sCp) as [Direccion]
FROM Persona JOIN Cliente
ON Persona.nIdPersona = Cliente.nIdPersona
JOIN DetalleOrden
ON Cliente.nIdCliente = DetalleOrden.nIdCliente
JOIN Orden 
ON  DetalleOrden.nIdOrden = Orden.nIdOrden
JOIN Sucursal_Producto
ON DetalleOrden.nIdSucursalProducto = Sucursal_Producto.nIdSucursalProducto
JOIN Sucursal
ON Sucursal.nIdSucursal = Sucursal_Producto.nIdSucursal
JOIN Direccion
ON Sucursal.nIdDireccion = Direccion.nIdDireccion
GROUP BY (Persona.sNombre + ' ' + sApp + ' ' + sApm), Sucursal.sNombre, (sCalle + ' ' + sColonia + ' ' + sCp), mTotal
HAVING mTotal = MAX (mTotal);

-- 4. Nombre y apellidos de los clientes que han visitado la taquería en día lunes y han consumido más que el consumo promedio de consumo de los días lunes.
SELECT (Persona.sNombre + ' ' + sApp + ' ' + sApm) as [Nombre Completo]
FROM Persona JOIN Cliente
ON Persona.nIdPersona = Cliente.nIdPersona
JOIN DetalleOrden
ON Cliente.nIdCliente = DetalleOrden.nIdCliente
JOIN Orden
ON DetalleOrden.nIdOrden = Orden.nIdOrden
JOIN CDia
ON Orden.nIdDia = CDia.nIdDia
GROUP BY (Persona.sNombre + ' ' + sApp + ' ' + sApm), sDia, mTotal
HAVING sDia LIKE 'Lunes' AND mTotal > (SELECT AVG (mTotal)
                                        FROM Orden
                                        WHERE nIdDia = 1);

-- 5. Nombre de las sucursales y total de empleados que tienen de cada tipo.
SELECT Sucursal.sNombre, sTipoEmpleado, COUNT(nIdEmpleado) as [Numero de Empleados] 
FROM Sucursal JOIN Empleado
ON Sucursal.nIdSucursal = Empleado.nIdSucursaL
JOIN CTipo_Empleado
ON Empleado.nIdTipoEmpleado= CTipo_Empleado.nIdTipoEmpleado
GROUP BY Sucursal.sNombre, sTipoEmpleado;

-- 6. Total de sucursales agrupadas por estado en las que hay servicio a domicilio.
SELECT sEstado, count(sEstado) AS noSucursales
FROM Sucursal
JOIN Direccion
ON Sucursal.nIdDireccion = Direccion.nIdDireccion
JOIN CMunicipio
ON Direccion.nIdMunicipio = CMunicipio.nIdMunicipio
JOIN CEstado
ON CMunicipio.nIdEstado = CEstado.nIdEstado
WHERE BADomicilio = 1
GROUP BY sEstado;

-- 7. Consumo promedio agrupado por género de los clientes (considere M = masculino, F = femenino).
SELECT  sGenero, avg(mTotal) AS promedio
FROM Persona
JOIN Cliente 
ON Persona.nIdPersona = Cliente.nIdPersona
JOIN DetalleOrden
ON Cliente.nIdCliente = DetalleOrden.nIdCliente
JOIN Orden
On Orden.nIdOrden = DetalleOrden.nIdOrden
GROUP BY sGenero;

-- 8. Nombre del taco más vendido.
SELECT TOP 1 SProducto, count(sProducto) as noTacos 
FROM DetalleOrden
JOIN Sucursal_Producto
ON DetalleOrden.nIdSucursalProducto = Sucursal_Producto.nIdSucursalProducto
JOIN Producto
ON Sucursal_Producto.nIdProducto = Producto.nIdProducto
JOIN CCategoria_Producto
ON CCategoria_Producto.nIdCategoria = Producto.nIdCategoria
WHERE sCategoria LIKE 'Taco'
GROUP BY sProducto
ORDER BY noTacos DESC;

--Está definida como "Refresco" la bebida.
-- 9. Nombre de la bebida más vendida.
SELECT TOP 1 SProducto, count(sProducto) as noRefrescos 
FROM DetalleOrden
JOIN Sucursal_Producto
ON DetalleOrden.nIdSucursalProducto = Sucursal_Producto.nIdSucursalProducto
JOIN Producto
ON Sucursal_Producto.nIdProducto = Producto.nIdProducto
JOIN CCategoria_Producto
ON CCategoria_Producto.nIdCategoria = Producto.nIdCategoria
WHERE sCategoria LIKE 'Refresco'
GROUP BY sProducto
ORDER BY noRefrescos DESC;

-- 10. Total de números telefónicos de los empleados, agrupados por tipo de teléfono y tipo de empleado.
SELECT  count(*) AS total_Telefonos,  sTipoTelefono, sTipoEmpleado
FROM Telefono
JOIN Proveedor_Telefono
ON Telefono.nIdTelefono = Proveedor_Telefono.nIdTelefono
JOIN CTipoTelefono
ON CTipoTelefono.nIdTipoTelefono = Proveedor_Telefono.nIdTipoTelefono
JOIN Persona_Telefono
ON Persona_Telefono.nIdTelefono = Telefono.nIdTelefono
JOIN Persona
ON Persona.nIdPersona = Persona_Telefono.nIdPersona
JOIN Empleado
ON Empleado.nIdPersona = Persona.nIdPersona
JOIN CTipo_Empleado
ON CTipo_Empleado.nIdTipoEmpleado = Empleado.nIdTipoEmpleado
GROUP BY sTipoEmpleado, sTipoTelefono;

-- 11. Nombre, ubicación y horario de apertura y cierre de todas las sucursales. Ordenadas alfabéticamente por día y nombre de la sucursal.
SELECT suc.sNombre,
        dir.sCalle + ' ' + dir.sCp + ', ' + dir.sColonia + ', ' + mun.sMunicipio + ', '  + est.sEstado AS Ubicacion,
        hor.tHoraApertura, hor.tHoraCierre 
FROM Sucursal suc 
    JOIN Direccion dir ON suc.nIdDireccion = dir.nIdDireccion 
    JOIN CMunicipio mun ON dir.nIdMunicipio = mun.nIdMunicipio 
    JOIN CEstado est ON mun.nIdEstado = est.nIdEstado
    JOIN Horario hor ON suc.nIdSucursal = hor.nIdSucursal
    JOIN CDia dia ON hor.nIdDia = dia.nIdDia
ORDER BY dia.sDia, suc.sNombre;

-- 12. Cliente que más tacos al pastor ha pedido en una orden.
--aqui esta el nombre de las personas con el total de ordenes de pastor(total_pastor)
SELECT per.sNombre + ' ' + per.sApp + ' ' + per.sApm AS [nombre completo], cliente_total_pastor.total_pastor
FROM Persona per JOIN
    --hasta aqui lleva el total de ordenes de pastor(total_pastor) pedidas por una Persona-cliente(nIdPersona)
    (SELECT cli.nIdPersona, orden_total.total_pastor
    FROM Cliente cli JOIN
        --hasta aqui lleva el total de ordenes de pastor(total_pastor) pedidas por el cliente(nIdCliente)
        (SELECT det_ord.nIdCliente, count(det_ord.nIdSucursalProducto) total_pastor
        FROM DetalleOrden det_ord JOIN
            -- llevamos el id de sucursal_producto donde tienen tacos al pastor
            (SELECT suc_prod.nIdSucursalProducto
            FROM Sucursal_Producto suc_prod JOIN
                -- selecciona el id del producto que contenga la palabra "pastor"
                (SELECT nIdProducto 
                    FROM Producto prod
                    WHERE prod.sProducto LIKE '%pastor%' OR prod.sProducto LIKE '%Pastor%' OR prod.sProducto LIKE '%PASTOR%') prod_pastor
                ON suc_prod.nIdProducto = prod_pastor.nIdProducto) prod_suc
            ON det_ord.nIdSucursalProducto = prod_suc.nIdSucursalProducto
        GROUP BY det_ord.nIdCliente) orden_total
    ON orden_total.nIdCliente = cli.nIdCliente) cliente_total_pastor
ON cliente_total_pastor.nIdPersona = per.nIdPersona;

-- 13. Correo electrónico del mesero que menos órdenes ha atendido.
SELECT TOP 1 sCorreo [Correo Electronico]
FROM Persona JOIN Empleado
ON Persona.nIdPersona = Empleado.nIdPersona
JOIN CTipo_Empleado
ON Empleado.nIdTipoEmpleado = CTipo_Empleado.nIdTipoEmpleado
JOIN Orden
ON Empleado.nIdEmpleado = Orden.nIdEmpleado
WHERE sTipoEmpleado = 'Mesero'
GROUP BY sCorreo
ORDER BY COUNT(Orden.nIdEmpleado) ASC;

-- 14. Nombre, número de monedero y saldo de los clientes que consumen más tacos de suadero que el promedio consumido en las órdenes que contienen este tipo de taco.
SELECT per.sNombre + ' ' + per.sApp + ' ' + per.sApm AS [nombre completo], sMonedero, mSaldo
FROM Persona per JOIN
    --hasta aqui lleva el total de ordenes de suadero(total_suadero) pedidas por una Persona-cliente(nIdPersona)
    (SELECT cli.nIdPersona, sMonedero, mSaldo, orden_total.total_suadero
    FROM Cliente cli JOIN
        --hasta aqui lleva el total de ordenes de suadero(total_suadero) pedidas por el cliente(nIdCliente)
        (SELECT det_ord.nIdCliente, nCantidad as total_suadero
        FROM DetalleOrden det_ord JOIN
            -- llevamos el id de sucursal_producto donde tienen tacos de suadero
            (SELECT suc_prod.nIdSucursalProducto
            FROM Sucursal_Producto suc_prod JOIN
                -- selecciona el id del producto que contenga la palabra "suadero"
                (SELECT nIdProducto
                    FROM Producto prod
                    WHERE prod.sProducto LIKE '%suadero%' OR prod.sProducto LIKE '%Suadero%' OR prod.sProducto LIKE '%SUADERO%') prod_suadero
                ON suc_prod.nIdProducto = prod_suadero.nIdProducto) prod_suc
            ON det_ord.nIdSucursalProducto = prod_suc.nIdSucursalProducto
        GROUP BY det_ord.nIdCliente, nCantidad) orden_total
    ON orden_total.nIdCliente = cli.nIdCliente) cliente_total_suadero
ON cliente_total_suadero.nIdPersona = per.nIdPersona
GROUP BY sNombre, sApp, sApm, sMonedero, mSaldo, total_suadero
HAVING cliente_total_suadero.total_suadero > (SELECT AVG(cliente_total_suadero.total_suadero)
FROM Persona per JOIN
    --hasta aqui lleva el total de ordenes de suadero(total_suadero) pedidas por una Persona-cliente(nIdPersona)
    (SELECT cli.nIdPersona, sMonedero, mSaldo, orden_total.total_suadero
    FROM Cliente cli JOIN
        --hasta aqui lleva el total de ordenes de suadero(total_suadero) pedidas por el cliente(nIdCliente)
        (SELECT det_ord.nIdCliente, nCantidad as total_suadero
        FROM DetalleOrden det_ord JOIN
            -- llevamos el id de sucursal_producto donde tienen tacos de suadero
            (SELECT suc_prod.nIdSucursalProducto
            FROM Sucursal_Producto suc_prod JOIN
                -- selecciona el id del producto que contenga la palabra "suadero"
                (SELECT nIdProducto
                    FROM Producto prod
                    WHERE prod.sProducto LIKE '%suadero%' OR prod.sProducto LIKE '%Suadero%' OR prod.sProducto LIKE '%SUADERO%') prod_suadero
                ON suc_prod.nIdProducto = prod_suadero.nIdProducto) prod_suc
            ON det_ord.nIdSucursalProducto = prod_suc.nIdSucursalProducto
        GROUP BY det_ord.nIdCliente, nCantidad) orden_total
    ON orden_total.nIdCliente = cli.nIdCliente) cliente_total_suadero
ON cliente_total_suadero.nIdPersona = per.nIdPersona);

-- 15. Nombre del producto que más actualizaciones de precio ha sufrido (sin importar la sucursal).
SELECT TOP 1 sProducto, count(dFechaActualizacion) as actualizaciones
FROM Sucursal_Producto
JOIN Producto
ON Producto.nIdProducto = Sucursal_Producto.nIdProducto
GROUP BY sProducto
ORDER BY actualizaciones DESC ;


-- 16. Tipo de dirección más utilizada agrupada por empleados y clientes.
SELECT 'Empleado' [Tipo de Persona], T.sTipoDireccion, T.noPersonas FROM
    (SELECT TOP 1 sTipoDireccion, COUNT(*) as noPersonas FROM
    CTipo_Direccion JOIN Direccion_Persona
    ON CTipo_Direccion.nIdTipoDireccion = Direccion_Persona.nIdTipoDireccion
    JOIN Persona
    ON Direccion_Persona.nIdPersona = Persona.nIdPersona
    JOIN Empleado
    ON Persona.nIdPersona = Empleado.nIdPersona
    GROUP BY sTipoDireccion
    ORDER BY COUNT(*) DESC) T

UNION
   
SELECT 'Cliente' [Tipo de Persona], G.sTipoDireccion, G.noPersonas FROM
    (SELECT TOP 1 sTipoDireccion, COUNT(*) as noPersonas FROM
    CTipo_Direccion JOIN Direccion_Persona
    ON CTipo_Direccion.nIdTipoDireccion = Direccion_Persona.nIdTipoDireccion
    JOIN Persona
    ON Direccion_Persona.nIdPersona = Persona.nIdPersona
    JOIN Cliente
    ON Persona.nIdPersona = Cliente.nIdPersona
    GROUP BY sTipoDireccion
    ORDER BY COUNT(*) DESC) G;

-- 17. Promedio de ingredientes que contiene cada salsa agrupados por picor de las mismas.
SELECT sPicor [Picor], AVG(prom_ing) [Promedio Ingredientes] FROM (
SELECT sPicor, COUNT(sIngrediente) prom_ing FROM (Ingrediente
INNER JOIN Salsa_Ingrediente ON Ingrediente.nIdIngrediente = Salsa_Ingrediente.nIdIngrediente)
INNER JOIN Salsa ON Salsa_Ingrediente.nIdSalsa = Salsa.nIdSalsa
INNER JOIN CPicor ON Salsa.nIdPicor = CPicor.nIdPicor GROUP BY sPicor) T GROUP BY sPicor