CREATE PROCEDURE editarBeneficiarios 
	@nombre VARCHAR(50),
	@porcentaje INT,
	@parentesco VARCHAR(50)
AS
	BEGIN 
		BEGIN TRY
			UPDATE Beneficiario
			SET Nombre = @nombre, Parentesco = @parentesco, PorcentajeBeneficio = @porcentaje
			WHERE (Activo = 1) 
				

			RETURN @@ROWCOUNT
		END TRY
        BEGIN CATCH 
            RETURN @@ERROR *-1
        END CATCH 
    END