using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class vwQuoteDetailsDBAccess
    {
        public List<vwQuoteDetails> GetvwQuoteDetailsList()
        {
            List<vwQuoteDetails> list = null;

            using (DataTable table = SqlDBHelper.ExecuteSelectCommand("proc_vwQuoteDetails_GetAll", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<vwQuoteDetails>();

                    foreach (DataRow row in table.Rows)
                    {
                        vwQuoteDetails _quote = new vwQuoteDetails();

                        _quote.ID = Convert.ToInt32(row["ID"]);
                        _quote.Mailing_Address1 = Convert.ToString(row["Mailing_Address1"]);
                        _quote.Mailing_Address2 = Convert.ToString(row["Mailing_Address2"]);
                        _quote.ZipCode = Convert.ToInt32(row["ZipCode"]);
                        _quote.City = Convert.ToString(row["City"]);
                        _quote.ZipCode = Convert.ToInt32(row["Insured_State_ID"]);
                        _quote.ZipCode = Convert.ToInt32(row["Home_State_ID"]);
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
                        _quote.HomeStateName = Convert.ToString(row["HomeStateName"]);
                        _quote.InsureStateName = Convert.ToString(row["InsureStateName"]);
                        _quote.QuoteNo = Convert.ToString(row["QuoteNo"]);
                        _quote.FullName = Convert.ToString(row["FullName"]);
                        _quote.FirstName = Convert.ToString(row["FirstName"]);
                        _quote.LastName = Convert.ToString(row["LastName"]);
                        _quote.Insured_Name= Convert.ToString(row["Insured_Name"]);
                        list.Add(_quote);



                    }
                }

                return list;
            }
        }
        public vwQuoteDetails GetQuotesByID(int ID)
        {
            vwQuoteDetails _quote = null;

            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@ID", ID)
            };

            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("proc_vwQuoteDetails_LoadByID", CommandType.StoredProcedure, parameters))
            {
                //check if any record exist or not
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];

                    
                    _quote = new vwQuoteDetails();

                    _quote.ID = Convert.ToInt32(row["ID"]);
                    _quote.Mailing_Address1 = Convert.ToString(row["Mailing_Address1"]);
                    _quote.Mailing_Address2 = Convert.ToString(row["Mailing_Address2"]);
                    _quote.ZipCode = Convert.ToInt32(row["ZipCode"]);
                    _quote.City = Convert.ToString(row["City"]);
                    _quote.Insured_State_ID = Convert.ToInt32(row["Insured_State_ID"]);
                    _quote.Home_State_ID = Convert.ToInt32(row["Home_State_ID"]);
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
                    _quote.HomeStateName = Convert.ToString(row["HomeStateName"]);
                    _quote.InsureStateName = Convert.ToString(row["InsureStateName"]);
                    _quote.QuoteNo = Convert.ToString(row["QuoteNo"]);
                    _quote.FullName = Convert.ToString(row["FullName"]);
                    _quote.FirstName = Convert.ToString(row["FirstName"]);
                    _quote.LastName = Convert.ToString(row["LastName"]);
                    _quote.Insured_Name = Convert.ToString(row["Insured_Name"]);
                    //_quote.Home_State_ID= Convert.ToInt32(row["Home_State_ID"]);
                    //_quote.Insured_State_ID= Convert.ToInt32(row["Insured_State_ID"]);
                }
            }

            return _quote;
        }
        //public static implicit operator vwQuoteDetailsDBAccess(QuoteDetailsDBAccess v)
        //{
        //    throw new NotImplementedException();
        //}
    }
}