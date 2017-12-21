<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="PropertyDetails.aspx.cs" Inherits="PropertyDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }

        .auto-style2 {
            color: #FF0000;
        }

        .auto-style3 {
            text-align: center;
        }

        tr.border_bottom td {
            border-bottom: 1pt solid black;
        }

        table.border-table {
            border: 1px solid black;
            border-collapse: collapse;
        }

        .auto-style5 {
            text-align: center;
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
        .auto-style7 {
            text-align: right;
            font-weight: bold;
        }
    </style>
    <table width="100%">
        <tr>
            <td colspan="5" style="padding: 15px;">
                <br />
                <b>Home  >>  Quote Information  >> Property</b>
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
                <a href="GenLiability.aspx" class="auto-style6">
                    <div class="floating-box">General Liability</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
                <a href="PropertyDetails.aspx" class="auto-style6">
                    <div class="floating-boxActive">Property</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
                <a href="SummaryDetails.aspx" class="auto-style6">
                    <div class="floating-box">Summary</div>
                </a>
                <%--<a href="PropertyDetails.aspx" class="auto-style6">
                    <div class="floating-boxActive">Property</div>
                </a>
                <a href="#" class="auto-style6">
                    <div class="floating-box">Summary</div>
                </a>--%>

            </td>
        </tr>
    </table>
    <asp:MultiView ID="mvProperty" runat="server">
        <asp:View ID="vwLocation" runat="server">

            <table width="100%">
                <tr>
                    <td colspan="2">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h3><b>Location Information</b></h3>
                        <hr />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1" style="padding: 5px;">Address:</td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;"></td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Zip Code:</td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">City:</td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">State:</td>
                    <td style="padding: 5px;">
                        <asp:DropDownList ID="ddlState" runat="server" style="padding: 5px;"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px;">
                        <h3><b>Occupancy / Class</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Find Occupancy:</td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtFindClass" runat="server"></asp:TextBox>&nbsp;&nbsp;<asp:Button ID="btnSearch" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                            ForeColor="White" Text="Search" ToolTip="click to search" Width="60px" OnClick="btnSearch_Click" /></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Select Occupancy:</td>
                    <td style="padding: 5px;">
                        <asp:DropDownList ID="ddlSelectClass" runat="server" OnSelectedIndexChanged="ddlSelectClass_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Full Description: 
                    </td>
                    <td style="padding: 5px;">
                        <asp:Label ID="lblFullDescription" runat="server"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Class Authority Level
                    </td>
                    <td style="padding: 5px;">
                        <span class="auto-style2">Authority</span>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">EUM Details
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;"></td>
                    <td style="padding: 5px;">
                        <asp:Button ID="btnContinue" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                            ForeColor="White" Text="Continue" ToolTip="click to search" Width="80px" OnClick="btnContinue_Click" />
                        <%-- <asp:Button ID="btnChange" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                            ForeColor="White" Text="Change" ToolTip="click to change" Width="80px" OnClick="btnChange_Click" />--%>

                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="vwBuilding" runat="server">

            <table width="100%">
                <tr>
                    <td colspan="2">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px;">
                        <h3><b>Location Information</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Address:
                    </td>
                    <td style="padding: 5px;">
                        <asp:Label ID="lblAddress" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Territory:
                    </td>
                    <td style="padding: 5px;">
                        <asp:Label ID="lblTerritory" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Protection Class:
                    </td>
                    <td style="padding: 5px;">
                        <asp:Label ID="lblProtection" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px;">
                        <h3><b>Occupancy Information</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Selected Occupancy:
                    </td>
                    <td style="padding: 5px;">
                        <asp:Label ID="lblOccupancy" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px;">
                        <h3><b>Building/Structure Information</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Description:
                    </td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Construction Type:
                    </td>
                    <td style="padding: 5px;">


                        <asp:DropDownList ID="ddlConstructionType" runat="server">
                            <asp:ListItem Value="Frame" Selected="True">Frame</asp:ListItem>
                            <asp:ListItem Value="JoistedMasonry">Joisted Masonry</asp:ListItem>
                            <asp:ListItem Value="NonCombustible">Non Combustible</asp:ListItem>
                            <asp:ListItem Value="MasonryNonCombustible">Masonry Non Combustible</asp:ListItem>
                            <asp:ListItem Value="FireResistive">Fire Resistive</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">&nbsp;</td>
                    <td style="padding: 5px;">
                        <asp:CheckBox ID="chkApplySpriniderSafeguardP1" runat="server" Text="Apply Sprinider Safeguard P1" /></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">&nbsp;</td>
                    <td style="padding: 5px;">
                        <asp:CheckBox ID="chkExcludeWindHall" runat="server" Text="Exclude Wind Hall" /></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Higher Wind/Hall Deductible</td>
                    <td style="padding: 5px;">

                        <asp:DropDownList ID="ddlHigherWindHall" runat="server">
                            <asp:ListItem Value="0">$2,500</asp:ListItem>
                            <asp:ListItem Value="5000">$5,000</asp:ListItem>
                            <asp:ListItem Value="10000">$10,000</asp:ListItem>
                            <asp:ListItem Value="25000">$25,000</asp:ListItem>
                            <asp:ListItem Value="50000">$50,000</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Year Built</td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtYearBuilt" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style5" style="padding: 5px;">Year of last complete update</td>
                    <td style="padding: 5px;">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Heading</td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtHeading" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1"style="padding: 5px;">Plumbing</td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtPlumbing" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Rooting</td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtRooting" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Wiring</td>
                    <td style="padding: 5px;">
                        <asp:TextBox ID="txtWiring" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px;">
                        <h3><b>Choose Coverage</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;"></td>
                    <td style="padding: 5px;">
                        <asp:CheckBox ID="chkBuilding" runat="server" Text="Building" /></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;"></td>
                    <td style="padding: 5px;">
                        <asp:CheckBox ID="chkBusinessPersonalProperty" runat="server" Text="Business Personal Property" /></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;"></td>
                    <td style="padding: 5px;">
                        <asp:CheckBox ID="chkBusinessIncome" runat="server" Text="Business Income" /></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;"></td>
                    <td style="padding: 5px;">
                        <asp:CheckBox ID="chkPersonalPropertyOfOthers" runat="server" Text="Personal Property Of Others" /></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;"></td>
                    <td style="padding: 5px;">
                        <asp:CheckBox ID="chkSigns" runat="server" Text="Signs" /></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;"></td>
                    <td style="padding: 5px;">
                        <asp:CheckBox ID="chkPropertyInTheOpen" runat="server" Text="Property In The Open" /></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">&nbsp;</td>
                    <td style="padding: 5px;">
                        <asp:Button ID="btnContinueBuilding" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                            ForeColor="White" Text="Continue" ToolTip="click to search" Width="100px" Height="40px" OnClick="btnContinueBuilding_Click" /></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="vwSpecialDeductible" runat="server">
            <table width="100%">
                <tr>
                    <td colspan="2">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px;">
                        <h3><b>Special Deductible</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" width="50%" style="padding: 5px;">Building and Personal property deductible:
                    </td>
                    <td style="padding: 5px;">
                        <asp:DropDownList ID="ddlBuilding" runat="server">
                            <asp:ListItem Value="0">$2,500</asp:ListItem>
                            <asp:ListItem Value="5000">$5,000</asp:ListItem>
                            <asp:ListItem Value="10000">$10,000</asp:ListItem>
                            <asp:ListItem Value="25000">$25,000</asp:ListItem>
                            <asp:ListItem Value="50000">$50,000</asp:ListItem>

                        </asp:DropDownList>
                        <br />
                        Note: The selected value applies to All locations and structures in this quote.
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px;">
                        <h3><b>Limited Property extesions</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Limited Property extesions:
                    </td>
                    <td style="padding: 5px;">

                        <asp:RadioButtonList ID="rbtProperty" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="True">Yes</asp:ListItem>
                            <asp:ListItem Value="False" Selected="True">No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px;">
                        <h3><b>Equipment Breakdown Coverage</b></h3>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding: 5px;">Equipment Breakdown Coverage:
                    </td>
                    <td style="padding: 5px;">

                        <asp:RadioButtonList ID="rbtEquipmentBrkDown" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="True">Yes</asp:ListItem>
                            <asp:ListItem Value="False" Selected="True">No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px;">

                        <hr />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 5px;">

                        <table width="100%" class="newStyle1">
                            <tr class="border_bottom">
                                <td>Class Code</td>
                                <td>Construction Type</td>
                                <td>Coverage</td>
                                <td>AOP Deductible</td>
                                <td>Thept Deductible</td>
                                <td>Co-Insurance</td>
                                <td>Valuation</td>
                                <td>Perils</td>
                                <td>Limit</td>
                                <td>Rate</td>
                                <td>Premium</td>
                            </tr>
                            <tr class="border_bottom">
                                <td>0567</td>
                                <td>Joished Masonry</td>
                                <td>Business personal property</td>
                                <td>$1,000</td>
                                <td>Not Cov</td>
                                <td>80%</td>
                                <td>Replacement Cost</td>
                                <td>Special Form Excluding Theft</td>
                                <td>$50,000</td>
                                <td>0.0482</td>
                                <td>$241</td>
                            </tr>
                            <tr>
                                <td colspan="9">
                                    <br />
                                    <br />

                                </td>
                                <td></td>
                                <td></td>

                            </tr>
                            <tr>
                                <td colspan="9" class="auto-style1" style="padding: 5px;">Ädditional COverage Sub total:
                                </td>
                                <td style="padding: 5px;"></td>
                                <td class="auto-style1" style="padding: 5px;">$25</td>

                            </tr>
                            <tr>
                                <td colspan="9" class="auto-style1" style="padding: 5px;">Subtotal Line of Business Premium:
                                </td>
                                <td style="padding: 5px;"></td>
                                <td class="auto-style1" style="padding: 5px;">$300 MP</td>

                            </tr>
                            <tr>
                                <td colspan="9" class="auto-style1" style="padding: 5px;">TRIA Premium:
                                </td>
                                <td style="padding: 5px;"></td>
                                <td class="auto-style1" style="padding: 5px;">$0</td>

                            </tr>
                            <tr>
                                <td colspan="9" class="auto-style1" style="padding: 5px;">Total Line of Business Premium:
                                </td>
                                <td style="padding: 5px;"></td>
                                <td class="auto-style1" style="padding: 5px;">$300</td>

                            </tr>
                            <tr>
                                <td colspan="9" class="auto-style1" style="padding: 5px;"></td>
                                <td style="padding: 5px;"></td>
                                <td class="auto-style1" style="padding: 5px;">
                                    <asp:Button ID="btnModifyRate" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                                        BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                                        ForeColor="White" Text="Continue" ToolTip="click to search" Width="140px" Height="40" OnClick="btnModifyRate_Click" /></td>

                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

