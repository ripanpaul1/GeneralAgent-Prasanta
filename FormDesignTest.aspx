<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="FormDesignTest.aspx.cs" Inherits="FormDesignTest" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .FontBold {
            font-weight: bold;
        }

        .FontRightBold {
            text-align: right;
            font-weight: bold;
        }
    </style>
    <table width="100%">
        <tr>
            <td class="FontBold" colspan="5" style="padding: 15px;">
                <br />
                <b>User Management</b>
                <hr />

            </td>
        </tr>
        <tr>
            <td colspan="4" style="padding: 5px;"></td>
            <td class="FontRightBold" style="padding: 5px;">
                <asp:LinkButton ID="LinkAdd"  runat="server" CommandArgument="0"
                    ToolTip="click here to add new record" Font-Underline="False"
                    Font-Size="12pt"
                    Font-Names="Arial" Font-Bold="False" CausesValidation="False">Add New</asp:LinkButton>
                &nbsp;  |&nbsp;
                                                            <asp:LinkButton ID="LinkBrowse"  runat="server" CommandArgument="1"
                                                                ToolTip="click here to browse all records." Font-Underline="False"
                                                                Font-Size="12pt"
                                                                Font-Names="Arial" Font-Bold="False" CausesValidation="False">Browse</asp:LinkButton>
            </td>
        </tr>
    </table>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:MultiView ID="mvUserManager" runat="server" ActiveViewIndex="0">
        <asp:View ID="vwAdd" runat="server">
            <table>
                <tr>
                    <td style="width: 189px">&nbsp;<span style="color: #ff0000">*</span><span>First Name:</span></td>
                    <td style="width: 761px">&nbsp;<asp:TextBox ID="txtFirstName" runat="server" BorderColor="#8ADDF4" BorderStyle="Solid"
                        BorderWidth="1px" Width="200px"
                       ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        <%--<asp:RequiredFieldValidator ID="reqvalFName" runat="server" ControlToValidate="txtFirstName"
                            SetFocusOnError="True" ErrorMessage="Please enter First Name"></asp:RequiredFieldValidator>--%>
                       
                    </td>
                </tr>
                
            </table>
        </asp:View>
        <asp:View ID="vwView" runat="server"></asp:View>
    </asp:MultiView>
</asp:Content>

