--1. Total de Personas que son Empleados. 
SELECT COUNT (nIdEmpleado) FROM Empleado;

--2. Total de Personas que no son Clientes. 
SELECT COUNT (Persona.nIdPersona) FROM Persona, Cliente WHERE Persona.nIdPersona != Cliente.nIdPersona;

--3. Monedero/s cuyo saldo es igual al mayor saldo de los monederos. 
SELECT sMonedero FROM Cliente WHERE sSaldo = (SELECT MAX (sSaldo) FROM Cliente);

--4. Total de monederos cuyo saldo es igual a 0. 
SELECT COUNT (nIdCliente) FROM Cliente WHERE sSaldo = 0;

--5. Nombre de los ingredientes que son utilizados en salsas (sin repetición). 
SELECT DISTINCT sIngrediente FROM Ingrediente, Salsa_Ingrediente WHERE Ingrediente.nIdIngrediente = Salsa_Ingrediente.nIdIngrediente;

--6. Nombre de los ingredientes que son utilizados en tacos (sin repetición). 
SELECT DISTINCT sIngrediente
FROM Ingrediente
WHERE nIdProducto IN (     SELECT nIdProducto
            FROM Producto
            WHERE nIdCategoria = (    SELECT nIdCategoria 
                        FROM CCategoriaProducto
                        WHERE sCategoria LIKE '%taco%'));


--7. Total de promociones que se aplican los días viernes. 
SELECT COUNT (nIdDia) AS TotalPromocionesViernes
FROM Promocion
WHERE nIdDia = (SELECT nIdDia
            FROM     CDia
            WHERE     sDia LIKE 'viernes');


--8. Total de Estados referenciados en las direcciones registradas. 
SELECT COUNT (nIdEstado) AS NoEstados
FROM CMunicipio
WHERE nIdMunicipio  IN (SELECT nIdMunicipio
                FROM Direccion);


--9. Total de órdenes cuyo total es mayor a $100.00. 
SELECT COUNT (nIdOrden) AS TotalOrdenesMayores100 FROM Orden WHERE dTotal > 100;


--10. Nombre de las sucursales que brindan servicio a domicilio. 
SELECT sNombre FROM Sucursal WHERE bAdomicilio = 1;

--11. Nombre de las salsas que se han dado de baja. 
SELECT sSalsa 
FROM Salsa WHERE bActivo = 0;

--12. Total de consumo de las órdenes registradas. 
SELECT '$ ' + CONVERT(VARCHAR(32), ROUND(SUM(dTotal), 2)) AS [Total de Consumo de Ordenes] FROM Orden;

--13. Total de teléfonos que han sido dados de baja para una persona en específico. 
SELECT sNombre + ' ' + sApp + ' ' + sApm as [Nombre Completo], nIdTelefono INTO #Temp FROM Persona, Persona_Telefono
WHERE Persona.nIdPersona = Persona_Telefono.nIdPersona AND Persona_Telefono.bActivo = 0;

SELECT [Nombre Completo], COUNT(nIdTelefono) FROM #Temp GROUP BY [Nombre Completo];

--14. Nombre de los proveedores que se encuentran activos para brindar servicio. 
SELECT sProveedor
FROM Proveedor WHERE bActivo = 1;

--15. Nombre de los productos cuyo precio es mayor a $50.00 sin importar la sucursal en la que se venden. 
SELECT sProducto 
FROM Producto WHERE nIdProducto IN (SELECT nIdProducto FROM Sucursal_Producto WHERE dPrecio > 50); 

--16. Nombre del cliente cuya fecha de registro es la más antigua. 
SELECT MIN(dFechaRegistro) AS FechaMasAntigua
FROM Cliente;

--17. Niveles de picor ordenados alfabéticamente en orden ascendente.
SELECT sPicor
FROM CPicor ORDER BY sPicor ASC;

--18. Nombre de los días que no se encuentran referenciados en la tabla horario. 
SELECT sDia FROM CDia WHERE nIdDia IN (SELECT nIdDia FROM CDia EXCEPT SELECT DISTINCT nIdDia FROM Horario);

--19. RFC de los proveedores que se han dado de baja pero surtieron algún pedido con costo menor a $200.00. 
SELECT RFC
FROM Proveedor
WHERE bActivo = 0 AND
    nIdProveedor IN (SELECT nIdProveedor 
FROM Proveedor_Ingrediente
WHERE dCosto < 200);

--20. Total de clientes registrados que son mayores de edad.
SELECT COUNT (nIdPersona) AS noClientes FROM Persona
WHERE DATEDIFF(YEAR, dFechaNacimiento, getdate()) >= 18 AND
        nIdPersona IN (SELECT nIdPersona
FROM Cliente);
