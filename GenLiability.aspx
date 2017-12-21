<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="GenLiability.aspx.cs" Inherits="GenLiability" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        .show {
            display: none;
        }

        .auto-style1 {
            text-align: right;
        }

        .auto-style2 {
            color: #FF0000;
        }

        .auto-style3 {
            text-align: center;
        }

        .auto-style4 {
            background-color: #317DB1;
        }

        tr.border_bottom td {
            border-bottom: 1pt solid black;
        }

        table.border-table {
            border: 1px solid black;
            border-collapse: collapse;
        }

        .floating-box {
            display: inline-block;
            width: 150px;
            height: 40px;
            /*margin: 10px;*/
            border: 1px solid #000000;
            background-color: grey;
            font-weight: bold;
            text-align: center;
            font-size: 16px;
            align-content:center;
            align-items:center;
            vertical-align:central;
           margin: auto;
           padding-top:10px;
        }

        .floating-boxActive {
             display: inline-block;
            width: 150px;
            height: 40px;
            /*margin: 10px;*/
            border: 1px solid #000000;
            background-color: #317DB1;
            font-weight: bold;
            text-align: center;
            font-size: 16px;
            align-content:center;
            align-items:center;
            vertical-align:central;
           margin: auto;
           padding-top:10px;

            
        }

        .auto-style5 {
            color: #000000;
        }

        .modalBackground {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }

        .modalPopup {
            background-color: #fff;
            border: 3px solid #ccc;
            padding: 10px;
            width: 400px;
            height: 500px;
        }
         .auto-style7 {
            text-align: right;
            font-weight: bold;
        }
    </style>
    <table width="100%">
        <tr>
            <td colspan="5" style="padding: 15px;">
                <br />
                <b>Home  >>  Quote Information  >> General Liability</b>
                <hr />
                <br />
            </td>
        </tr>
       <tr>
            <td width="15%">
              <span class=" auto-style7">Quote: </span> 
                <asp:Label ID="lblQuote" runat="server"></asp:Label></td>
            <td width="20%">
                <em class=" auto-style7">Effective: </em>
                <asp:Label ID="lblEffective" runat="server"></asp:Label></td>
            <td width="35%" class="auto-style1">
                <em class=" auto-style7">Expiration: </em>
                <asp:Label ID="lblExpiration" runat="server"></asp:Label>
                <asp:LinkButton ID="lnkBtnChange" runat="server">Change</asp:LinkButton></td>
            <td width="30%" class="auto-style1 auto-style7"">Quote Authority: <span class="auto-style2 auto-style7">Brokerage</span><asp:DropDownList ID="ddlAuthority" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <br />

            </td>
        </tr>
        <tr>
            <td colspan="5">

               <a href="GenLiability.aspx" class="auto-style5"> <div class="floating-boxActive">General Liability</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
               <a href="PropertyDetails.aspx" class="auto-style5"> <div class="floating-box">Property</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                <a href="SummaryDetails.aspx" class="auto-style5"><div class="floating-box">Summary</div></a>

            </td>
        </tr>
    </table>
    <asp:MultiView ID="mvGeneralLiability" runat="server">
        <asp:View ID="vwAddClass" runat="server">
            <table width="100%">
                <tr>
                    <td colspan="5">
                        <h3><b>Add Class</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"  style="padding: 5px;" colspan="2">Zip<span class="auto-style2">*</span>:&nbsp;&nbsp; 
                    </td>
                    <td colspan="3"  style="padding: 5px;">
                        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>&nbsp;<asp:LinkButton ID="lnkLookup" runat="server">Lookup Zip Code</asp:LinkButton>
                        State:
                        <asp:DropDownList ID="ddlState" runat="server"></asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2"  style="padding: 5px;">Territory<span class="auto-style2">*</span>:&nbsp;&nbsp; 
                    </td>
                    <td colspan="3"  style="padding: 5px;">
                        <asp:DropDownList ID="ddlTerritory" runat="server"></asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2"  style="padding: 5px;">Find Class<span class="auto-style2">*</span>:&nbsp;&nbsp; 
                    </td>
                    <td colspan="3"  style="padding: 5px;">
                        <asp:TextBox ID="txtFindClass" runat="server"></asp:TextBox>&nbsp;&nbsp;<asp:Button ID="btnSearch" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                            ForeColor="White" Text="Search" ToolTip="click to search" Width="60px" OnClick="btnSearch_Click" />

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2"  style="padding: 5px;">Select Class:&nbsp;&nbsp; 
                    </td>
                    <td colspan="3"  style="padding: 5px;">
                        <asp:DropDownList ID="ddlSelectClass" runat="server" OnSelectedIndexChanged="ddlSelectClass_SelectedIndexChanged"></asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2"  style="padding: 5px;">Full Description:&nbsp;&nbsp; 
                    </td>
                    <td colspan="3"  style="padding: 5px;">
                        <asp:Label ID="lblFullDescription" runat="server"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2"  style="padding: 5px;">Class Authority Level:&nbsp;&nbsp; 
                    </td>
                    <td colspan="3"  style="padding: 5px;">Brokerage

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2"  style="padding: 5px;">Exposure<span class="auto-style2">*</span>:&nbsp;&nbsp; 
                    </td>
                    <td colspan="3"  style="padding: 5px;">
                        <asp:TextBox ID="txtExposure" runat="server"></asp:TextBox>&nbsp;Sales

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">Coverage:&nbsp;&nbsp; 
                    </td>
                    <td colspan="3">
                        <asp:CheckBox ID="chkPremises" Text="Premises Ops." runat="server" />&nbsp;<span class="auto-style2">Brokerage</span>
                        &nbsp;&nbsp;<asp:CheckBox ID="chkProduct" Text="Products & Completed Ops." runat="server" />&nbsp;<span class="auto-style2">Brokerage</span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                    <td colspan="3">
                        <asp:Button ID="btnContinue" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="16px"
                            ForeColor="White" Text="Continue" ToolTip="click to search" Width="140px" Height="40px" OnClick="btnContinue_Click" /></td>
                </tr>
            </table>

        </asp:View>
        <asp:View ID="vwLimit" runat="server">
            <table width="100%">
                <tr>
                    <td colspan="4">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <table class="border-table" width="100%">
                            <thead>
                             
                                <asp:Repeater ID="rptClass" runat="server">
                                    <HeaderTemplate>
                                        <tr class="auto-style4 border_bottom" style="color: #FFFFFF">
                                            <th style="width: 1%;padding: 5px;"></th>
                                            <th style="width: 1%;padding: 5px;"></th>
                                            <th style="width: 70%;border: 1px solid black;border-collapse: collapse;padding: 5px;" >Class&nbsp;</th>
                                            <th style="width: 12%;border: 1px solid black;border-collapse: collapse;padding: 5px;">State/Terr.</th>
                                            <th style="width: 16%;border: 1px solid black;border-collapse: collapse;padding: 5px;">Exposure</th>
                                            
                                        </tr>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr class="border_bottom">
                                            <td style="border: 1px solid black;border-collapse: collapse;padding: 5px;">
                                                <asp:ImageButton ID="ibtnEdit" runat="server" ImageUrl="~/img/edit1.gif"
                                                    CommandArgument='<% # Eval("ID") %>' ToolTip="Edit" />

                                            </td>
                                            <td style="border: 1px solid black;border-collapse: collapse;padding: 5px;">
                                                <asp:ImageButton ID="ibtnDel" runat="server" ImageUrl="~/img/del.gif"
                                                    CommandArgument='<% # Eval("ID") %>' ToolTip="Delete" />

                                            </td>
                                            <td style="border: 1px solid black;border-collapse: collapse;padding: 5px;">
                                                
                                                <asp:LinkButton ID="lbtnClass" runat="server" Font-Size="15px" CommandArgument='<% # Eval("ID") %>'>'<%#Eval("Class") %>'</asp:LinkButton>

                                            </td>
                                            <td style="border: 1px solid black;border-collapse: collapse;padding: 5px;"  class="auto-style1">
                                                <asp:Label ID="lblTerritory" runat="server" Font-Bold="true" Font-Size="15px" Text='<%#Eval("TerritoryDetails") %>' />
                                            </td>
                                            <td  class="auto-style1" style="border: 1px solid black;border-collapse: collapse;padding: 5px;">
                                                <asp:Label ID="lblExposure" runat="server" Font-Size="15px" Font-Bold="true" Text='<%#Eval("Exposure") %>' />
                                                &nbsp; Sales                     </td>
                                            
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>


                            </thead>
                            <tbody>

                               
                            </tbody>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="padding: 5px;">
                        <h3><b>Limits</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="padding: 5px;">Each Occurance:&nbsp;&nbsp; 
                    </td>
                    <td style="padding: 5px;">
                        <asp:DropDownList ID="ddlOccurance" runat="server" Width="90px">
                            <asp:ListItem Value="100000">$100,000</asp:ListItem>
                            <asp:ListItem Value="100000">$100,000</asp:ListItem>
                            <asp:ListItem Value="200000">$200,000</asp:ListItem>
                            <asp:ListItem Value="300000">$300,000</asp:ListItem>
                            <asp:ListItem Value="500000">$500,000</asp:ListItem>
                            <asp:ListItem Value="600000">$600,000</asp:ListItem>
                            <asp:ListItem Value="1000000">$1,000,000</asp:ListItem>
                            <asp:ListItem Value="2000000">$2,000,000</asp:ListItem>
                            <asp:ListItem Value="3000000">$3,000,000</asp:ListItem>
                            <asp:ListItem Value="4000000">$4,000,000</asp:ListItem>
                            <asp:ListItem Value="5000000">$5,000,000</asp:ListItem>
                            <asp:ListItem Value="6000000">$6,000,000</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7" style="padding: 5px;">Damage to Premises rented to you:&nbsp;&nbsp; 
                    </td>
                    <td style="padding: 5px;">
                        <asp:DropDownList ID="ddlDamagetoPremises" runat="server"  Width="90px">
                            <asp:ListItem Value="100000">$50,000</asp:ListItem>
                            <asp:ListItem Value="100000">$100,000</asp:ListItem>                            
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="padding: 5px;">General Aggregate:&nbsp;&nbsp; 
                    </td>
                    <td style="padding: 5px;">
                        <asp:DropDownList ID="ddlGeneralAggregate" runat="server"  Width="90px">
                            <asp:ListItem Value="100000">$100,000</asp:ListItem>
                            <asp:ListItem Value="100000">$100,000</asp:ListItem>
                            <asp:ListItem Value="200000">$200,000</asp:ListItem>
                            <asp:ListItem Value="300000">$300,000</asp:ListItem>
                            <asp:ListItem Value="500000">$500,000</asp:ListItem>
                            <asp:ListItem Value="600000">$600,000</asp:ListItem>
                            <asp:ListItem Value="1000000">$1,000,000</asp:ListItem>
                            <asp:ListItem Value="2000000">$2,000,000</asp:ListItem>
                            <asp:ListItem Value="3000000">$3,000,000</asp:ListItem>
                            <asp:ListItem Value="4000000">$4,000,000</asp:ListItem>
                            <asp:ListItem Value="5000000">$5,000,000</asp:ListItem>
                            <asp:ListItem Value="6000000">$6,000,000</asp:ListItem>
                            <asp:ListItem Value="7000000">$7,000,000</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7" style="padding: 5px;">Medical Expenses:&nbsp;&nbsp; 
                    </td>
                    <td style="padding: 5px;">
                        <asp:DropDownList ID="ddlMedicalExpense" runat="server"  Width="90px">
                            <asp:ListItem Value="0">$0</asp:ListItem>
                            <asp:ListItem Value="500">$500</asp:ListItem>
                            <asp:ListItem Value="1000">$1,000</asp:ListItem>
                            <asp:ListItem Value="2000">$2,000</asp:ListItem>
                            <asp:ListItem Value="2500">$2,500</asp:ListItem>
                            <asp:ListItem Value="5000">$5,000</asp:ListItem>
                            <asp:ListItem Value="10000">$10,000</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="padding: 5px;">Prod and Completed Ops Aggregate:&nbsp;&nbsp; 
                    </td>
                    <td style="padding: 5px;">
                        <asp:DropDownList ID="ddlProdAggregate" runat="server"  Width="90px">
                            <asp:ListItem Value="100000">$100,000</asp:ListItem>
                            <asp:ListItem Value="100000">$100,000</asp:ListItem>
                            <asp:ListItem Value="200000">$200,000</asp:ListItem>
                            <asp:ListItem Value="300000">$300,000</asp:ListItem>
                            <asp:ListItem Value="500000">$500,000</asp:ListItem>
                            <asp:ListItem Value="600000">$600,000</asp:ListItem>
                            <asp:ListItem Value="1000000">$1,000,000</asp:ListItem>
                            <asp:ListItem Value="2000000">$2,000,000</asp:ListItem>
                            <asp:ListItem Value="3000000">$3,000,000</asp:ListItem>
                            <asp:ListItem Value="4000000">$4,000,000</asp:ListItem>
                            <asp:ListItem Value="5000000">$5,000,000</asp:ListItem>
                            <asp:ListItem Value="6000000">$6,000,000</asp:ListItem>
                            <asp:ListItem Value="7000000">$7,000,000</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7" style="padding: 5px;">Deductible per claim:&nbsp;&nbsp; 
                    </td>
                    <td style="padding: 5px;">
                        <asp:DropDownList ID="ddlDeductibleperClaim" runat="server" Width="90px">
                            <asp:ListItem Value="0">$0</asp:ListItem>
                            <asp:ListItem Value="500">$500</asp:ListItem>
                            <asp:ListItem Value="1000">$1,000</asp:ListItem>
                            <asp:ListItem Value="2000">$2,000</asp:ListItem>
                            <asp:ListItem Value="2500">$2,500</asp:ListItem>
                            <asp:ListItem Value="5000">$5,000</asp:ListItem>
                            <asp:ListItem Value="10000">$10,000</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="padding: 5px;">Personal and Advertising Injury:&nbsp;&nbsp; 
                    </td>
                    <td colspan="3" style="padding: 5px;">
                        <asp:DropDownList ID="ddlInjury" runat="server"  Width="90px">
                            <asp:ListItem Value="100000">$100,000</asp:ListItem>
                            <asp:ListItem Value="100000">$100,000</asp:ListItem>
                            <asp:ListItem Value="200000">$200,000</asp:ListItem>
                            <asp:ListItem Value="300000">$300,000</asp:ListItem>
                            <asp:ListItem Value="500000">$500,000</asp:ListItem>
                            <asp:ListItem Value="600000">$600,000</asp:ListItem>
                            <asp:ListItem Value="1000000">$1,000,000</asp:ListItem>
                            <asp:ListItem Value="2000000">$2,000,000</asp:ListItem>
                            <asp:ListItem Value="3000000">$3,000,000</asp:ListItem>
                            <asp:ListItem Value="4000000">$4,000,000</asp:ListItem>
                            <asp:ListItem Value="5000000">$5,000,000</asp:ListItem>
                            <asp:ListItem Value="6000000">$6,000,000</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>

                    <td colspan="4" style="padding: 5px;">
                        <span class="auto-style2">Click "Save" to save changes to limits.</span>
                    </td>

                </tr>
                <tr>
                    <td colspan="4" style="padding: 5px;">
                        <h3><b>Additional Insured</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>

                    <td colspan="3" style="padding: 5px;">There are no additional insured added to this line of business. click "Add" to add additional insured.
                    </td>
                    <td style="text-align: right" style="padding: 5px;">
                        <asp:Button ID="btnAdditionalInsured" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="9px"
                            ForeColor="White" Text="Add" ToolTip="click to add" Width="40px" /></td>
                </tr>
                <tr>
                    <td colspan="4" style="padding: 5px;">
                        <h3><b>Waiver of Subrogation</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>

                    <td colspan="4" style="padding: 5px;">Form CG2404 - Waiver of transfer or Rights of Recovery Against Others to US is automatically included for any person or organisation for whom you are required to waive your right of recovery on this coverage part under a written contract or agreement. 
                    </td>

                </tr>
                <tr>
                    <td colspan="4" style="padding: 5px;">
                        <h3><b>Hired & Non-Owned Auto Liability</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>

                    <td colspan="3" style="padding: 5px;">The class/state combination qualifies for Hired Auto and/or Non-Owned Auto Liability. Click the "Add" button to add.  
                    </td>
                    <td style="text-align: right; padding: 5px;">
                        <asp:Button ID="btnAutoLiability" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="9px"
                            ForeColor="White" Text="Add" ToolTip="click to add" Width="40px" /></td>

                </tr>

                <tr>
                    <td colspan="4" style="text-align: right; padding: 5px;">
                        <hr />
                        <asp:Button ID="btnCalculate" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="16px"
                            ForeColor="White" Text="Save" ToolTip="click to Save" Width="140px" Height="40px" OnClick="btnCalculate_Click" /></td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    <cc1:ToolkitScriptManager runat="server">
    </cc1:ToolkitScriptManager>

   <%-- <asp:Button ID="btnShow" runat="server" Text="Show" CssClass="show" />
    <cc1:ModalPopupExtender ID="mpShow" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"
        CancelControlID="btnClose" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" Style="display: none; max-height: 100px; overflow: auto;">
        <div style="height: 100px">
            <table width="100%">
                <tr>
                    <td>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <br />
                        <br />
                        <asp:Button ID="btnClose" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                            ForeColor="White" Text="Close" ToolTip="click to Close" Width="70px" Height="40" />
                    </td>
                </tr>
            </table>

        </div>

    </asp:Panel>--%>
     <asp:Panel ID="pnlDetails" runat="server" Width="300px" BorderWidth="1px" BorderStyle="Solid"
                                BorderColor="gray" BackColor="#F0F0F0">
                                <table style="font-weight: bold; font-size: 12px; color: white; font-family: Verdana;
                                    background-color:gray" width="100%">
                                    <tr>
                                        <td style="width: 95%" align="left">
                                            <asp:Label ID="lblQM" runat="server" CssClass="moveCursor" Width="100%">&nbsp;</asp:Label>
                                        </td>
                                        <td style="width: 5%" align="right">
                                            <asp:ImageButton ID="ibtnCloseDetails" runat="server" ToolTip="close" ImageUrl="~/img/close.gif">
                                            </asp:ImageButton>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="pnlInner" Width="100%" runat="server" Height="100px">
                                                
                                                <table id="tblWrite" runat="server" height="100%">
                                                    <tr>
                                                        <td style="width: 100%;padding:5px; vertical-align:bottom;" colspan="2">
                                                            <asp:Label ID="lblMsg" runat="server"></asp:Label></td>
                                                    </tr>
                                                 
                                                    <tr>
                                                        <td style="width: 10%">
                                                        </td>
                                                        <td style="width: 90%; vertical-align: text-bottom;padding:10px; text-align: right;">
                                                            <asp:Button ID="btnOK" runat="server" ForeColor="White"
                                                                Font-Size="12px" Font-Names="Arial" Font-Bold="True" CausesValidation="true"
                                                                Width="60px" ToolTip="click to cancel" Text="OK" BorderWidth="0px" BorderStyle="Solid"
                                                                BorderColor="#8EC2E8" BackColor="Gray" ValidationGroup="Add"></asp:Button>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Button Style="display: none" ID="btnShowModalPopup" runat="server"></asp:Button>
                            <cc1:ModalPopupExtender ID="mpShow" runat="server" TargetControlID="btnShowModalPopup"
                                PopupDragHandleControlID="lblQM" PopupControlID="pnlDetails" BackgroundCssClass="popUpStyle">
                            </cc1:ModalPopupExtender>
</asp:Content>



