-- Procedimiento almacenado para obtener los agentes de un sector en específico.
-- El objetivo de este procedimento almacenado es facilitar el manejo de la infromación de los agentes por sector, como por ejemplo
-- al momento de querer enviar las cartas a los agentes de un determinado sector.
GO
IF OBJECT_ID('buscarAgentesPorSector') IS NOT NULL
BEGIN
    DROP PROCEDURE buscarAgentesPorSector
END
GO
CREATE PROCEDURE buscarAgentesPorSector
@sSector VARCHAR(128)
 AS
SELECT sNombre + ' ' + sApp + ' ' + sApm AS [NOMBRE] FROM Persona INNER JOIN Agente ON Persona.sRFC = Agente.sRFC
WHERE sSector = @sSector;

-- Ejemplo de ejecución.
GO
EXECUTE buscarAgentesPorSector 'sector 1';

-- Procedimiento almacenado para obtener el número de infracciones cometidas en una fecha.
-- El objetivo es poder obtener el número de infracciones cometidas en fechas que se condideren importates, como en periodos vacacionales,
-- para poder prevenir accidentes de tráfico.
GO
IF OBJECT_ID('infraccionesCometidasPorFecha') IS NOT NULL
BEGIN
    DROP PROCEDURE infraccionesCometidasPorFecha
END
GO
CREATE PROCEDURE infraccionesCometidasPorFecha
@fecha DATE,
@total INT OUTPUT
AS
SELECT @total = COUNT(nNoExpediente) FROM Infraccion
WHERE @fecha = (SELECT CONVERT(CHAR(10), dFechaHora, 105) FROM Infraccion);

-- Ejemplo de ejecución.
GO
DECLARE @t INT -- Declaramos una variable del mismo tipo que la salida del procedimiento.
EXECUTE infraccionesCometidasPorFecha '2014-07-07', @total = @t OUTPUT; -- Ejecutamos el procedimiento indicando los parametros.
PRINT 'Total de Infracciones cometidas: ' + CAST(@t AS CHAR(10)); -- Imprimimos el resultado.

-- DISPARADORES
-- Disparador para verificar que la fecha ingresada para indicar el fin del periodo de propiedad de un vehículo sea mayor a la fecha de inicio de propiedad.
GO
CREATE TRIGGER validarFechaFin
ON Vehiculo
FOR INSERT
AS
    IF (SELECT dFechaFinPropiedad FROM INSERTED) < (SELECT dFechaInicioPropiedad FROM Vehiculo)
    BEGIN
        ROLLBACK TRANSACTION
        PRINT 'La fecha es invalida'
    END
    ELSE
        PRINT 'Fecha ingresada con exito'

-- Disparador para cancelar las licencias que posean más de 12 puntos de penalización cada vez que se modifica un valor en la tabla de Licencia.
GO
CREATE TRIGGER cancelarLicencia
ON Licencia
AFTER UPDATE
AS
    IF (SELECT nPuntos FROM Licencia) >= 12
    BEGIN
        UPDATE Licencia SET sEstatus = 'CANCELADA' WHERE nPuntos >= 12;
     PRINT 'Licencias con penalización mayor a 12 puntos canceladas'
    END
