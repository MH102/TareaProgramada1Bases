CREATE PROCEDURE [dbo].[GetInfo]
    @param1 nvarchar(30)
AS
    Begin
        Begin try
            DECLARE @CuentaId int
            SET @CuentaId = (
                SELECT CuentaId FROM Cliente WHERE Usuario = @param1
            )
            SELECT O.Saldo, O.Id, C.Nombre, M.Simbolo 
            FROM CuentaAhorro O, Cliente C, TipoCuenta T, Moneda M
            WHERE O.Id = @CuentaId and C.Usuario = @param1 and T.Id = O.IdTipoCA and M.Id = T.IdMoneda
        Return @@RowCount
        end try
        Begin catch
            return @@ERROR *-1
        end catch 
    end