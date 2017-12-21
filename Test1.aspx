<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test1.aspx.cs" Inherits="Test1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    </head>
<body>
    <form id="form1" runat="server">
        <div>
             <table border="1">
                                            <tr>
                                                <td colspan="2"><strong>Quotes From Century</strong></td>
                                            </tr>                                           
                                            <tr>
                                                <td><strong>Subtotal Line of Business Premium:</strong></td>
                                                <td>
                                                    #BusinessPremium</td>
                                            </tr>                                           
                                            <tr>
                                                <td><strong>TRIA Premium:</strong></td>
                                                <td>
                                                    #TRIAPremium</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Total Premium:</strong></td>
                                                <td>
                                                    #TotalPremium</td>
                                            </tr>
                                        </table>
        </div>
    </form>
</body>
</html>
