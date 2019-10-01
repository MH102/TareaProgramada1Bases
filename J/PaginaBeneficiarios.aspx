<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PaginaBeneficiarios.aspx.vb" Inherits="PrograBD.PaginaBeneficiarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 30px;
            width: 173px;
        }
        #PaginaBeneficiarios {
            height: 593px;
            margin-bottom: 6px;
        }
        #Select1 {
            height: 73px;
            width: 196px;
            z-index: 1;
            left: 83px;
            top: 254px;
            position: absolute;
        }
    </style>
</head>
<body style="height: 609px">
    <form id="PaginaBeneficiarios" runat="server">
    <h2>Beneficiarios</h2><hr style="margin-bottom: 0px" />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="mostrarBeneficiarios" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="param1" SessionField="IdCuenta" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                


                


        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 188px; top: 447px; position: absolute" Text="Parentesco"></asp:Label>
        <asp:DropDownList ID="DropDownBenef" runat="server" DataSourceID="SqlDataSource1" DataTextField="DocId" DataValueField="DocId" style="z-index: 1; left: 610px; top: 467px; position: absolute; width: 140px; height: 15px;">
        </asp:DropDownList>
                


                


        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 35px; top: 567px; position: absolute" Text="Email"></asp:Label>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 335px; top: 447px; position: absolute" Text="Porcentaje"></asp:Label>

        <asp:Button ID="ButtonEliminarBf" runat="server" style="margin-left: 0px; z-index: 1; left: 610px; top: 585px; position: absolute; width: 140px; height: 25px;" Text="Eliminar beneficiario" />
                

        <asp:DropDownList ID="DropDownParent" runat="server" style="z-index: 1; left: 185px; top: 470px; position: absolute; height: 22px; width: 125px">
            <asp:ListItem Value="P">Padre</asp:ListItem>
            <asp:ListItem Value="M">Madre</asp:ListItem>
            <asp:ListItem Value="C">Conyuge</asp:ListItem>
            <asp:ListItem Value="B">Hermano</asp:ListItem>
            <asp:ListItem Value="S">Hermana</asp:ListItem>
            <asp:ListItem Value="H">Hijo</asp:ListItem>
            <asp:ListItem Value="D">Hija</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBoxDocId" runat="server" style="z-index: 1; left: 185px; top: 525px; position: absolute; width: 120px;" TextMode="Number"></asp:TextBox>
                


                


        <asp:Button ID="ButtonAgregarBf" runat="server" Text="Agregar beneficiario" style="z-index: 1; left: 610px; top: 505px; position: absolute; width: 140px; height: 25px;" />



                


        <asp:Button ID="ButtonEstados" runat="server" style="z-index: 1; left: 594px; top: 16px; position: absolute" Text="Estados de cuenta" />
        <asp:TextBox ID="TextBoxPorcent" runat="server" style="z-index: 1; left: 330px; top: 470px; position: absolute; width: 125px;" TextMode="Number" ViewStateMode="Enabled" />
        <asp:RangeValidator ID="RangeValidator" ControlToValidate="TextBoxPorcent"  
             Type="Integer" MinimumValue="1" MaximumValue="100" Display="Dynamic"  
             ErrorMessage="Ingresa un porcentaje <br /> entre 1 y 100<br />"      
             runat="server" style="z-index: 1; left: 469px; top: 472px; position: absolute"/>  


        <asp:GridView ID="GridViewBenef" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="z-index: 1; left: 25px; top: 81px; position: absolute; height: 236px; width: 613px" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="DocId" HeaderText="Identificacion" SortExpression="DocId" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Detalle" HeaderText="Parentesco" SortExpression="Detalle" />
                <asp:BoundField DataField="PorcentajeBeneficio" HeaderText="Porcentaje" SortExpression="PorcentajeBeneficio" />
                <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha de nacimiento" SortExpression="FechaNacimiento" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Telefono1" HeaderText="Telefono 1" SortExpression="Telefono1" />
                <asp:BoundField DataField="Telefono2" HeaderText="Telefono 2" SortExpression="Telefono2" />
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

        
        
        <asp:Button ID="ButtonEditarBf" runat="server" Text="Editar Beneficiario" style="z-index: 1; left: 610px; top: 545px; position: absolute; width: 140px; height: 25px;" />
                

        <asp:TextBox ID="TextBoxNombre" runat="server" style="z-index: 1; left: 33px; top: 470px; position: absolute; " Width="125px">Ingresar nombre</asp:TextBox>
                


                


        <asp:TextBox ID="TextBoxFecha" runat="server" style="z-index: 1; left: 33px; top: 525px; position: absolute; width: 125px;" TextMode="Date"></asp:TextBox>
                


                


        <asp:TextBox ID="TextBoxEmail" runat="server" style="z-index: 1; left: 33px; top: 590px; position: absolute; width: 125px;">Ingresar email</asp:TextBox>
                


                


        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 193px; top: 505px; position: absolute" Text="Identificacion"></asp:Label>
        <asp:TextBox ID="TextBoxTel1" runat="server" style="z-index: 1; left: 330px; top: 525px; position: absolute; width: 125px;" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="TextBoxTel2" runat="server" style="z-index: 1; left: 330px; top: 590px; position: absolute; width: 125px;" TextMode="Number"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 334px; top: 503px; position: absolute" Text="Telefono 1"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 334px; top: 567px; position: absolute" Text="Telefono 2"></asp:Label>
                


                


        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 34px; top: 506px; position: absolute" Text="Fecha de nacimiento"></asp:Label>
                


                


        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 188px; top: 567px; position: absolute" Text="Tipo de Id"></asp:Label>
        <asp:DropDownList ID="DropDownTipoId" runat="server" style="z-index: 1; left: 185px; top: 590px; position: absolute; width: 125px; height: 22px;">
            <asp:ListItem Value="1">Cedula</asp:ListItem>
            <asp:ListItem Value="2">Pasaporte</asp:ListItem>
            <asp:ListItem Value="3">Cedula extranjera</asp:ListItem>
        </asp:DropDownList>
                


                


        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 38px; top: 448px; position: absolute" Text="Nombre"></asp:Label>
                


                


    </form>
</body>
</html>
