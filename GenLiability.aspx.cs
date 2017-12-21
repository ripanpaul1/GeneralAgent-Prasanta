using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

public partial class GenLiability : System.Web.UI.Page
{
    StateMasterHandler stateHandler = null;

    TerritoryMasterHandler territoryHandler = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValidUser"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {

            stateHandler = new StateMasterHandler();
            territoryHandler = new TerritoryMasterHandler();
            mvGeneralLiability.SetActiveView(vwAddClass);
            string strQuoteNo = Convert.ToString(Session["QuoteNo"]);
            BindDDL();
            LoadQuoteDetails(strQuoteNo);


        }
    }
    private void LoadClassDetails(int quoteID)
    {
        vwClassDetailsHandler objClassHandler = new vwClassDetailsHandler();
        rptClass.DataSource = objClassHandler.GetClassMasterListByQuoteID(quoteID);
        rptClass.DataBind();

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

        string strQuoteMode = Convert.ToString(Session["QuoteMode"]);
        //string strQuoteNo = Convert.ToString(Session["QuoteNo"]);
        if (strQuoteMode == "EDIT")
        {
            int quoteID = Convert.ToInt32(Session["QuoteID"]);
            vwClassDetailsHandler objvwClsHandler = new vwClassDetailsHandler();
            vwClassDetails objvwCls = objvwClsHandler.GetClassDetailsByQuoteID(quoteID);
            try
            {
                ddlTerritory.SelectedValue = Convert.ToString(objvwCls.Territory_ID);
            }
            catch
            { }
        }
    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        int quoteID = Convert.ToInt32(Session["QuoteID"]);
        string strQuoteMode = Convert.ToString(Session["QuoteMode"]);
        if (strQuoteMode == "EDIT")
        {
            vwClassDetailsHandler objvwClsHandler = new vwClassDetailsHandler();
            vwClassDetails objvwCls = objvwClsHandler.GetClassDetailsByQuoteID(quoteID);

            ClassDetails objClass = new ClassDetails();
            objClass.ID = objvwCls.ID;
            objClass.Zip = Convert.ToInt32(txtZip.Text);
            objClass.ClassID = Convert.ToInt32(ddlSelectClass.SelectedValue);
            objClass.Quote_ID = quoteID;
            objClass.Territory = Convert.ToString(ddlTerritory.SelectedItem.Text);
            objClass.Exposure = Convert.ToInt32(txtExposure.Text);
            objClass.Cov_Product = chkProduct.Checked;
            objClass.Cov_Premises = chkPremises.Checked;
            objClass.Territory_ID = Convert.ToInt32(ddlTerritory.SelectedValue);
            objClass.StateID = Convert.ToInt32(ddlState.SelectedValue);

            ClassDetailsHandler classHandler = new ClassDetailsHandler();
            classHandler.Update(objClass);
        }
        else
        {
            ClassDetails objClass = new ClassDetails();
            objClass.Zip = Convert.ToInt32(txtZip.Text);
            objClass.ClassID = Convert.ToInt32(ddlSelectClass.SelectedValue);
            objClass.Quote_ID = quoteID;
            objClass.Territory = Convert.ToString(ddlTerritory.SelectedItem.Text);
            objClass.Exposure = Convert.ToInt32(txtExposure.Text);
            objClass.Cov_Product = chkProduct.Checked;
            objClass.Cov_Premises = chkPremises.Checked;
            objClass.Territory_ID = Convert.ToInt32(ddlTerritory.SelectedValue);
            objClass.StateID = Convert.ToInt32(ddlState.SelectedValue);

            ClassDetailsHandler classHandler = new ClassDetailsHandler();
            classHandler.AddNew(objClass);
        }
        LoadClassDetails(quoteID);
        mvGeneralLiability.SetActiveView(vwLimit);
    }

    protected void lnkBtnChange_Click(object sender, EventArgs e)
    {
        Session["QuoteMode"] = "EDIT";

        Response.Redirect("CreateQuote.aspx");
    }
    private void BindDDL()
    {

        ddlState.DataSource = stateHandler.GetStateListDetails();
        ddlState.DataTextField = "StateName";
        ddlState.DataValueField = "ID";
        ddlState.DataBind();
        ddlState.Items.Insert(0, new ListItem("--Select--", "0"));

        ddlTerritory.DataSource = territoryHandler.GetTerritoryDetails();
        ddlTerritory.DataTextField = "TerritoryDetails";
        ddlTerritory.DataValueField = "ID";
        ddlTerritory.DataBind();
        ddlTerritory.Items.Insert(0, new ListItem("--Select--", "0"));

        //Set Default value for limit dropdown
        ddlDeductibleperClaim.SelectedValue = "500";
        ddlDamagetoPremises.SelectedValue = "1000000";
        ddlOccurance.SelectedValue = "1000000";
        ddlGeneralAggregate.SelectedValue = "2000000";
        ddlMedicalExpense.SelectedValue = "5000";
        ddlProdAggregate.SelectedValue = "2000000";
        ddlInjury.SelectedValue = "1000000";


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

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        int quoteID = Convert.ToInt32(Session["QuoteID"]);
        string strQuoteMode = Convert.ToString(Session["QuoteMode"]);
        if (strQuoteMode == "EDIT")
        {
            LimitDetailsHandler objLimitDtlsHandler = new LimitDetailsHandler();

            LimitDetails objLimitDtls = objLimitDtlsHandler.GetClassDetailsByQuoteID(quoteID);

            LimitDetails objLimits = new LimitDetails();
            objLimits.ID = objLimitDtls.ID;
            objLimits.Quote_ID = objLimitDtls.Quote_ID;
            objLimits.EachOccurence = Convert.ToString(ddlOccurance.SelectedValue);
            objLimits.GeneralAggregate = Convert.ToString(ddlGeneralAggregate.SelectedValue);
            objLimits.PremisesDamage = Convert.ToString(ddlDamagetoPremises.SelectedValue);
            objLimits.MedicalExpense = Convert.ToString(ddlMedicalExpense.SelectedValue);
            objLimits.ProductCompleted = Convert.ToString(ddlProdAggregate.SelectedValue);
            objLimits.DeductablePerClaim = Convert.ToString(ddlDeductibleperClaim.SelectedValue);
            objLimits.PersonalInjury = Convert.ToString(ddlInjury.SelectedValue);

            LimitDetailsHandler limitHandler = new LimitDetailsHandler();
            limitHandler.Update(objLimits);

        }
        else
        {
            LimitDetails objLimits = new LimitDetails();
            objLimits.Quote_ID = Convert.ToInt32(Session["QuoteID"]);
            objLimits.EachOccurence = Convert.ToString(ddlOccurance.SelectedValue);
            objLimits.GeneralAggregate = Convert.ToString(ddlGeneralAggregate.SelectedValue);
            objLimits.PremisesDamage = Convert.ToString(ddlDamagetoPremises.SelectedValue);
            objLimits.MedicalExpense = Convert.ToString(ddlMedicalExpense.SelectedValue);
            objLimits.ProductCompleted = Convert.ToString(ddlProdAggregate.SelectedValue);
            objLimits.DeductablePerClaim = Convert.ToString(ddlDeductibleperClaim.SelectedValue);
            objLimits.PersonalInjury = Convert.ToString(ddlInjury.SelectedValue);

            LimitDetailsHandler limitHandler = new LimitDetailsHandler();
            limitHandler.AddNew(objLimits);
        }
        lblMsg.Text = "Data has been successfully saved.";
        mpShow.Show();
    }


}