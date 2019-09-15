Imports System.Data.SqlClient
Imports System.Data
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Public Class Login
    Inherits System.Web.UI.Page

    'CONEXION SQL A BASE DE DATOS
    Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Aozhen\source\repos\TareaProgramada1\TareaProgramada1\App_Data\DatosCliente.mdf;Integrated Security=True")


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        Dim params(1) As SqlParameter
        params(0) = New SqlParameter("@param1", SqlDbType.NVarChar)
        params(0).Value = txtusername.Text
        Dim params2(1) As SqlParameter
        params2(0) = New SqlParameter("@param1", SqlDbType.NVarChar)

        params2(0).Value = txtusername.Text
        Dim reader As SqlDataReader
        Dim command As New SqlCommand()
        command.Connection = cn
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "GetInfo"
        command.Parameters.Add(params(0))
        Dim reader2 As SqlDataReader
        Dim command2 As New SqlCommand()
        command2.Connection = cn
        command2.CommandType = CommandType.StoredProcedure
        command2.CommandText = "VerifyAccount"
        command2.Parameters.Add(params2(0))
        cn.Open()

        reader2 = command2.ExecuteReader()
        reader2.Read()

        If reader2.HasRows Then
            If reader2.Item(0).ToString().Equals(txtpassword.Text) Then
                cn.Close()
                cn.Open()
                reader = command.ExecuteReader()
                reader.Read()
                Response.Write("<script>alert('Login Succesful')</script>")
                Session("Saldo") = reader.Item(0).ToString()
                Session("Nombre") = reader.Item(2).ToString()
                Session("IdCuenta") = reader.Item(1).ToString()
                Response.Redirect("~/PaginaCliente.aspx")
            Else
                Response.Write("<script>alert('Login Unsuccesful')</script>")
            End If
        Else
            Response.Write("<script>alert('Cuenta no existe')</script>")
        End If
        cn.Close()
    End Sub
End Class