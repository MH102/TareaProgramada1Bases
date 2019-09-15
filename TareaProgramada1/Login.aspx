<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="TareaProgramada1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            </div>
            <table>
                <tr>
                    <td>
                        Username :
                    </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        &nbsp; <!-- Blank Space -->|
                    </td>
                    <td>
                        <asp:Button ID="btnlogin" runat="server" Text="Login" Width="129px" style="margin-bottom: 0px" />
                    </td>
                    <td>
                        &nbsp; <!-- Blank Space -->|
                    </td>
                </tr>
            </table>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter username" ForeColor="Red"></asp:RequiredFieldValidator>
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>
