using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

public partial class CreateQuote : System.Web.UI.Page
{
    StateMasterHandler stateHandler = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValidUser"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            stateHandler = new StateMasterHandler();
            BindState();
            string strQuoteMode = Convert.ToString(Session["QuoteMode"]);
            if (strQuoteMode == "EDIT")
            {
                int quoteId = Convert.ToInt32(Session["QuoteID"]);
                LoadData(quoteId);
            }

        }
    }

    private void LoadData(int quoteId)
    {

        vwQuoteDetailsHandler objQuote = new vwQuoteDetailsHandler();
        vwQuoteDetails objvwQuote = objQuote.GetQuotesByID(quoteId);
        txtInsuredName.Text = Convert.ToString(objvwQuote.Insured_Name);
        txtAddress1.Text = Convert.ToString(objvwQuote.Mailing_Address1);
        txtAddress2.Text = Convert.ToString(objvwQuote.Mailing_Address2);
        txtZipCode.Text = Convert.ToString(objvwQuote.ZipCode);
        txtCity.Text = Convert.ToString(objvwQuote.City);
        ddlHomeState.SelectedValue = Convert.ToString(objvwQuote.Home_State_ID);
        ddlInsureState.SelectedValue = Convert.ToString(objvwQuote.Insured_State_ID);
        chkIsNewBusiness.Checked = objvwQuote.Is_new_business;
        chkBldrRisk.Checked = objvwQuote.LOB_BuilderRisk;
        chkContractorsEquipment.Checked = objvwQuote.LOB_ContractorsEquipment;
        chkCrime.Checked = objvwQuote.LOB_Crime;
        chkGarage.Checked = objvwQuote.LOB_Garage;
        chkGeneralLiability.Checked = objvwQuote.LOB_GeneralLiability;
        chkInlandMarine.Checked = objvwQuote.LOB_InlandMarine;
        chkMotorTruck.Checked = objvwQuote.LOB_MotorTruck;
        chkOwners.Checked = objvwQuote.LOB_Owners;
        chkProperty.Checked = objvwQuote.LOB_Property;
        chkSpecialEvent.Checked = objvwQuote.LOB_SpecialEvent;
        chkVacantBuildingGL.Checked = objvwQuote.LOB_VacantBuildingGL;
        chkVacantBuildingProperty.Checked = objvwQuote.LOB_VacantBuildingProperty;
        txtYears.Text = Convert.ToString(objvwQuote.Years_Without_Loss);
        txtEffectiveDate.Text = objvwQuote.Effective_Date.ToString("MM/dd/yyyy");
        txtExpirationDate.Text = objvwQuote.Expiration_Date.ToString("MM/dd/yyyy");

        Session["QuoteNo"] = objvwQuote.QuoteNo;
        //ViewState["QuoteDetails"]= objvwQuote;
    }

    private void BindState()
    {
        ddlInsureState.DataSource = stateHandler.GetStateListDetails();
        ddlInsureState.DataTextField = "StateName";
        ddlInsureState.DataValueField = "ID";
        ddlInsureState.DataBind();
        ddlInsureState.Items.Insert(0, new ListItem("--Select--", "0"));

        ddlHomeState.DataSource = stateHandler.GetStateListDetails();
        ddlHomeState.DataTextField = "StateName";
        ddlHomeState.DataValueField = "ID";
        ddlHomeState.DataBind();
        ddlHomeState.Items.Insert(0, new ListItem("--Select--", "0"));


    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        //Session["QuoteMode"] = string.Empty;
        //Session["QuoteID"] = null;
        Session.Remove("QuoteMode");
        Session.Remove("QuoteID");
        Response.Redirect("QuoteHome.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        UserMaster objUSer = new UserMaster();
        objUSer = (UserMaster)Session["User"];
        string strQuoteMode = Convert.ToString(Session["QuoteMode"]);
        if (strQuoteMode == "EDIT")
        {
            int quoteId = Convert.ToInt32(Session["QuoteID"]);
            QuoteDetails objQuote = new QuoteDetails();
            objQuote.ID = quoteId;
            objQuote.Insured_Name = Convert.ToString(txtInsuredName.Text);
            objQuote.Mailing_Address1 = Convert.ToString(txtAddress1.Text);
            objQuote.Mailing_Address2 = Convert.ToString(txtAddress2.Text);
            objQuote.ZipCode = Convert.ToInt32(txtZipCode.Text);
            objQuote.City = Convert.ToString(txtCity.Text);
            objQuote.Home_State_ID = Convert.ToInt32(ddlHomeState.SelectedValue);
            objQuote.Insured_State_ID = Convert.ToInt32(ddlInsureState.SelectedValue);
            objQuote.Is_new_business = chkIsNewBusiness.Checked;
            objQuote.LOB_BuilderRisk = chkBldrRisk.Checked;
            objQuote.LOB_ContractorsEquipment = chkContractorsEquipment.Checked;
            objQuote.LOB_Crime = chkCrime.Checked;
            objQuote.LOB_Garage = chkGarage.Checked;
            objQuote.LOB_GeneralLiability = chkGeneralLiability.Checked;
            objQuote.LOB_InlandMarine = chkInlandMarine.Checked;
            objQuote.LOB_MotorTruck = chkMotorTruck.Checked;
            objQuote.LOB_Owners = chkOwners.Checked;
            objQuote.LOB_Property = chkProperty.Checked;
            objQuote.LOB_SpecialEvent = chkSpecialEvent.Checked;
            objQuote.LOB_VacantBuildingGL = chkVacantBuildingGL.Checked;
            objQuote.LOB_VacantBuildingProperty = chkVacantBuildingProperty.Checked;
            objQuote.Years_Without_Loss = Convert.ToInt32(txtYears.Text);
            //objQuote.Effective_Date = Convert.ToDateTime(txtEffectiveDate.Text);
            //objQuote.Expiration_Date = Convert.ToDateTime(txtExpirationDate.Text);
            objQuote.Effective_Date = DateTime.ParseExact(txtEffectiveDate.Text, "MM/dd/yyyy", null);
            objQuote.Expiration_Date = DateTime.ParseExact(txtExpirationDate.Text, "MM/dd/yyyy", null);

            objQuote.UserID = objUSer.ID;

            objQuote.QuoteNo = Convert.ToString(Session["QuoteNo"]);
            objQuote.QuoteStatus = "Quoted";


            QuoteDetailsHandler quoteHandler = new QuoteDetailsHandler();
            quoteHandler.Update(objQuote);

            Response.Redirect("GenLiability.aspx");
            //Response.Redirect("GeneralLiability.aspx");
        }
        else
        {
            Random rnd = new Random();
            int quoteNo = rnd.Next(1000000, 9999999);

            QuoteDetails objQuote = new QuoteDetails();
            objQuote.Insured_Name = Convert.ToString(txtInsuredName.Text);
            objQuote.Mailing_Address1 = Convert.ToString(txtAddress1.Text);
            objQuote.Mailing_Address2 = Convert.ToString(txtAddress2.Text);
            objQuote.ZipCode = Convert.ToInt32(txtZipCode.Text);
            objQuote.City = Convert.ToString(txtCity.Text);
            objQuote.Home_State_ID = Convert.ToInt32(ddlHomeState.SelectedValue);
            objQuote.Insured_State_ID = Convert.ToInt32(ddlInsureState.SelectedValue);
            objQuote.Is_new_business = chkIsNewBusiness.Checked;
            objQuote.LOB_BuilderRisk = chkBldrRisk.Checked;
            objQuote.LOB_ContractorsEquipment = chkContractorsEquipment.Checked;
            objQuote.LOB_Crime = chkCrime.Checked;
            objQuote.LOB_Garage = chkGarage.Checked;
            objQuote.LOB_GeneralLiability = chkGeneralLiability.Checked;
            objQuote.LOB_InlandMarine = chkInlandMarine.Checked;
            objQuote.LOB_MotorTruck = chkMotorTruck.Checked;
            objQuote.LOB_Owners = chkOwners.Checked;
            objQuote.LOB_Property = chkProperty.Checked;
            objQuote.LOB_SpecialEvent = chkSpecialEvent.Checked;
            objQuote.LOB_VacantBuildingGL = chkVacantBuildingGL.Checked;
            objQuote.LOB_VacantBuildingProperty = chkVacantBuildingProperty.Checked;
            objQuote.Years_Without_Loss = Convert.ToInt32(txtYears.Text);
            //objQuote.Effective_Date = Convert.ToDateTime(txtEffectiveDate.Text);
            //objQuote.Expiration_Date = Convert.ToDateTime(txtExpirationDate.Text);
            objQuote.Effective_Date = DateTime.ParseExact(txtEffectiveDate.Text, "MM/dd/yyyy", null);
            objQuote.Expiration_Date = DateTime.ParseExact(txtExpirationDate.Text, "MM/dd/yyyy", null);

            objQuote.UserID = objUSer.ID;

            objQuote.QuoteNo = Convert.ToString(quoteNo);
            objQuote.QuoteStatus = "Quoted";


            QuoteDetailsHandler quoteHandler = new QuoteDetailsHandler();
            quoteHandler.AddNew(objQuote);

            Session["QuoteNo"] = objQuote.QuoteNo;
            Response.Redirect("GenLiability.aspx");
            //Response.Redirect("GeneralLiability.aspx");
            //if (quoteHandler.AddNew(objQuote) == true)
            //{
            //    Response.Redirect("QuoteHome.aspx");
            //}
        }
    }
}