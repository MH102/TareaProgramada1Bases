CREATE PROCEDURE mostrarBeneficiarios 
@param1 int
AS
	BEGIN
		BEGIN TRY
			SELECT b.DocId, b.Nombre, b.PorcentajeBeneficio, b.Activo, b.FechaNacimiento, b.Email, b.Telefono1, b.Telefono2, p.Detalle 
			FROM Beneficiario b, Parentesco p
			WHERE (b.Parentesco = p.Nombre) AND
				  (@param1 = b.IdCuenta)
			RETURN @@ROWCOUNT
		END TRY
		BEGIN CATCH
			RETURN @@ERROR *-1
		END CATCH
	END
