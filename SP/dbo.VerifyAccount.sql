CREATE PROCEDURE [dbo].[VerifyAccount]
    @param1 nvarchar(100)
AS
    Begin
        Begin try
            SELECT Password FROM Cliente WHERE Usuario = @param1
            Return @@RowCount
        end try
        Begin catch
            return @@ERROR *-1
        end catch 
    end