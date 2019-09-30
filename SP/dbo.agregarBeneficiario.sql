CREATE PROCEDURE agregarBeneficiario
	@nombre varchar(50),
	@fecha date,
	@porcentaje INT,
    @parentesco VARCHAR(50),
	@docId VARCHAR(50),
	@email VARCHAR(50),
	@telefono1 VARCHAR(50),
	@telefono2 VARCHAR(50),
	@tipoDoc INT,
	@numCuenta INT
AS
	BEGIN
		BEGIN TRY 
			INSERT INTO Beneficiario (Nombre, PorcentajeBeneficio, Activo, FechaNacimiento,	Parentesco, 
									DocId, Email, Telefono1, Telefono2, TipoDocId, IdCuenta)
			VALUES (@nombre, @porcentaje, 1, @fecha)
			RETURN @@ROWCOUNT
		END TRY
		BEGIN CATCH
			RETURN @@ERROR *-1
		END CATCH
	END
