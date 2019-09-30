CREATE PROCEDURE eliminarBeneficiario
	@docId varchar(50)
AS	
	BEGIN 
		BEGIN TRY
			UPDATE Beneficiario
			SET Activo = 0, FechaDesactivo = GETDATE()
			WHERE Beneficiario.DocId = @docId
			RETURN @@ROWCOUNT
		END TRY
        BEGIN CATCH 
            RETURN @@ERROR *-1
        END CATCH 
    END
