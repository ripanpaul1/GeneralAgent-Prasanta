using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class QuoteDetailsDBAccess
    {
        public bool AddNew(QuoteDetails _quote)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@Insured_Name", _quote.Insured_Name),
            new SqlParameter("@Mailing_Address1", _quote.Mailing_Address1),
            new SqlParameter("@Mailing_Address2", _quote.Mailing_Address2),
            new SqlParameter("@ZipCode", _quote.ZipCode),
            new SqlParameter("@City", _quote.City),
            new SqlParameter("@Insured_State_ID", _quote.Insured_State_ID),
            new SqlParameter("@Home_State_ID", _quote.Home_State_ID),
            new SqlParameter("@Is_new_business", _quote.Is_new_business),
            new SqlParameter("@Years_Without_Loss", _quote.Years_Without_Loss),
            new SqlParameter("@Effective_Date", _quote.Effective_Date),
            new SqlParameter("@Expiration_Date", _quote.Expiration_Date),
            new SqlParameter("@LOB_GeneralLiability", _quote.LOB_GeneralLiability),
            new SqlParameter("@LOB_VacantBuildingGL", _quote.LOB_VacantBuildingGL),
            new SqlParameter("@LOB_Owners", _quote.LOB_Owners),
            new SqlParameter("@LOB_SpecialEvent", _quote.LOB_SpecialEvent),
            new SqlParameter("@LOB_Property", _quote.LOB_Property),
            new SqlParameter("@LOB_VacantBuildingProperty", _quote.LOB_VacantBuildingProperty),
            new SqlParameter("@LOB_BuilderRisk", _quote.LOB_BuilderRisk),
            new SqlParameter("@LOB_Crime", _quote.LOB_Crime),
            new SqlParameter("@LOB_InlandMarine", _quote.LOB_InlandMarine),
            new SqlParameter("@LOB_ContractorsEquipment", _quote.LOB_ContractorsEquipment),
            new SqlParameter("@LOB_MotorTruck", _quote.LOB_MotorTruck),
            new SqlParameter("@LOB_Garage", _quote.LOB_Garage),
            new SqlParameter("@UserID", _quote.UserID),
            new SqlParameter("@QuoteNo", _quote.QuoteNo),
            new SqlParameter("@QuoteStatus", _quote.QuoteStatus),

            };

            return SqlDBHelper.ExecuteNonQuery("proc_QuoteDetails_AddNew", CommandType.StoredProcedure, parameters);
        }

        public bool Update(QuoteDetails _quote)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@ID", _quote.ID),
            new SqlParameter("@Insured_Name", _quote.Insured_Name),
            new SqlParameter("@Mailing_Address1", _quote.Mailing_Address1),
            new SqlParameter("@Mailing_Address2", _quote.Mailing_Address2),
            new SqlParameter("@ZipCode", _quote.ZipCode),
            new SqlParameter("@City", _quote.City),
            new SqlParameter("@Insured_State_ID", _quote.Insured_State_ID),
            new SqlParameter("@Home_State_ID", _quote.Home_State_ID),
            new SqlParameter("@Is_new_business", _quote.Is_new_business),
            new SqlParameter("@Years_Without_Loss", _quote.Years_Without_Loss),
            new SqlParameter("@Effective_Date", _quote.Effective_Date),
            new SqlParameter("@Expiration_Date", _quote.Expiration_Date),
            new SqlParameter("@LOB_GeneralLiability", _quote.LOB_GeneralLiability),
            new SqlParameter("@LOB_VacantBuildingGL", _quote.LOB_VacantBuildingGL),
            new SqlParameter("@LOB_Owners", _quote.LOB_Owners),
            new SqlParameter("@LOB_SpecialEvent", _quote.LOB_SpecialEvent),
            new SqlParameter("@LOB_Property", _quote.LOB_Property),
            new SqlParameter("@LOB_VacantBuildingProperty", _quote.LOB_VacantBuildingProperty),
            new SqlParameter("@LOB_BuilderRisk", _quote.LOB_BuilderRisk),
            new SqlParameter("@LOB_Crime", _quote.LOB_Crime),
            new SqlParameter("@LOB_InlandMarine", _quote.LOB_InlandMarine),
            new SqlParameter("@LOB_ContractorsEquipment", _quote.LOB_ContractorsEquipment),
            new SqlParameter("@LOB_MotorTruck", _quote.LOB_MotorTruck),
            new SqlParameter("@LOB_Garage", _quote.LOB_Garage),
            new SqlParameter("@UserID", _quote.UserID),
            new SqlParameter("@QuoteNo", _quote.QuoteNo),
            new SqlParameter("@QuoteStatus", _quote.QuoteStatus),

            };

            return SqlDBHelper.ExecuteNonQuery("proc_QuoteDetails_Update", CommandType.StoredProcedure, parameters);
        }

        public QuoteDetails GetQuotesByNumber(string quoteNo)
        {
            QuoteDetails _quote = null;

            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@QuoteNo", quoteNo)
            };

            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("proc_QuoteDetails_LoadByQuoteNo", CommandType.StoredProcedure, parameters))
            {
                //check if any record exist or not
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];


                    _quote = new QuoteDetails();

                    _quote.ID = Convert.ToInt32(row["ID"]);
                    _quote.Mailing_Address1 = Convert.ToString(row["Mailing_Address1"]);
                    _quote.Mailing_Address2 = Convert.ToString(row["Mailing_Address2"]);
                    _quote.ZipCode = Convert.ToInt32(row["ZipCode"]);
                    _quote.City = Convert.ToString(row["City"]);

                    _quote.Is_new_business = Convert.ToBoolean(row["Is_new_business"]);
                    _quote.Years_Without_Loss = Convert.ToInt32(row["Years_Without_Loss"]);
                    _quote.Effective_Date = Convert.ToDateTime(row["Effective_Date"]);
                    _quote.Expiration_Date = Convert.ToDateTime(row["Expiration_Date"]);
                    _quote.LOB_GeneralLiability = Convert.ToBoolean(row["LOB_GeneralLiability"]);
                    _quote.LOB_VacantBuildingGL = Convert.ToBoolean(row["LOB_VacantBuildingGL"]);
                    _quote.LOB_Owners = Convert.ToBoolean(row["LOB_Owners"]);
                    _quote.LOB_SpecialEvent = Convert.ToBoolean(row["LOB_SpecialEvent"]);
                    _quote.LOB_Property = Convert.ToBoolean(row["LOB_Property"]);
                    _quote.LOB_VacantBuildingProperty = Convert.ToBoolean(row["LOB_VacantBuildingProperty"]);
                    _quote.LOB_BuilderRisk = Convert.ToBoolean(row["LOB_BuilderRisk"]);
                    _quote.LOB_Crime = Convert.ToBoolean(row["LOB_Crime"]);
                    _quote.LOB_InlandMarine = Convert.ToBoolean(row["LOB_InlandMarine"]);
                    _quote.LOB_ContractorsEquipment = Convert.ToBoolean(row["LOB_ContractorsEquipment"]);
                    _quote.LOB_MotorTruck = Convert.ToBoolean(row["LOB_MotorTruck"]);
                    _quote.UserID = Convert.ToInt32(row["UserID"]);
                    _quote.QuoteStatus = Convert.ToString(row["QuoteStatus"]);

                    _quote.QuoteNo = Convert.ToString(row["QuoteNo"]);

                    _quote.Insured_Name = Convert.ToString(row["Insured_Name"]);
                    _quote.Home_State_ID = Convert.ToInt32(row["Home_State_ID"]);
                    _quote.Insured_State_ID = Convert.ToInt32(row["Home_State_ID"]);
                }
            }

            return _quote;
        }
    }
}
