<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="100%">
                <tr>
                    <td colspan="2" style="border: thin solid #000000"><strong>Quote From Century</strong></td>
                    <td class="auto-style1" colspan="2" style="border: thin solid #000000">Career 2</td>
                    <td class="auto-style7" style="border: thin solid #000000;" colspan="2">Career 3</td>
                </tr>
                <tr>

                    <td class="auto-style7" style="border: thin solid #000000;">Subtotal Line of Business Premium:	</td>
                    <td class="auto-style1" style="border: thin solid #000000">
                       </td>
                    <td class="auto-style7" style="border: thin solid #000000;">Subtotal Line of Business Premium:	</td>
                    <td class="auto-style1" style="border: thin solid #000000">
                        <asp:Label ID="Label1" runat="server"></asp:Label></td>
                    <td class="auto-style7" style="border: thin solid #000000;">Subtotal Line of Business Premium:	</td>
                    <td class="auto-style1" style="border: thin solid #000000;">
                        <asp:Label ID="Label2" runat="server"></asp:Label></td>
                </tr>
                <tr>

                    <td class="auto-style7" style="border: thin solid #000000;">TRIA Premium:	</td>
                    <td class="auto-style1" style="border: thin solid #000000">
                        </td>
                    <td class="auto-style7" style="border: thin solid #000000;">TRIA Premium:	</td>
                    <td class="auto-style1" style="border: thin solid #000000">
                        <asp:Label ID="Label3" runat="server"></asp:Label></td>
                    <td class="auto-style7" style="border: thin solid #000000;">TRIA Premium:	</td>
                    <td class="auto-style1" style="border: thin solid #000000;">
                        <asp:Label ID="Label4" runat="server"></asp:Label></td>
                </tr>
                <tr>

                    <td class="auto-style7" style="border: thin solid #000000;">Total Premium:	</td>
                    <td class="auto-style1" style="border: thin solid #000000">
                       </td>
                    <td class="auto-style7" style="border: thin solid #000000;">Total Premium:	</td>
                    <td class="auto-style1" style="border: thin solid #000000">
                        <asp:Label ID="Label5" runat="server"></asp:Label></td>
                    <td class="auto-style7" style="border: thin solid #000000;">Total Premium:	</td>
                    <td class="auto-style1" style="border: thin solid #000000;">
                        <asp:Label ID="Label6" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td>
                        <asp:Button ID="btnCalculate" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="16px"
                            ForeColor="White" Text="Calculate Premium" ToolTip="click to calculate" Width="150px" Height="40px" OnClick="btnCalculate_Click" />
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>

            </table>
            <table width="100%">
                <tr>
                    <td style="border: 1px solid black; border-collapse: collapse; font-size: 15px;" width="33%"><strong>Quote From Century</strong></td>
                    <td style="border: 1px solid black; border-collapse: collapse; font-size: 15px;" width="33%"><strong>Quote From Career 2</strong></td>
                    <td style="border: 1px solid black; border-collapse: collapse; font-size: 15px;" width="33%"><strong>Quote From Career 3</strong></td>
                </tr>
                <tr>
                    <td style="border: 1px solid black; border-collapse: collapse; font-size: 15px;">
                        <table width="100%"><tr>
                            <td>Subtotal Line of Business Premium:</td>
                            <td> <asp:Label ID="lblBusinessPremium" runat="server"></asp:Label></td>
                               </tr>
                            <tr><td>TRIA Premium:</td><td><asp:Label ID="lblTRIAPremium" runat="server"></asp:Label></td></tr>
                            <tr><td>Total Premium:</td><td> <asp:Label ID="lblTotalPremium" runat="server"></asp:Label></td></tr>
                        </table>

                    </td>
                    <td style="border: 1px solid black; border-collapse: collapse; font-size: 15px;">&nbsp;</td>
                    <td style="border: 1px solid black; border-collapse: collapse; font-size: 15px;">&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
