using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;

public partial class Summary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["IsValidUser"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            int quoteID = Convert.ToInt32(Session["QuoteID"]);
            //int quoteID = 23;
            LoadQuoteDetails(quoteID);
            LoadClassDetails(quoteID);
        }
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        int quoteID = Convert.ToInt32(Session["QuoteID"]);
        vwSummaryHandler objSummaryHandler = new vwSummaryHandler();
        vwSummary objSummary = objSummaryHandler.GetSummaryByQuoteID(quoteID);

        string strValuePair = "Insured_Name:" + objSummary.Insured_Name + "|Effective_Date:" + objSummary.Effective_Date.ToString("MM/dd/yyyy") + "|Expiration_Date:" + objSummary.Expiration_Date.ToString("MM/dd/yyyy") + "|Home_State_Name:" + objSummary.Home_State_Name + "" +
            "|Insured_State_Name:" + objSummary.Insured_State_Name + "|Mailing_Address1:" + Convert.ToString(objSummary.Mailing_Address1) + "|Mailing_Address2:" + Convert.ToString(objSummary.Mailing_Address2) + "|ZipCode:" + objSummary.ZipCode + "|MedicalLimit:" + Convert.ToString(objSummary.MedicalExpense) + "|EachOccurence:" + Convert.ToString(objSummary.EachOccurence) + "|PremisesLimit:" + Convert.ToString(objSummary.PremisesDamage) + "" +
            "|GeneralAggregate:" + Convert.ToString(objSummary.GeneralAggregate) + "|ProdLimit:" + Convert.ToString(objSummary.ProductCompleted) + "|PersonalLimit:" + Convert.ToString(objSummary.PersonalInjury) + "|DeductablePerClaim:" + Convert.ToString(objSummary.DeductablePerClaim) + "" +
            "|CredifFactor:" + lblCredifFactor.Text + "|RPMFactor:" + lblIRPMFactor.Text + "|TRIAPremium:" + lblGLTRIAPremium.Text + "|Total:" + lblGLTotal.Text + "|BusinessPremium:" + lblGLBusinessPremium.Text + "|Company:" + lblCompany.Text + "|AdmittedStatus:" + lblAdmittedStatus.Text + "|TerritoryDetails:" + objSummary.TerritoryDetails + "|Class:" + objSummary.Class + "|Exposure:" + objSummary.Exposure + "" +
            "|LOB_BuilderRisk:" + objSummary.LOB_BuilderRisk+ "|LOB_ContractorsEquipment:" + objSummary.LOB_ContractorsEquipment+ "|LOB_Crime:" + objSummary.LOB_Crime+""+
            "|LOB_Garage:" + objSummary.LOB_Garage+ "|LOB_GeneralLiability:" + objSummary.LOB_GeneralLiability+ "|LOB_InlandMarine" + objSummary.LOB_InlandMarine+""+
            "|LOB_MotorTruck:" + objSummary.LOB_MotorTruck+ "|LOB_Owners:" + objSummary.LOB_Owners+ "|LOB_Property:" + objSummary.LOB_Property+ "|LOB_SpecialEvent:" + objSummary.LOB_SpecialEvent+ "|LOB_VacantBuildingGL:" + objSummary.LOB_VacantBuildingGL+ "|LOB_VacantBuildingProperty:" + objSummary.LOB_VacantBuildingProperty+""+
            "|Is_new_business:" + objSummary.Is_new_business+ "|Years_Without_Loss:" + objSummary.Years_Without_Loss+ "|City:" + objSummary.City+"";

        string[] name = strValuePair.Split('|');
        string[] value;
        foreach (string values in name)
        {
            value = values.Split(':');
            if (values.Contains("Total"))
            {
                lblTotalPremium.Text = value[1];
            }
            else
            {
                if (values.Contains("TRIA"))
                {
                    lblTRIAPremium.Text = value[1];
                }
                else
                {
                    lblBusinessPremium.Text= value[1];
                }
                
            }
        }
    }

    private void LoadQuoteDetails(int quoteID)
    {
        vwSummaryHandler objSummaryHandler = new vwSummaryHandler();
        vwSummary objSummary = objSummaryHandler.GetSummaryByQuoteID(quoteID);
        lblEffective.Text = objSummary.Effective_Date.ToString("MM/dd/yyyy");
        lblQuote.Text = Convert.ToString(objSummary.QuoteNo);
        lblExpiration.Text = objSummary.Expiration_Date.ToString("MM/dd/yyyy");
        lblAddress1.Text =Convert.ToString(objSummary.Mailing_Address1);
        lblAddress2.Text= Convert.ToString(objSummary.Mailing_Address2);
        lblInsuredName.Text= Convert.ToString(objSummary.Insured_Name);
        lblHomeState.Text = Convert.ToString(objSummary.Home_State_Name);
        lblMedicalLimit.Text = Convert.ToString(objSummary.MedicalExpense);
        lblOccranceLimit.Text = Convert.ToString(objSummary.EachOccurence);
        lblPremisesLimit.Text = Convert.ToString(objSummary.PremisesDamage);
        lblGeneralAggregateLimit.Text = Convert.ToString(objSummary.GeneralAggregate);
        lblProdLimit.Text= Convert.ToString(objSummary.ProductCompleted);
        lblPersonalLimit.Text = Convert.ToString(objSummary.PersonalInjury);
        lblDeductiblePerClaim.Text = Convert.ToString(objSummary.DeductablePerClaim);

        // Calculation
        lblIRPMFactor.Text = "1.00";
        lblCredifFactor.Text = "1.00";
        lblGeneralAggregateLimit.Text = "$1,500";
        lblGLTRIAPremium.Text = "0";
        lblGLTotal.Text= "$1,500";
        lblGLBusinessPremium.Text= "$1,500";

        lblCompany.Text = "United Specialty Insurance Company";
        lblAdmittedStatus.Text = "New York";

    }
    private void LoadClassDetails(int quoteID)
    {
        vwClassDetailsHandler objClassHandler = new vwClassDetailsHandler();
        rptClass.DataSource = objClassHandler.GetClassMasterListByQuoteID(quoteID);
        rptClass.DataBind();

       
    }
}