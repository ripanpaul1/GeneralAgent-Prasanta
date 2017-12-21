<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/LoginStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-page">
            <div class="form">
                <div class="login-form">
                    <table>
                        <tr>
                            <td>Username:</td>
                            <td>
                                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                    </table>
                    <asp:Button ID="btnLogin" runat="server" Text="LOGIN" Font-Bold="true" OnClick="btnLogin_Click" BackColor="#4CAF50" />


                </div>
            </div>
        </div>


        <script src="js/index.js"></script>
    </form>
</body>
</html>
