CREATE PROCEDURE [dbo].[GetEstadoCuenta]
    @param1 int 
AS
    Begin
        Begin try
            SELECT TOP 8 FechaInicio, FechaFinal, SaldoInicial, SaldoFinal, Intereses
            FROM EstadoDeCuenta
            WHERE IdCuenta = @param1
            ORDER BY [FechaInicio] DESC
            Return @@RowCount
        end try
        Begin catch
            return @@ERROR *-1
        end catch 
    end