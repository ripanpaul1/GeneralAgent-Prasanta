<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="CreateQuote.aspx.cs" Inherits="CreateQuote" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
          .auto-style2 {
              color: #FF0000;
          }
    </style>
    <cc1:ToolkitScriptManager runat="server">
        </cc1:ToolkitScriptManager>
 <table width="100%"><tr><td colspan="2"><br /></td></tr>
        <tr><td colspan="2"><h3><b>Insured Information</b></h3><hr /></td></tr>
        <tr><td class="auto-style1">Insured Name<span class="auto-style2">*</span>:</td><td>
            <asp:TextBox ID="txtInsuredName" runat="server"></asp:TextBox></td></tr>
        <tr><td class="auto-style1">Mailing Address<span class="auto-style2">*</span>:</td><td><asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox></td></tr>
             <tr><td class="auto-style1"></td><td><asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox></td></tr>
             <tr><td class="auto-style1">Zip Code<span class="auto-style2">*</span>:</td><td><asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox></td></tr>
             <tr><td class="auto-style1">City<span class="auto-style2">*</span>:</td><td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td></tr>
             <tr><td class="auto-style1">State<span class="auto-style2">*</span>:</td><td>
                 <asp:DropDownList ID="ddlInsureState" runat="server"></asp:DropDownList></td></tr>
           
           <tr><td colspan="2"><h3><b>Home State</b></h3><hr /></td></tr>
           <tr><td class="auto-style1">Home State<span class="auto-style2">*</span>:</td><td>
                 <asp:DropDownList ID="ddlHomeState" runat="server"></asp:DropDownList></td></tr>
          <tr><td colspan="2"><h3><b>Loss History</b></h3><hr /></td></tr>
           <tr><td class="auto-style1">Is this new business to Century?</td><td>
               <asp:CheckBox ID="chkIsNewBusiness" runat="server" /></td></tr>
           <tr><td class="auto-style1">Consecutive Years Without Loss:</td><td><asp:TextBox ID="txtYears" runat="server"></asp:TextBox></td></tr>
          <tr><td colspan="2"><h3><b>Quote Information</b></h3><hr /></td></tr>
            <tr><td class="auto-style1">Effective Date<span class="auto-style2">*</span>:</td><td><asp:TextBox ID="txtEffectiveDate" runat="server"></asp:TextBox>
                <asp:ImageButton ID="imgEffDate" ImageUrl="img/calendar.png" ImageAlign="Bottom"
    runat="server" />
                <cc1:CalendarExtender ID="ccEfectiveDate" PopupButtonID="imgEffDate" runat="server" TargetControlID="txtEffectiveDate" Format="MM/dd/yyyy"> </cc1:CalendarExtender> 
                                                            </td></tr>
            <tr><td class="auto-style1">Expiration Date<span class="auto-style2">*</span>:</td><td><asp:TextBox ID="txtExpirationDate" runat="server"></asp:TextBox>
                 <asp:ImageButton ID="imgExpDate" ImageUrl="img/calendar.png" ImageAlign="Bottom"
    runat="server" />
                <cc1:CalendarExtender ID="ccExpirationDate" PopupButtonID="imgExpDate" runat="server" TargetControlID="txtExpirationDate" Format="MM/dd/yyyy"> </cc1:CalendarExtender> 
                                                             </td></tr>
          <tr><td class="auto-style1">Lines of Business:</td><td>
              <asp:CheckBox ID="chkGeneralLiability" Text="General Liability" runat="server" /></td></tr>
          <tr><td class="auto-style1"></td><td>
              <asp:CheckBox ID="chkVacantBuildingGL" Text="Vacant Building (up to annual term)" runat="server" /></td></tr>
          <tr><td class="auto-style1"></td><td>
              <asp:CheckBox ID="chkOwners" Text="Owners and Contractors Protective (OCP)" runat="server" /></td></tr>
          <tr><td></td><td>
              <asp:CheckBox ID="chkSpecialEvent" Text="Special Events (up to annual term)" runat="server" /></td></tr>
          <tr><td></td><td>
              <asp:CheckBox ID="chkProperty" Text="Property" runat="server" /></td></tr>
          <tr><td></td><td>
              <asp:CheckBox ID="chkVacantBuildingProperty" Text="Vacant Building (up to annual term)" runat="server" /></td></tr>
          <tr><td></td><td>
              <asp:CheckBox ID="chkBldrRisk" Text="Builder's Risk" runat="server" /></td></tr>
          <tr><td></td><td>
              <asp:CheckBox ID="chkCrime" Text="Crime" runat="server" /></td></tr>
          <tr><td></td><td>
              <asp:CheckBox ID="chkInlandMarine" Text="Inland Marine (A/R, Valuable Papers, and Floaters)" runat="server" /></td></tr>
          <tr><td></td><td>
              <asp:CheckBox ID="chkContractorsEquipment" Text="Contractors Equipment" runat="server" /></td></tr>
          <tr><td></td><td>
              <asp:CheckBox ID="chkMotorTruck" Text="Motor Truck Cargo" runat="server" /></td></tr>
          <tr><td></td><td>
              <asp:CheckBox ID="chkGarage" Text="Garage" runat="server" /></td></tr>
     <tr><td class="auto-style1">
         <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" BackColor="#317DB1" BorderColor="#8EC2E8"
                                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="13px" ForeColor="White" Width="80px"/></td><td>
                &nbsp;  <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#317DB1" BorderColor="#8EC2E8"
                                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Arial" Font-Size="13px" ForeColor="White" Width="80px" /></td></tr>
    </table>
</asp:Content>

