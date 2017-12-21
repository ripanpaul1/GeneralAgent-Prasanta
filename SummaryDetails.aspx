<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="SummaryDetails.aspx.cs" Inherits="SummaryDetails" %>

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

        .newStyle1 {
            border: thin solid #000000;
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
            align-content: center;
            align-items: center;
            vertical-align: central;
            margin: auto;
            padding-top: 10px;
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
            align-content: center;
            align-items: center;
            vertical-align: central;
            margin: auto;
            padding-top: 10px;
        }

        .auto-style6 {
            color: #000000;
        }
        /*table, th, td {
           border: 1px solid black;
           border-collapse: collapse;
       }

       th, td {
           padding: 5px;
           text-align: left;
       }*/
        .auto-style7 {
            text-align: right;
            font-weight: bold;
        }

        .auto-style8 {
            font-weight: bold;
        }

        .auto-style9 {
            font-weight: normal;
        }

        .auto-style10 {
            height: 40px;
        }

        .auto-style11 {
            text-align: right;
            height: 40px;
        }
    </style>
    <table width="100%">
        <tr>
            <td colspan="5" class="auto-style8" style="padding: 15px;">
                <br />
                <b>Home  >>  Quote Information  >> Summary</b>
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
            <td width="30%" class="auto-style1 auto-style7">Quote Authority: <span class="auto-style2 auto-style7">Brokerage</span>
                <asp:DropDownList ID="ddlAuthority" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <br />

            </td>
        </tr>
        <tr>
            <td colspan="5">
                <a href="GenLiability.aspx" class="auto-style6">
                    <div class="floating-box">General Liability</div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
                <a href="PropertyDetails.aspx" class="auto-style6">
                    <div class="floating-box">Property</div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
                <a href="SummaryDetails.aspx" class="auto-style6">
                    <div class="floating-boxActive">Summary</div>
                </a>


            </td>
        </tr>
        <tr>
            <td class="auto-style1 auto-style7" style="padding: 10px;">Quote Summary For:
            </td>
            <td style="padding: 10px;">
                <asp:Label ID="lblInsuredName" runat="server"></asp:Label></td>
            <td class="auto-style1 auto-style7" style="padding: 10px;">Company:
            </td>
            <td colspan="3" style="padding: 10px;">
                <asp:Label ID="lblCompany" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1" style="padding: 5px;"></td>
            <td style="padding: 5px;">
                <asp:Label ID="lblAddress1" runat="server"></asp:Label></td>
            <td class="auto-style1 auto-style7" style="padding: 5px;">

                <strong>Admitted Status:</strong>
            </td>
            <td colspan="3" style="padding: 5px;">
                <asp:Label ID="lblAdmittedStatus" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1" style="padding: 5px;"></td>
            <td style="padding: 5px;">
                <asp:Label ID="lblAddress2" runat="server"></asp:Label></td>
            <td class="auto-style1 auto-style7" style="padding: 5px;">Home State:
            </td>
            <td colspan="3" style="padding: 5px;">
                <asp:Label ID="lblHomeState" runat="server"></asp:Label></td>
        </tr>
    </table>

    <table width="100%">
        <tr>
            <td colspan="4">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <h3><b>General Liability Summary Information</b></h3>
                <hr />
            </td>
        </tr>

        <tr style="padding: 5px;">
            <td class="auto-style1 auto-style7">Coverage Type:</td>
            <td>
                <asp:Label ID="lblCoverageType" runat="server"></asp:Label></td>
            <td class="auto-style1 auto-style7" style="padding: 5px;"><strong>General Aggregate Limit (Other than Products/Completed Operations):</strong></td>
            <td class="auto-style1">
                <asp:Label ID="lblGeneralAggregateLimit" runat="server"></asp:Label></td>
        </tr>
        <tr style="padding: 5px;">
            <td class="auto-style7">Deductible Per Claim:</td>
            <td style="padding: 5px;">
                <asp:Label ID="lblDeductiblePerClaim" runat="server"></asp:Label></td>
            <td class="auto-style7" style="padding: 5px;">Products and Completed Operations Aggregate Limit:</td>
            <td class="auto-style1">
                <asp:Label ID="lblProdLimit" runat="server"></asp:Label></td>
        </tr>
        <tr style="padding: 5px;">
            <td class="auto-style1" style="padding: 5px;"></td>
            <td style="padding: 5px;"></td>
            <td class="auto-style7" style="padding: 5px;">Personal and Advertising Injury Limit:	</td>
            <td class="auto-style1">
                <asp:Label ID="lblPersonalLimit" runat="server" class="auto-style1"></asp:Label></td>
        </tr>
        <tr style="padding: 5px;">
            <td class="auto-style1" style="padding: 5px;"></td>
            <td style="padding: 5px;"></td>
            <td class="auto-style7 auto-style1" style="padding: 5px;">Each Occurrence Limit:</td>
            <td class="auto-style1">
                <asp:Label ID="lblOccranceLimit" runat="server" class="auto-style1"></asp:Label></td>
        </tr>
        <tr style="padding: 5px;">
            <td class="auto-style1" style="padding: 5px;"></td>
            <td style="padding: 5px;"></td>
            <td class="auto-style7 auto-style1" style="padding: 5px;">Damage to Premises Rented to You Limit:	</td>
            <td class="auto-style1">
                <asp:Label ID="lblPremisesLimit" runat="server"></asp:Label></td>
        </tr>
        <tr style="padding: 5px;">
            <td class="auto-style1" style="padding: 5px;"></td>
            <td></td>
            <td class="auto-style7 auto-style1" style="padding: 5px;">Medical Payments Limit:		</td>
            <td class="auto-style1">
                <asp:Label ID="lblMedicalLimit" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="4">

                <table width="100%">
                    <tr>
                        <td colspan="4">
                            <table style="border: 1px solid black; border-collapse: collapse;" width="100%">
                                <thead>
                                    <asp:Repeater ID="rptClass" runat="server">
                                        <HeaderTemplate>
                                            <tr class="auto-style4 border_bottom" style="color: #FFFFFF; border: 1px solid black; border-collapse: collapse;">

                                                <th style="width: 70%; border: 1px solid black; border-collapse: collapse; padding: 5px;">Class&nbsp;</th>
                                                <th style="width: 10%; border: 1px solid black; border-collapse: collapse; padding: 5px;">State/Terr.</th>
                                                <th style="width: 20%; border: 1px solid black; border-collapse: collapse; padding: 5px;">Exposure</th>

                                            </tr>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr class="border_bottom" style="border: 1px solid black; border-collapse: collapse;">

                                                <td style="border: 1px solid black; border-collapse: collapse; padding: 5px;" class="auto-style1">


                                                    <asp:Label ID="lbtnClass" runat="server" Font-Size="15px">'<%#Eval("Class") %>'</asp:Label>

                                                </td>
                                                <td style="border: 1px solid black; border-collapse: collapse; padding: 5px;" class="auto-style1">
                                                    <asp:Label ID="lblTerritory" runat="server" Font-Bold="true" Font-Size="15px" Text='<%#Eval("TerritoryDetails") %>' />
                                                </td>
                                                <td style="border: 1px solid black; border-collapse: collapse; padding: 5px; font-size: 15px;" class="auto-style1">
                                                    <asp:Label ID="lblExposure" runat="server" Font-Size="15px" Font-Bold="true" Text='<%#Eval("Exposure") %>' />
                                                    &nbsp; Sales                     </td>

                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                </thead>

                            </table>

                        </td>
                    </tr>

                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
            </td>
        </tr>
        <%--    <tr>
            <td class="auto-style1"></td>
            <td></td>
            <td class="auto-style7"  style="padding: 5px;font-size:15px;">Subtotal Line of Business Premium:	</td>
            <td class="auto-style1">
                <asp:Label ID="lblGLBusinessPremium" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td></td>
            <td class="auto-style7"  style="padding: 5px;font-size:15px;">TRIA Premium:	</td>
            <td class="auto-style1">
                <asp:Label ID="lblGLTRIAPremium" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td></td>
            <td class="auto-style7" style="font-size:15px;">General Liability Total:	</td>
            <td class="auto-style1">
                <asp:Label ID="lblGLTotal" runat="server"></asp:Label></td>
        </tr>--%>
        <tr>
            <td colspan="4">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <table width="100%">
                    <tr>
                        <td colspan="4">
                            <table class="border-table" width="100%" style="border: 1px solid black; border-collapse: collapse;">
                                <thead>
                                    <tr class="auto-style4 border_bottom" style="color: #FFFFFF; border: 1px solid black; border-collapse: collapse; font-size: 15px;">
                                        <th colspan="2" style="border: 1px solid black; border-collapse: collapse; font-size: 15px; padding: 5px;">Other</th>
                                        <th colspan="5" style="border: 1px solid black; border-collapse: collapse; font-size: 15px; padding: 5px;">Notes</th>
                                        <th colspan="2" class="auto-style1" style="border: 1px solid black; font-size: 15px; border-collapse: collapse; padding: 5px;">Premium</th>
                                    </tr>
                                </thead>
                                <tr class="border_bottom">
                                    <td colspan="2" style="border: 1px solid black; border-collapse: collapse; font-size: 15px; padding: 5px;">Waiver of Transfer of Rights of Recovery Against Others to Us</td>
                                    <td colspan="5" style="border: 1px solid black; border-collapse: collapse; font-size: 15px; padding: 5px;">Any person or organization for whom you are required to waive your right of recovery on this Coverage Part under a written contract or agreement</td>
                                    <td colspan="2" class="auto-style1" style="border: 1px solid black; border-collapse: collapse; font-size: 15px; padding: 5px;">No Charge</td>
                                </tr>
                            </table>

                        </td>
                    </tr>
                    <%--       <tr>
                        <td colspan="4">
                            <br />
                            <h3><b>General Liability Rate Factor Information</b></h3>
                            <hr />
                        </td>
                    </tr>
                  <tr>
                        <td class="auto-style1"></td>
                        <td></td>
                        <td class="auto-style7" style="padding: 5px; font-size: 15px;">IRPM Factor:	</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblIRPMFactor" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td></td>
                        <td class="auto-style7" style="padding: 5px;">Loss Free Credit Factor:</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblCredifFactor" runat="server"></asp:Label></td>
                    </tr>--%>
                    <tr>
                        <td colspan="4">
                            <h3><b>Premium Totals</b></h3>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                             <cc1:ToolkitScriptManager runat="server">
    </cc1:ToolkitScriptManager>
                            

                                    <table width="100%">
                                <tr>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <td style="border: 1px solid black; border-collapse: collapse; font-size: 18px; background-color: #317DB1; padding: 10px;" width="33%" class="auto-style9"><strong style="color: #FFFFFF">
                                        <asp:RadioButton ID="rbtCentury" GroupName="Career" runat="server" />Quote From Century</strong></td>
                                    <td style="border: 1px solid black; border-collapse: collapse; font-size: 18px; background-color: #317DB1; padding: 10px;" width="33%" class="auto-style9"><strong style="color: #FFFFFF">
                                        <asp:RadioButton ID="rbtCareer" runat="server" GroupName="Career" />Quote From Career 2</strong></td>
                                    <td style="border: 1px solid black; border-collapse: collapse; font-size: 18px; background-color: #317DB1; padding: 10px;" width="33%" class="auto-style9"><strong style="color: #FFFFFF">
                                        <asp:RadioButton ID="rbtCareer3" runat="server" GroupName="Career" />Quote From Career 3</strong></td>
                                  </ContentTemplate>
                            </asp:UpdatePanel>
                                    </tr>
                                <tr>
                                    <td style="border-collapse: collapse; font-size: 12px;">
                                        <table width="100%" style="background-color: darkgray;">
                                            <tr>
                                                <td style="border-left: 1px solid black; padding: 5px;" class="auto-style8">Subtotal Line of Business Premium:</td>
                                                <td style="border-right: 1px solid black; padding: 5px;" class="auto-style1">
                                                    <asp:Label ID="lblBusinessPremiumCentury" runat="server"></asp:Label></td>
                                            </tr>
                                            <%--<tr>
                                                <td style="border-left:1px solid black;padding:5px;" class="auto-style8">Subtotal Line of Business Premium:</td>
                                                <td style="border-right:1px solid black;padding:5px;" class="auto-style11">
                                                    <asp:Label ID="lblBusinessPremiumCentury" runat="server"></asp:Label></td>
                                            </tr>--%>
                                            <tr>
                                                <td style="border-left: 1px solid black; padding: 5px;" class="auto-style8">TRIA Premium:</td>
                                                <td style="border-right: 1px solid black; padding: 5px;" class="auto-style1">
                                                    <asp:Label ID="lblTRIAPremiumCentury" runat="server"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="border-bottom: 1px solid black; border-left: 1px solid black; padding: 5px;" class="auto-style8">Total Premium:</td>
                                                <td style="border-right: 1px solid black; border-bottom: 1px solid black; padding: 5px;" class="auto-style1">
                                                    <asp:Label ID="lblTotalPremiumCentury" runat="server"></asp:Label></td>
                                            </tr>
                                        </table>

                                    </td>
                                    <td style="border-collapse: collapse; font-size: 12px;">
                                        <table width="100%" style="background-color: lightskyblue;">
                                            <tr>
                                                <td style="padding: 5px;" class="auto-style8">Subtotal Line of Business Premium:</td>
                                                <td style="border-right: 1px solid black; padding: 5px;" class="auto-style1">
                                                    <asp:Label ID="lblBusinessPremiumCareer2" runat="server"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px;" class="auto-style8">TRIA Premium:</td>
                                                <td style="border-right: 1px solid black; padding: 5px;" class="auto-style1">
                                                    <asp:Label ID="lblTRIAPremiumCareer2" runat="server"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="border-bottom: 1px solid black; padding: 5px;" class="auto-style8">Total Premium:</td>
                                                <td style="border-right: 1px solid black; padding: 5px; border-bottom: 1px solid black;" class="auto-style1">
                                                    <asp:Label ID="lblTotalPremiumCareer2" runat="server"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="border-collapse: collapse; font-size: 12px;">
                                        <table width="100%" style="background-color: darkgray;">
                                            <tr>
                                                <td style="padding: 5px;" class="auto-style8">Subtotal Line of Business Premium:</td>
                                                <td style="border-right: 1px solid black; padding: 5px;" class="auto-style1">
                                                    <asp:Label ID="lblBusinessPremiumCareer3" runat="server"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px;" class="auto-style8">TRIA Premium:</td>
                                                <td style="border-right: 1px solid black; padding: 5px;" class="auto-style1">
                                                    <asp:Label ID="lblTRIAPremiumCareer3" runat="server"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="border-bottom: 1px solid black; padding: 5px;" class="auto-style8">Total Premium:</td>
                                                <td style="border-right: 1px solid black; border-bottom: 1px solid black;" class="auto-style1">
                                                    <asp:Label ID="lblTotalPremiumCareer3" runat="server"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                              
                            
                        </td>

                    </tr>

                   <%-- <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <br />
                            <asp:CheckBox ID="chkNorthEash" runat="server" Text="Submit to Northeast Coverages" Font-Size="15px" />
                        </td>
                        <td class="auto-style1"></td>
                        <td class="auto-style1"></td>
                    </tr>--%>

                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <br />
                            <asp:Button ID="btnCalculate" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="16px"
                                ForeColor="White" Text="Get Quotes" ToolTip="Get Quotes" Width="150px" Height="40px" OnClick="btnCalculate_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnSubmitToNECoverage" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="11px"
                                ForeColor="White" Text="Submit to NorthEast Coverage" ToolTip="Get Quotes" Width="170px" Height="40px" OnClick="btnSubmitToNECoverage_Click" />
                        </td>
                        <td class="auto-style1"></td>
                        <td class="auto-style1"></td>
                    </tr>

                </table>
            </td>
        </tr>
    </table>
   
    <asp:Panel ID="pnlDetails" runat="server" Width="300px" BorderWidth="1px" BorderStyle="Solid"
        BorderColor="gray" BackColor="#F0F0F0">
        <table style="font-weight: bold; font-size: 12px; color: white; font-family: Verdana; background-color: gray"
            width="100%">
            <tr>
                <td style="width: 95%" align="left">
                    <asp:Label ID="lblQM" runat="server" CssClass="moveCursor" Width="100%">&nbsp;</asp:Label>
                </td>
                <td style="width: 5%" align="right">
                    <asp:ImageButton ID="ibtnCloseDetails" runat="server" ToolTip="close" ImageUrl="~/img/close.gif"></asp:ImageButton>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Panel ID="pnlInner" Width="100%" runat="server" Height="100px">

                        <table id="tblWrite" runat="server" height="100%">
                            <tr>
                                <td style="width: 100%; padding: 5px; vertical-align: bottom;" colspan="2">
                                    <asp:Label ID="lblMsg" runat="server"></asp:Label></td>
                            </tr>

                            <tr>
                                <td style="width: 10%"></td>
                                <td style="width: 90%; vertical-align: text-bottom; padding: 10px; text-align: right;">
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

