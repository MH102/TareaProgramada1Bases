<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PaginaCliente.aspx.vb" Inherits="PrograBD.PaginaCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Nombre: <%Response.Write(Session("Nombre").ToString()) %></h1>
        </div>
        <div>
            <h1>Salario: <%Response.Write(Session("Moneda").ToString() + " " + Session("Saldo").ToString()) %>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="GetEstadoCuenta" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="param1" SessionField="IdCuenta" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            </h1>
        </div>
        Estados de Cuenta:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="FechaInicio" HeaderText="Fecha Inicial" SortExpression="FechaInicio" />
                <asp:BoundField DataField="FechaFinal" HeaderText="Fecha Final" SortExpression="FechaFinal" />
                <asp:BoundField DataField="SaldoInicial" HeaderText="Saldo Inicial" SortExpression="SaldoInicial" />
                <asp:BoundField DataField="SaldoFinal" HeaderText="Saldo Final" SortExpression="SaldoFinal" />
                <asp:BoundField DataField="Intereses" HeaderText="Intereses" SortExpression="Intereses" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    <p>
        &nbsp;</p>
        <asp:Button ID="Button1" runat="server" Text="Cerrar sesion" style="z-index: 1; left: 479px; top: 390px; position: absolute" />
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 17px; top: 390px; position: absolute; width: 130px; right: 645px;" Text="Beneficiarios" />
    </form>
    </body>
</html>
