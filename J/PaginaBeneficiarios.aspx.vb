Imports System.Data.SqlClient
Imports System.Data
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Public Class PaginaBeneficiarios
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\josep\Desktop\Progras\Bases de datos\PrograBD\PrograBD\PrograBD\App_Data\Basedatos.mdf;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles ButtonAgregarBf.Click
        Dim command As New SqlCommand()
        command.Connection = cn
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "agregarBeneficiario"


        Dim param(10) As SqlParameter
        param(0) = New SqlParameter("@nombre", SqlDbType.VarChar)
        param(0).Value = TextBoxNombre.Text

        param(1) = New SqlParameter("@porcentaje", SqlDbType.Int)
        param(1).Value = TextBoxPorcent.Text

        param(2) = New SqlParameter("@fecha", SqlDbType.Date)
        param(2).Value = TextBoxFecha.Text

        param(3) = New SqlParameter("@parentesco", SqlDbType.VarChar)
        param(3).Value = DropDownParent.SelectedValue.ToString()

        param(4) = New SqlParameter("@docId", SqlDbType.VarChar)
        param(4).Value = TextBoxDocId.Text

        param(5) = New SqlParameter("@email", SqlDbType.VarChar)
        param(5).Value = TextBoxEmail.Text

        param(6) = New SqlParameter("@telefono1", SqlDbType.VarChar)
        param(6).Value = TextBoxTel1.Text

        param(7) = New SqlParameter("@telefono2", SqlDbType.VarChar)
        param(7).Value = TextBoxTel2.Text

        param(8) = New SqlParameter("@tipoDoc", SqlDbType.Int)
        param(8).Value = DropDownTipoId.SelectedValue

        param(9) = New SqlParameter("@numCuenta", SqlDbType.Int)
        param(9).Value = TextBoxNumCuenta.Text


        Dim command1 As New SqlCommand()
        command1.Connection = cn
        command1.CommandType = CommandType.StoredProcedure


        command.Parameters.AddRange(param)
        cn.Open()

        command.ExecuteNonQuery()

        cn.Close()

        Response.Redirect("~/PaginaBeneficiarios.aspx")
        'Response.Write("<script>alert('El porcentaje de los beneficiarios no suma 100%')</script>")





    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles ButtonEditarBf.Click
        Dim command As New SqlCommand()
        command.Connection = cn
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "editarBeneficiarios"



        Dim param(4) As SqlParameter
        param(0) = New SqlParameter("@nombre", SqlDbType.VarChar)
        param(0).Value = TextBoxNombre.Text

        param(1) = New SqlParameter("@porcentaje", SqlDbType.Int)
        param(1).Value = TextBoxPorcent.Text

        param(2) = New SqlParameter("@parentesco", SqlDbType.VarChar)
        param(2).Value = DropDownParent.SelectedValue().ToString()

        param(3) = New SqlParameter("@docId", SqlDbType.VarChar)
        param(3).Value = DropDownBenef.SelectedValue().ToString()


        command.Parameters.Add(param(0))
        command.Parameters.Add(param(1))
        command.Parameters.Add(param(2))
        command.Parameters.Add(param(3))

        cn.Open()

        command.ExecuteNonQuery()


        cn.Close()

        Response.Redirect("~/PaginaBeneficiarios.aspx")

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewBenef.SelectedIndexChanged

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownBenef.SelectedIndexChanged

    End Sub

    Protected Sub ButtonEliminarBf1_Click(sender As Object, e As EventArgs) Handles ButtonEliminarBf.Click
        Dim command As New SqlCommand()
        command.Connection = cn
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "eliminarBeneficiario"


        Dim param As SqlParameter
        param = New SqlParameter("@docId", SqlDbType.VarChar)
        param.Value = DropDownBenef.SelectedValue.ToString()


        command.Parameters.Add(param)
        cn.Open()

        command.ExecuteNonQuery()

        cn.Close()

        Response.Redirect("~/PaginaBeneficiarios.aspx")

    End Sub

    Protected Sub ButtonEstados_Click(sender As Object, e As EventArgs) Handles ButtonEstados.Click
        Response.Redirect("~/PaginaCliente.aspx")
    End Sub

    Protected Sub TextBoxPorcent_TextChanged(sender As Object, e As EventArgs) Handles TextBoxPorcent.TextChanged, lblRange.DataBinding

    End Sub

End Class