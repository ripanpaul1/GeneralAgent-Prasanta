using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

public partial class PropertyDetails : System.Web.UI.Page
{
    StateMasterHandler stateHandler = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValidUser"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        stateHandler = new StateMasterHandler();
        mvProperty.SetActiveView(vwLocation);
        string strQuoteNo = Convert.ToString(Session["QuoteNo"]);
        BindDDL();
        LoadQuoteDetails(strQuoteNo);
    }
    private void LoadQuoteDetails(string strQuoteNo)
    {
        QuoteDetailsHandler objQuoteHandler = new QuoteDetailsHandler();
        QuoteDetails objQuote = objQuoteHandler.GetQuotesByNumber(strQuoteNo);
        Session["QuoteID"] = objQuote.ID;

        lblEffective.Text = objQuote.Effective_Date.ToString("dd/MM/yyyy");
        lblQuote.Text = Convert.ToString(objQuote.QuoteNo);
        lblExpiration.Text = objQuote.Expiration_Date.ToString("dd/MM/yyyy");

        ddlState.SelectedValue = Convert.ToString(objQuote.Home_State_ID);
        txtZip.Text = Convert.ToString(objQuote.ZipCode);
        txtCity.Text = Convert.ToString(objQuote.City);
        txtAddress1.Text = Convert.ToString(objQuote.Mailing_Address1);
        txtAddress2.Text = Convert.ToString(objQuote.Mailing_Address2);
        ddlState.SelectedValue = Convert.ToString(objQuote.Home_State_ID);
        int quoteID = Convert.ToInt32(Session["QuoteID"]);
        //string strQuoteMode = Convert.ToString(Session["QuoteMode"]);
        //string strQuoteNo = Convert.ToString(Session["QuoteNo"]);
        //if (strQuoteMode == "EDIT")
        //{
        //    vwPropertyHandler objPropertyhandler = new vwPropertyHandler();

        //    vwProperty objvwProperty = objPropertyhandler.GetDetailsByQuoteNo(strQuoteNo);
        //    if (objvwProperty != null)
        //    {
               
        //    }
        //}
    }
    private void BindDDL()
    {

        ddlState.DataSource = stateHandler.GetStateListDetails();
        ddlState.DataTextField = "StateName";
        ddlState.DataValueField = "ID";
        ddlState.DataBind();
        ddlState.Items.Insert(0, new ListItem("--Select--", "0"));

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strClass = Convert.ToString(txtFindClass.Text);
        ClassMasterHandler objClassHandler = new ClassMasterHandler();

        ddlSelectClass.DataSource = objClassHandler.GetClassListDetails(strClass);
        ddlSelectClass.DataTextField = "Class";
        ddlSelectClass.DataValueField = "ID";
        ddlSelectClass.DataBind();
        ddlSelectClass.Items.Insert(0, new ListItem("--Select--", "0"));
    }
    protected void ddlSelectClass_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblFullDescription.Text = Convert.ToString(ddlSelectClass.SelectedItem.Text);


    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        int quoteID = Convert.ToInt32(Session["QuoteID"]);
        string strQuoteMode = Convert.ToString(Session["QuoteMode"]);
        string strQuoteNo = Convert.ToString(Session["QuoteNo"]);
        if (strQuoteMode == "EDIT")
        {
            vwPropertyHandler objPropertyhandler = new vwPropertyHandler();

            vwProperty objvwProperty = objPropertyhandler.GetDetailsByQuoteNo(strQuoteNo);

            //int propertyID = Convert.ToInt32(ViewState["PropertyID"]);
            Property objProperty = new Property();
            objProperty.ID = objvwProperty.ID;
            objProperty.QuoteID = Convert.ToInt32(Session["QuoteID"]);
            objProperty.Address1 = Convert.ToString(txtAddress1.Text);
            objProperty.Address2 = Convert.ToString(txtAddress2.Text);
            objProperty.Zip = Convert.ToInt32(txtZip.Text);
            objProperty.City = Convert.ToString(txtCity.Text);
            objProperty.StateID = Convert.ToInt32(ddlState.SelectedValue);

            objProperty.ClassID = Convert.ToInt32(ddlSelectClass.SelectedValue);

            objProperty.StructureDescription = objvwProperty.StructureDescription;
            objProperty.ConstructionType = objvwProperty.ConstructionType;
            objProperty.HigherWindHall = objvwProperty.HigherWindHall;
            objProperty.ConstType_ApplySpriniderSafeguardP1 = objvwProperty.ConstType_ApplySpriniderSafeguardP1;
            objProperty.ConstType_ExcludeWindHall = objvwProperty.ConstType_ExcludeWindHall;
            objProperty.YearBuilt = objvwProperty.YearBuilt;
            objProperty.LastCompleteUpdateYear = objvwProperty.LastCompleteUpdateYear;
            objProperty.Plumbing = objvwProperty.Plumbing;
            objProperty.Rooting = objvwProperty.Rooting;
            objProperty.Wiring = objvwProperty.Wiring;
            objProperty.Coverage_Building = objvwProperty.Coverage_Building;
            objProperty.Coverage_BusinessIncome = objvwProperty.Coverage_BusinessIncome;
            objProperty.Coverage_PersonalPropertyofOthers = objvwProperty.Coverage_PersonalPropertyofOthers;
            objProperty.Coverage_PropertyInOpen = objvwProperty.Coverage_PropertyInOpen;
            objProperty.Coverage_Signs = objvwProperty.Coverage_Signs;

            PropertyHandler propertyHandler = new PropertyHandler();
            propertyHandler.Update(objProperty);
        }
        else
        {

            Property objProperty = new Property();


            objProperty.QuoteID = Convert.ToInt32(Session["QuoteID"]);
            objProperty.Address1 = Convert.ToString(txtAddress1.Text);
            objProperty.Address2 = Convert.ToString(txtAddress2.Text);
            objProperty.Zip = Convert.ToInt32(txtZip.Text);
            objProperty.City = Convert.ToString(txtCity.Text);
            objProperty.StateID = Convert.ToInt32(ddlState.SelectedValue);

            objProperty.ClassID = Convert.ToInt32(ddlSelectClass.SelectedValue);

            PropertyHandler propertyHandler = new PropertyHandler();
            propertyHandler.AddNew(objProperty);
        }
        //string strQuoteNo = Convert.ToString(Session["QuoteNo"]);
        LoadPropertyDetails(strQuoteNo);
        mvProperty.SetActiveView(vwBuilding);

    }
    private void LoadPropertyDetails(string strQuoteNo)
    {
        vwPropertyHandler objPropertyhandler = new vwPropertyHandler();
        vwProperty objProperty = objPropertyhandler.GetDetailsByQuoteNo(strQuoteNo);

        lblAddress.Text = "" + Convert.ToString(objProperty.Address1);// + " " + Convert.ToString(objProperty.Address2) + "";
        lblOccupancy.Text = Convert.ToString(objProperty.Class);
        ViewState["PropertyID"] = objProperty.ID;

    }
    protected void btnChange_Click(object sender, EventArgs e)
    {

    }

    protected void btnContinueBuilding_Click(object sender, EventArgs e)
    {
        vwPropertyHandler objPropertyhandler = new vwPropertyHandler();
        string strQuoteNo = Convert.ToString(Session["QuoteNo"]);
        vwProperty objvwProperty = objPropertyhandler.GetDetailsByQuoteNo(strQuoteNo);

        int propertyID = Convert.ToInt32(ViewState["PropertyID"]);
        Property objProperty = new Property();
        objProperty.ID = propertyID;
        objProperty.QuoteID = objvwProperty.QuoteID;
        objProperty.Address1 = objvwProperty.Address1;
        objProperty.Address2 = objvwProperty.Address2;
        objProperty.Zip = objvwProperty.Zip;
        objProperty.City = objvwProperty.City;
        objProperty.StateID = objvwProperty.StateID;
        objProperty.ClassID = objvwProperty.ClassID;

        objProperty.StructureDescription = txtDescription.Text;
        objProperty.ConstructionType = Convert.ToString(ddlConstructionType.SelectedValue);
        objProperty.HigherWindHall = Convert.ToString(ddlHigherWindHall.SelectedValue);
        objProperty.ConstType_ApplySpriniderSafeguardP1 = chkApplySpriniderSafeguardP1.Checked;
        objProperty.ConstType_ExcludeWindHall = chkExcludeWindHall.Checked;
        objProperty.YearBuilt = Convert.ToInt32(txtYearBuilt.Text);
        objProperty.LastCompleteUpdateYear = Convert.ToInt32(txtHeading.Text);
        objProperty.Plumbing = Convert.ToString(txtPlumbing.Text);
        objProperty.Rooting = Convert.ToString(txtRooting.Text);
        objProperty.Wiring = Convert.ToString(txtWiring.Text);
        objProperty.Coverage_Building = chkBuilding.Checked;
        objProperty.Coverage_BusinessIncome = chkBusinessIncome.Checked;
        objProperty.Coverage_PersonalPropertyofOthers = chkPersonalPropertyOfOthers.Checked;
        objProperty.Coverage_PropertyInOpen = chkPropertyInTheOpen.Checked;
        objProperty.Coverage_Signs = chkSigns.Checked;

        PropertyHandler propertyHandler = new PropertyHandler();
        propertyHandler.Update(objProperty);
        mvProperty.SetActiveView(vwSpecialDeductible);
    }

    protected void btnModifyRate_Click(object sender, EventArgs e)
    {

    }
}