<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PaginaCliente.aspx.vb" Inherits="TareaProgramada1.PaginaCliente" %>

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
            <h1>Salario: <%Response.Write(Session("Saldo").ToString()) %>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClienteConnectionString %>" SelectCommand="GetEstadoCuenta" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="param1" SessionField="IdCuenta" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            </h1>
        </div>
        Estados de Cuenta:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio" />
                <asp:BoundField DataField="FechaFin" HeaderText="FechaFin" SortExpression="FechaFin" />
                <asp:BoundField DataField="SaldoInicial" HeaderText="SaldoInicial" SortExpression="SaldoInicial" />
                <asp:BoundField DataField="SaldoFinal" HeaderText="SaldoFinal" SortExpression="SaldoFinal" />
                <asp:BoundField DataField="QRCH" HeaderText="QRCH" SortExpression="QRCH" />
                <asp:BoundField DataField="QRCA" HeaderText="QRCA" SortExpression="QRCA" />
                <asp:BoundField DataField="SaldoMinimo" HeaderText="SaldoMinimo" SortExpression="SaldoMinimo" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
