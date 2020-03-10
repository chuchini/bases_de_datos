-- 1. Ranking de artículos que más se han infringido.
SELECT sArticulo, COUNT(Infraccion.nIdArticulo) AS [Ocurrencias] FROM Articulo INNER JOIN Infraccion ON Articulo.nIdArticulo = Infraccion.nIdArticulo
GROUP BY sArticulo ORDER BY [Ocurrencias] DESC;

-- 2. Lista de multas generadas por los agentes y el estatus de las mismas.
SELECT sSector, sNombre, Persona.sRFC, Infraccion.nNoExpediente, sEstado FROM Persona INNER JOIN Agente ON Persona.sRFC = Agente.sRFC
INNER JOIN Infraccion ON Agente.nNoIdentificacion = Infraccion.nNoIdentificacion
INNER JOIN Multa ON Infraccion.nNoExpediente = Multa.nNoExpediente
GROUP BY sSector, sNombre, Persona.sRFC, Infraccion.nNoExpediente, sEstado;

-- 3. Agentes que han cometido infracciones
SELECT sNombre + ' ' + sApp + ' ' + sApm AS [Nombre], Agente.sRFC FROM Persona INNER JOIN Agente ON Persona.sRFC = Agente.sRFC
INNER JOIN Persona_Infraccion ON Persona.sRFC = Persona_Infraccion.sRFC
WHERE Agente.sRFC = Persona_Infraccion.sRFC;

-- 4. Ranking de las edades que cometen más infracciones.
SELECT DATEDIFF(YEAR, dFechaNacimiento, GETDATE()) AS [Edad], COUNT(Infraccion.nNoExpediente) [Infracciones Registradas] FROM Persona
INNER JOIN Persona_Infraccion ON Persona.sRFC = Persona_Infraccion.sRFC
INNER JOIN Infraccion ON Persona_Infraccion.nNoExpediente = Infraccion.nNoExpediente
GROUP BY DATEDIFF(YEAR, dFechaNacimiento, GETDATE())
ORDER BY [Infracciones Registradas] DESC;

--arreglar
-- 5. Ranking de los modelos y marcas de vehículos que más infracciones cometen.
SELECT Marca.sNombre, Modelo.sNombre, COUNT(Infraccion.nNoExpediente) AS [No. de Infracciones Cometidas] FROM Vehiculo
INNER JOIN Modelo ON Vehiculo.sNoSerieMotor = Modelo.sNoSerieMotor
INNER JOIN Marca ON Modelo.sNombreMarca = Marca.sNombre
INNER JOIN Infraccion ON Vehiculo.sNoSerieMotor = Infraccion.sNoSerieMotor
GROUP BY Marca.sNombre, Modelo.sNombre
ORDER BY [No. de Infracciones Cometidas];
/*************************/
-- 6. Lista de todos los propietarios y el número de placa que ha tenido un vehículo.
SELECT sNombre + ' ' + sApp + ' ' + sApm AS [Propietario], dFechaInicioPropiedad AS [Inicio de Propiedad],
dFechaFinPropiedad AS [Fin de Propiedad], sNoPlaca FROM Persona INNER JOIN Vehiculo ON Persona.sRFC = Vehiculo.sRFC
INNER JOIN Placa ON Vehiculo.sNoSerieMotor = Placa.sNoSerieMotor
ORDER BY Vehiculo.sNoSerieMotor;

-- 7. Personas que han recurrido infracciones y la infracción recurrida.
SELECT sNombre + ' ' + sApp + ' ' + sApm AS [Nombre], Persona_Infraccion.sRFC, sArticulo FROM Persona INNER JOIN Persona_Infraccion ON Persona.sRFC = Persona_Infraccion.sRFC
INNER JOIN Infraccion ON Persona_Infraccion.nNoExpediente = Infraccion.nNoExpediente
INNER JOIN Articulo ON Infraccion.nIdArticulo = Articulo.nIdArticulo
INNER JOIN Multa ON Infraccion.nNoExpediente = Multa.nNoExpediente
WHERE sEstado LIKE 'RECURRIDA' OR sEstado LIKE 'Recurrida' OR sEstado LIKE 'recurrida'
GROUP BY sNombre, sApp, sApm, Persona_Infraccion.sRFC, sArticulo;

-- 8. Multas y el No. de expediente de la infracción a la que están relacionadas que aún no han sido pagadas.
SELECT nIdMulta AS [No. de Multa], nNoExpediente AS [No. de Expediente] FROM Multa WHERE (sEstado LIKE 'PENDIENTE' OR sEstado LIKE 'Pendiente' OR sEstado LIKE 'pendiente') AND nNoExpediente IS NOT NULL;

-- 9. Número de Placa de los autos implicados en Fotomultas.
SELECT sNoPlaca FROM FotoMulta_Placa

-- 10. Personas con su licencia cancelada.
SELECT sNombre + ' ' + sApp + ' ' + sApm AS [Nombre], Persona.sRFC FROM Persona INNER JOIN Licencia ON Persona.sRFC = Licencia.sRFC
WHERE sEstatus LIKE 'CANCELADA' OR sEstatus LIKE 'Cancelada' OR sEstatus LIKE 'cancelada';

-- 11. Edad de todas las personas almacenadas en la base de datos.
SELECT sNombre + ' ' + sApp + ' ' + sApm AS [Nombre], DATEDIFF(YEAR, dFechaNacimiento, GETDATE()) AS [EDAD] FROM Persona;

-- 12. Modelos organizados por tipo de Auto
SELECT sTipoDeAuto, sNombre, sNombreMarca, sLugarDeFabricacion, nIdCilindros, sTransmision
FROM Tipo_de_Auto
JOIN Modelo
ON Tipo_de_Auto.nIdTipoDeAuto = Modelo.nIdTipoDeAuto
JOIN Transmision
ON Transmision.nIdTransmision = Modelo.nIdTransmision
GROUP BY sTipoDeAuto, sNombre, sNombreMarca, sLugarDeFabricacion, nIdCilindros, sTransmision;

-- 13. Dirección de todos los agentes de transito.
SELECT sNombre + ' ' + sApp + ' ' + sApm AS [Agente], sCalle + ' ' + sColonia + ' ' + sCP + ' ' + sMunicipio + ' ' + sEstado AS [Direccion] FROM Direccion INNER JOIN Direccion_Persona
ON Direccion.nIdDireccion = Direccion_Persona.nIdDireccion
INNER JOIN Persona ON Persona.sRFC = Direccion_Persona.sRFC
INNER JOIN CMunicipio ON Direccion.nIdMunicipio = CMunicipio.nIdMunicipio
INNER JOIN CEstado ON CMunicipio.nIdEstado = CEstado.nIdEstado
INNER JOIN Agente ON Persona.sRFC = Agente.sRFC
WHERE Persona.sRFC = Agente.sRFC;

-- 14. Catalogo de licencias organizadas por tipo de licencia
SELECT sTipoDeLicencia, sNoLicencia, nPuntos, dFechaExpedicion, nVigencia, sEstatus, Licencia.sRFC, sNombre + ' ' + sApp + ' ' + sApm AS [Propietario]
FROM Tipo_de_Licencia
JOIN Licencia
ON Tipo_de_Licencia.nIdTipoDeLicencia = Licencia.nIdTipoDeLicencia
JOIN Persona
ON Persona.sRFC = Licencia.sRFC
GROUP BY sTipoDeLicencia, sNoLicencia, nPuntos, dFechaExpedicion, nVigencia, sEstatus, Licencia.sRFC, sNombre, sApp, sApm;
    
-- 15. Marcas y Modelos de las armadoras.
SELECT sNombreArmadora AS [Armadora], Marca.sNombre AS [Marca], Modelo.sNombre AS [Modelo] FROM Marca INNER JOIN Modelo ON Marca.sNombre = Modelo.sNombreMarca
GROUP BY sNombreArmadora, Marca.sNombre, Modelo.sNombre;

-- 16. Dirección de las armadoras
SELECT sNombreArmadora [Armadora], sCalle + ' ' + sColonia + ' ' + sCP AS [Dirección], sMunicipio AS [Municipio], sEstado AS [Estado] FROM Marca INNER JOIN Modelo ON Marca.sNombre = Modelo.sNombreMarca
INNER JOIN Direccion ON Modelo.nIdDireccion = Direccion.nIdDireccion
INNER JOIN CMunicipio ON Direccion.nIdMunicipio = CMunicipio.nIdMunicipio
INNER JOIN CEstado ON CMunicipio.nIdEstado = CEstado.nIdEstado;

-- 17. Multas agrupadas por personas.
SELECT Persona.sRFC, sNombre + ' ' + sApp + ' ' + sApm AS [Nombre], nIdMulta, sEstado, dImporte FROM Persona INNER JOIN Persona_Infraccion ON Persona.sRFC = Persona_Infraccion.sRFC
INNER JOIN Infraccion ON Persona_Infraccion.nNoExpediente = Infraccion.nNoExpediente
INNER JOIN Multa ON Infraccion.nNoExpediente = Multa.nNoExpediente
GROUP BY Persona.sRFC, sNombre, sApp, sApm, nIdMulta, sEstado, dImporte;



