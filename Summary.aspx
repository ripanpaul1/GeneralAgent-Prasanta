<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" %>

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
            <td width="30%" class="auto-style1 auto-style7"">Quote Authority: <span class="auto-style2 auto-style7">Authority</span><asp:DropDownList ID="ddlAuthority" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <br />

            </td>
        </tr>
        <tr>
            <td colspan="5">
                <a href="GeneralLiability.aspx" class="auto-style6">
                    <div class="floating-box">General Liability</div>
                </a>
                <a href="PropertyDetails.aspx" class="auto-style6">
                    <div class="floating-box">Property</div>
                </a>
                <a href="Summary.aspx" class="auto-style6">
                    <div class="floating-boxActive">Summary</div>
                </a>


            </td>
        </tr>
        <tr>
            <td class="auto-style1 auto-style7">
                
                Quote Summary For:
            </td>
            <td>
                <asp:Label ID="lblInsuredName" runat="server"></asp:Label></td>
            <td  class="auto-style1 auto-style7">
                
               Company:
            </td>
            <td colspan="3">
                <asp:Label ID="lblCompany" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1 "></td>
            <td>
                <asp:Label ID="lblAddress1" runat="server"></asp:Label></td>
            <td  class="auto-style1 auto-style7">
                
                <strong>Admitted Status:</strong>
            </td>
            <td colspan="3">
                <asp:Label ID="lblAdmittedStatus" runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td class="auto-style1"></td>
            <td>
                <asp:Label ID="lblAddress2" runat="server"></asp:Label></td>
            <td class="auto-style1 auto-style7">
                
               Home State:
            </td>
            <td colspan="3" >
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
                <h3><b>General Liability</b></h3>
                <hr />
            </td>
        </tr>
        <tr >
            <td colspan="4">
                <h3><b>General Liability Summary Information</b></h3>
                <hr />
            </td>
        </tr>

        <tr style="padding: 5px;">
            <td class="auto-style7"  style="padding: 5px;">Coverage Type:</td>
            <td>
                <asp:Label ID="lblCoverageType" runat="server"  style="padding: 5px;"></asp:Label></td>
            <td class="auto-style1 auto-style7"  style="padding: 5px;"><strong>General Aggregate Limit (Other than Products/Completed Operations):</strong></td>
            <td class="auto-style1" >
                <asp:Label ID="lblGeneralAggregateLimit" runat="server"></asp:Label></td>
        </tr>
        <tr  style="padding: 5px;">
            <td class="auto-style7">Deductible Per Claim:</td>
            <td  style="padding: 5px;">
                <asp:Label ID="lblDeductiblePerClaim" runat="server"></asp:Label></td>
            <td class="auto-style7"  style="padding: 5px;">Products and Completed Operations Aggregate Limit:</td>
            <td  class="auto-style1">
                <asp:Label ID="lblProdLimit" runat="server"></asp:Label></td>
        </tr>
        <tr style="padding: 5px;">
            <td class="auto-style1"  style="padding: 5px;"></td>
            <td  style="padding: 5px;"></td>
            <td class="auto-style7"  style="padding: 5px;">Personal and Advertising Injury Limit:	</td>
            <td  class="auto-style1">
                <asp:Label ID="lblPersonalLimit" runat="server" class="auto-style1"></asp:Label></td>
        </tr>
        <tr style="padding: 5px;">
            <td class="auto-style1"  style="padding: 5px;"></td>
            <td  style="padding: 5px;"></td>
            <td class="auto-style7 auto-style1"  style="padding: 5px;">Each Occurrence Limit:</td>
            <td  class="auto-style1">
                <asp:Label ID="lblOccranceLimit" runat="server" class="auto-style1"></asp:Label></td>
        </tr>
        <tr style="padding: 5px;">
            <td class="auto-style1"  style="padding: 5px;"></td>
            <td  style="padding: 5px;"></td>
            <td class="auto-style7 auto-style1"  style="padding: 5px;">Damage to Premises Rented to You Limit:	</td>
            <td  class="auto-style1">
                <asp:Label ID="lblPremisesLimit" runat="server"></asp:Label></td>
        </tr>
        <tr style="padding: 5px;">
            <td class="auto-style1"  style="padding: 5px;"></td>
            <td></td>
            <td class="auto-style7 auto-style1"  style="padding: 5px;">Medical Payments Limit:		</td>
            <td  class="auto-style1">
                <asp:Label ID="lblMedicalLimit" runat="server"></asp:Label></td>
        </tr>
        <tr><td colspan="4"><br /></td></tr>
        <tr>
            <td colspan="4">

                <table width="100%">
                    <tr>
                        <td colspan="4">
                            <table style="border: 1px solid black;border-collapse: collapse;"  width="100%">
                                <thead>
                                    <tr class="auto-style4 border_bottom" style="color: #FFFFFF">
                                        <th colspan="5" style="border: 1px solid black;border-collapse: collapse;padding: 5px;"></th>
                                        <th colspan="2" style="border: 1px solid black;border-collapse: collapse;padding: 5px;">Premises Ops.</th>
                                        <th colspan="2" style="border: 1px solid black;border-collapse: collapse;padding: 5px;">Products 
      Completed</th>
                                    </tr>
                                    <asp:Repeater ID="rptClass" runat="server">
                                        <HeaderTemplate>
                                            <tr class="auto-style4 border_bottom" style="color: #FFFFFF; border: 1px solid black;border-collapse: collapse;"">
                                                
                                                <th colspan="3" style="width: 50%;border: 1px solid black;border-collapse: collapse;padding: 5px;">Class&nbsp;</th>
                                                <th style="width: 8%;border: 1px solid black;border-collapse: collapse;padding: 5px;">State/Terr.</th>
                                                <th style="width: 15%;border: 1px solid black;border-collapse: collapse;padding: 5px;">Exposure</th>
                                                <th style="width: 7%;border: 1px solid black;border-collapse: collapse;padding: 5px;">Rate</th>
                                                <th style="width: 7%;border: 1px solid black;border-collapse: collapse;padding: 5px;">Premium</th>
                                                <th style="width: 7%;border: 1px solid black;border-collapse: collapse;padding: 5px;">Rate&nbsp;</th>
                                                <th style="width: 7%;border: 1px solid black;border-collapse: collapse;padding: 5px;">Premium&nbsp;</th>
                                            </tr>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr class="border_bottom" style="border: 1px solid black;border-collapse: collapse;">
                                                
                                                <td style="border: 1px solid black;border-collapse: collapse;padding: 5px;" colspan="3" class="auto-style1">
                                                    

                                                    <asp:Label ID="lbtnClass" runat="server" Font-Size="15px">'<%#Eval("Class") %>'</asp:Label>

                                                </td>
                                                <td style="border: 1px solid black;border-collapse: collapse;padding: 5px;" class="auto-style1">
                                                    <asp:Label ID="lblTerritory" runat="server" Font-Bold="true" Font-Size="15px" Text='<%#Eval("TerritoryDetails") %>' />
                                                </td>
                                                <td style="border: 1px solid black;border-collapse: collapse;padding: 5px;" class="auto-style1">
                                                    <asp:Label ID="lblExposure" runat="server" Font-Size="15px" Font-Bold="true" Text='<%#Eval("Exposure") %>' />
                                                    &nbsp; Sales                     </td>
                                                <td class="auto-style1" style="border: 1px solid black;border-collapse: collapse; font-size:15px; padding: 5px;"><span>3.454</span>
                                                </td>
                                                <td class="text-right text-bold auto-style1" style="border: 1px solid black;border-collapse: collapse; font-size:15px;padding: 5px;"><span>$35</span>
                                                </td>
                                                <td class="text-right auto-style1" style="border: 1px solid black;border-collapse: collapse; font-size:15px;padding: 5px;"><span>2.373</span>
                                                </td>
                                                <td class="text-right text-bold auto-style1" style="border: 1px solid black;border-collapse: collapse;font-size:15px;padding: 5px;" ><span >$24</span>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                </thead>
                                <tbody>

                                    <tr>
                                        <td colspan="6" class="auto-style1" style="border: 1px solid black;border-collapse: collapse;font-size:15px;padding: 5px;">Coverage Subtotals:</td>
                                        <td class="auto-style1" style="border: 1px solid black;border-collapse: collapse;font-size:15px;padding: 5px;"><strong><span>$35</span>
                                        </strong></td>
                                        <td style="border: 1px solid black;border-collapse: collapse;font-size:15px;padding: 5px;">&nbsp;</td>
                                        <td class="auto-style1" style="font-size:15px;padding: 5px;"><strong><span>$24</span>
                                        </strong></td>
                                    </tr>
                                    <tr>
                                        <td colspan="8" class="auto-style1" style="border: 1px solid black;border-collapse: collapse;font-size:15px;">General Liability Subtotal:</td>
                                        <td class="auto-style1" style="border: 1px solid black;border-collapse: collapse; font-size:15px;padding: 5px;"><strong><span>$1,500</span></strong></td>
                                    </tr>
                                </tbody>
                            </table>

                        </td>
                    </tr>

                </table>
            </td>
        </tr>
        <tr>
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
        </tr>
        <tr><td colspan="4"><br /></td></tr>
        <tr>
            <td colspan="4">
                <table width="100%">
                    <tr>
                        <td colspan="4">
                            <table class="border-table" width="100%" style="border: 1px solid black;border-collapse: collapse;">
                                <thead>
                                    <tr class="auto-style4 border_bottom" style="color: #FFFFFF;border: 1px solid black;border-collapse: collapse;font-size:15px;">
                                        <th colspan="2" style="border: 1px solid black;border-collapse: collapse;font-size:15px;">Other</th>
                                        <th colspan="5" style="border: 1px solid black;border-collapse: collapse;">Notes</th>
                                        <th colspan="2" class="auto-style1" style="border: 1px solid black;border-collapse: collapse;">Premium</th>
                                    </tr>
                                </thead>
                                <tr class="border_bottom">
                                    <td colspan="2" style="border: 1px solid black;border-collapse: collapse;font-size:15px;">Waiver of Transfer of Rights of Recovery Against Others to Us</td>
                                    <td colspan="5" style="border: 1px solid black;border-collapse: collapse;font-size:15px;">Any person or organization for whom you are required to waive your right of recovery on this Coverage Part under a written contract or agreement</td>
                                    <td colspan="2" class="auto-style1" style="border: 1px solid black;border-collapse: collapse;font-size:15px;">No Charge</td>
                                </tr>
                            </table>

                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <br />
                            <h3><b>General Liability Rate Factor Information</b></h3>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td></td>
                        <td class="auto-style7"  style="padding: 5px;font-size:15px;">IRPM Factor:	</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblIRPMFactor" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td></td>
                        <td class="auto-style7"  style="padding: 5px;">Loss Free Credit Factor:</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblCredifFactor" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <h3><b>Premium Totals</b></h3>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td></td>
                        <td class="auto-style7"  style="padding: 5px;">Subtotal Line of Business Premium:	</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblBusinessPremium" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td></td>
                        <td class="auto-style7"  style="padding: 5px;">TRIA Premium:	</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblTRIAPremium" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td></td>
                        <td class="auto-style7"  style="padding: 5px;">Total Premium:	</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblTotalPremium" runat="server"></asp:Label></td>
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
            </td>
        </tr>
    </table>
        <cc1:ToolkitScriptManager runat="server">
    </cc1:ToolkitScriptManager>
    <asp:Button ID="btnShow" runat="server" Text="Show" CssClass="show" />
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
                            ForeColor="White" Text="Close" ToolTip="click to Close" Width="70px" Height="40px" />
                    </td>
                </tr>
            </table>

        </div>

    </asp:Panel>
</asp:Content>

