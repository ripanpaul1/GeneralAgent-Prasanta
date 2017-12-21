using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class vwSummaryDBAccess
    {
        public vwSummary GetSummaryByQuoteID(int quoteID)
        {
            vwSummary _summary = null;

            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@QuoteID", quoteID)
            };

            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("proc_vwSummary_GetAllByQuoteID", CommandType.StoredProcedure, parameters))
            {
                //check if any record exist or not
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];


                    _summary = new vwSummary();

                    _summary.ID = Convert.ToInt32(row["ID"]);
                    _summary.Mailing_Address1 = Convert.ToString(row["Mailing_Address1"]);
                    _summary.Mailing_Address2 = Convert.ToString(row["Mailing_Address2"]);
                    _summary.ZipCode = Convert.ToInt32(row["ZipCode"]);
                    _summary.City = Convert.ToString(row["City"]);

                    _summary.Is_new_business = Convert.ToBoolean(row["Is_new_business"]);
                    _summary.Years_Without_Loss = Convert.ToInt32(row["Years_Without_Loss"]);
                    _summary.Effective_Date = Convert.ToDateTime(row["Effective_Date"]);
                    _summary.Expiration_Date = Convert.ToDateTime(row["Expiration_Date"]);
                    _summary.LOB_GeneralLiability = Convert.ToBoolean(row["LOB_GeneralLiability"]);
                    _summary.LOB_VacantBuildingGL = Convert.ToBoolean(row["LOB_VacantBuildingGL"]);
                    _summary.LOB_Owners = Convert.ToBoolean(row["LOB_Owners"]);
                    _summary.LOB_SpecialEvent = Convert.ToBoolean(row["LOB_SpecialEvent"]);
                    _summary.LOB_Property = Convert.ToBoolean(row["LOB_Property"]);
                    _summary.LOB_VacantBuildingProperty = Convert.ToBoolean(row["LOB_VacantBuildingProperty"]);
                    _summary.LOB_BuilderRisk = Convert.ToBoolean(row["LOB_BuilderRisk"]);
                    _summary.LOB_Crime = Convert.ToBoolean(row["LOB_Crime"]);
                    _summary.LOB_InlandMarine = Convert.ToBoolean(row["LOB_InlandMarine"]);
                    _summary.LOB_ContractorsEquipment = Convert.ToBoolean(row["LOB_ContractorsEquipment"]);
                    _summary.LOB_MotorTruck = Convert.ToBoolean(row["LOB_MotorTruck"]);
                    _summary.UserID = Convert.ToInt32(row["UserID"]);
                    _summary.QuoteStatus = Convert.ToString(row["QuoteStatus"]);

                    _summary.QuoteNo = Convert.ToString(row["QuoteNo"]);

                    _summary.Insured_Name = Convert.ToString(row["Insured_Name"]);
                    _summary.Home_State_ID = Convert.ToInt32(row["Home_State_ID"]);
                    _summary.Insured_State_ID = Convert.ToInt32(row["Home_State_ID"]);
                    _summary.Insured_State_Name = Convert.ToString(row["Insured_State_Name"]);
                    _summary.Home_State_Name = Convert.ToString(row["Home_State_Name"]);
                    _summary.ClassID = Convert.ToInt32(row["ClassID"]);
                    _summary.Exposure = Convert.ToInt32(row["Exposure"]);
                    _summary.Cov_Premises = Convert.ToBoolean(row["Cov_Premises"]);
                    _summary.Cov_Product = Convert.ToBoolean(row["Cov_Product"]);
                    _summary.Territory_ID = Convert.ToInt32(row["Territory_ID"]);
                    _summary.TerritoryDetails = row["TerritoryDetails"].ToString();
                    _summary.EachOccurence = Convert.ToString(row["Class"]);

                    _summary.EachOccurence = Convert.ToString(row["EachOccurence"]);
                    _summary.GeneralAggregate = Convert.ToString(row["GeneralAggregate"]);
                    _summary.PremisesDamage = Convert.ToString(row["PremisesDamage"]);
                    _summary.MedicalExpense = Convert.ToString(row["MedicalExpense"]);
                    _summary.ProductCompleted = Convert.ToString(row["ProductCompleted"]);
                    _summary.DeductablePerClaim = Convert.ToString(row["DeductablePerClaim"]);
                    _summary.PersonalInjury = Convert.ToString(row["PersonalInjury"]);

                    _summary.ProtectionClass = Convert.ToInt32(row["ProtectionClass"]);
                    _summary.PropertyClassID = Convert.ToInt32(row["PropertyClassID"]);
                    _summary.PropertyClassName = Convert.ToString(row["PropertyClassName"]);
                    _summary.StructureDescription = Convert.ToString(row["StructureDescription"]);
                    _summary.ConstructionType = Convert.ToString(row["ConstructionType"]);
                    _summary.ConstType_ApplySpriniderSafeguardP1 = Convert.ToBoolean(row["ConstType_ApplySpriniderSafeguardP1"]);
                    _summary.ConstType_ExcludeWindHall = Convert.ToBoolean(row["ConstType_ExcludeWindHall"]);
                    _summary.HigherWindHall = Convert.ToString(row["HigherWindHall"]);
                    _summary.YearBuilt = Convert.ToInt32(row["YearBuilt"]);
                    _summary.LastCompleteUpdateYear = Convert.ToInt32(row["LastCompleteUpdateYear"]);
                    _summary.Plumbing = Convert.ToString(row["Plumbing"]);
                    _summary.Rooting = Convert.ToString(row["Rooting"]);
                    _summary.Wiring = Convert.ToString(row["Wiring"]);
                    _summary.Coverage_Building = Convert.ToBoolean(row["Coverage_Building"]);
                    _summary.Coverage_BusinessPersonalProperty = Convert.ToBoolean(row["Coverage_BusinessPersonalProperty"]);
                    _summary.Coverage_BusinessIncome = Convert.ToBoolean(row["Coverage_BusinessIncome"]);
                    _summary.Coverage_PersonalPropertyofOthers = Convert.ToBoolean(row["Coverage_PersonalPropertyofOthers"]);
                    _summary.Coverage_Signs = Convert.ToBoolean(row["Coverage_Signs"]);
                    _summary.Coverage_PropertyInOpen = Convert.ToBoolean(row["Coverage_PropertyInOpen"]);

                }
            }

            return _summary;
        }
    }
}
