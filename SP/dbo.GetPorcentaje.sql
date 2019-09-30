CREATE PROCEDURE [dbo].[GetPorcentaje]
	@param1 VARCHAR(30)
AS
	BEGIN
		BEGIN TRY
			SELECT SUM(PorcentajeBeneficio)
			FROM Beneficiario
			WHERE (IdCuenta = @param1) AND 
				  (Activo = 1)
			RETURN @@ROWCOUNT
		END TRY 
		BEGIN CATCH
			RETURN @@ERROR *-1
		END CATCH
	END
    
RETURN 0