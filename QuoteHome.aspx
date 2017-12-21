<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="QuoteHome.aspx.cs" Inherits="QuoteHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr><td style="padding: 15px;"><b>Home</b>
            <hr />
            </td></tr>
        <tr><td>
            <%--<asp:ImageButton ID="imgBtnCreateQuote" runat="server" Height="34px" ImageUrl="~/img/CrateQuote.png" Width="97px" />--%>
            <asp:Button ID="btnCreateQuote" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                                    BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="17px"
                                    ForeColor="White" Text="Create Quote" ToolTip="Click to Create Quote" Width="120px" Height="40px" OnClick="btnCreateQuote_Click" />
            <br />
            &nbsp;</td></tr>
        <tr>
        <td>
        <asp:DropDownList ID="ddlSearchFor" runat="server" Font-Names="Verdana" Font-Size="11px"
                                    Width="130px">
                                    <asp:ListItem Value="UserId">My Quotes</asp:ListItem>
                                   
                                </asp:DropDownList>
                                <asp:RadioButtonList ID="rdolstSearchType" runat="server" RepeatDirection="Horizontal"
                                    RepeatLayout="Flow" CssClass="text5">
                                    <asp:ListItem Selected="True" Value="SW">Starts With</asp:ListItem>
                                    <asp:ListItem Value="C">Contains</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:TextBox ID="txtSearchFor" runat="server" Font-Names="Verdana" Font-Size="11px"
                                    Width="150px"></asp:TextBox>
                                <asp:Button ID="btnSearch" runat="server" BackColor="#317DB1" BorderColor="#8EC2E8"
                                    BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                                    ForeColor="White" Text="Search" ToolTip="click to search" Width="60px" />
        </td>
        </tr>
        <tr>
        
        <td align="right">
         <span class="text50">Record Per page</span>
                                <asp:DropDownList ID="ddlPageSize" runat="server" Font-Names="Verdana" Font-Size="11px"
                                    AutoPostBack="True">
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem Selected="True">10</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                    <asp:ListItem>100</asp:ListItem>
                                </asp:DropDownList>
        </td>
        </tr>
        <tr>
        <td style="width: 1021px">
          <asp:GridView ID="gvQuotes" runat="server" DataSourceID="odsQuotes" Font-Size="15px" 
                Font-Names="Verdana" Width="100%"
                                BorderColor="#8EC2E8" BorderStyle="Solid" 
                BorderWidth="1px" AllowPaging="True"
                                AllowSorting="True" AutoGenerateColumns="False" 
                CellPadding="1" CellSpacing="1"
                                GridLines="Both">
                                <EmptyDataRowStyle BorderStyle="Solid" HorizontalAlign="Center" Font-Bold="True">
                                </EmptyDataRowStyle>
                                <Columns>
                                    <asp:BoundField DataField="QuoteNo" HeaderText="QuoteNo" SortExpression="Quote No" />
                                     <asp:BoundField DataField="Insured_Name" HeaderText="Insured Name" SortExpression="Insured_Name" />
                                     <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="Owner" />
                                    <asp:BoundField DataField="Effective_Date" SortExpression="Effective_Date" HeaderText="Effective Date">
                                      
                                    </asp:BoundField>
                                   
                                     <asp:BoundField DataField="QuoteStatus" HeaderText="QuoteStatus" SortExpression="Quote Status" />
                                     <asp:TemplateField HeaderText="View">
                                        <ItemStyle Width="10%" HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemTemplate>
                                           
                                            <asp:ImageButton ID="ibtnDetails" runat="server" ImageUrl="~/img/details_icon2.gif"
                                                CommandArgument='<% # Eval("ID") %>' ToolTip="View" OnClick="ibtnDetails_Click" />
                                           
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Edit">
                                        <ItemStyle Width="10%" HorizontalAlign="Center"></ItemStyle>
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemTemplate>
                                           
                                            <asp:ImageButton ID="ibtnEdit" runat="server" ImageUrl="~/img/edit1.gif"
                                                CommandArgument='<% # Eval("ID") %>' ToolTip="Edit" OnClick="ibtnEdit_Click" />
                                           
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/sorry_icon.gif" /><br />
                                    <span style="color: red">Sorry! No Records Found.</span>
                                </EmptyDataTemplate>
                                <PagerStyle HorizontalAlign="Right"></PagerStyle>
                                <HeaderStyle BackColor="#317DB1" BorderStyle="Solid" ForeColor="White" BorderWidth="1px"
                                    BorderColor="#8EC2E8"></HeaderStyle>
                                <AlternatingRowStyle BackColor="#F9F9F9"></AlternatingRowStyle>
                            </asp:GridView>
        </td>
        </tr>
        <tr>
        <td style="width: 1021px">
            <asp:ObjectDataSource ID="odsQuotes" runat="server" SelectMethod="GetQuoteDetails" TypeName="BLL.vwQuoteDetailsHandler"></asp:ObjectDataSource>
     
        </td>
        </tr>
            <tr>
                <td style="width: 1021px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1021px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1021px">
                    &nbsp;</td>
            </tr>
        </table>
    
</asp:Content>

