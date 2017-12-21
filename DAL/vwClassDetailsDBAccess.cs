using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace DAL
{
    public class vwClassDetailsDBAccess
    {
        public List<vwClassDetails> GetClassMasterListByQuoteID(int quoteID)
        {
            List<vwClassDetails> list = null;
            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@QuoteID", quoteID)
            };

            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("proc_vwClassDetails_GetAllByQuoteID", CommandType.StoredProcedure, parameters))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<vwClassDetails>();

                    foreach (DataRow row in table.Rows)
                    {
                        vwClassDetails _clsDtls = new vwClassDetails();

                        _clsDtls.ID = Convert.ToInt32(row["ID"]);
                        _clsDtls.Class = row["Class"].ToString();
                        _clsDtls.Full_Description = row["Full_Description"].ToString();
                        _clsDtls.Zip = Convert.ToInt32(row["Zip"]);
                        _clsDtls.Quote_ID = Convert.ToInt32(row["Quote_ID"]);
                        _clsDtls.StateID = Convert.ToInt32(row["StateID"]);
                        _clsDtls.Territory = row["Territory"].ToString();
                        _clsDtls.ClassID = Convert.ToInt32(row["ClassID"]);
                        _clsDtls.Exposure = Convert.ToInt32(row["Exposure"]);
                        _clsDtls.Cov_Premises = Convert.ToBoolean(row["Cov_Premises"]);
                        _clsDtls.Cov_Product = Convert.ToBoolean(row["Cov_Product"]);
                        _clsDtls.Territory_ID = Convert.ToInt32(row["Territory_ID"]);
                        _clsDtls.TerritoryDetails = row["TerritoryDetails"].ToString();
                        _clsDtls.TerritoryType = row["TerritoryType"].ToString();
                        _clsDtls.Insured_Name = row["Insured_Name"].ToString();
                        _clsDtls.Mailing_Address1 = row["Mailing_Address1"].ToString();
                        _clsDtls.Mailing_Address2 = row["Mailing_Address2"].ToString();
                        _clsDtls.ZipCode = Convert.ToInt32(row["ZipCode"]);
                        _clsDtls.City = row["City"].ToString();
                        _clsDtls.Insured_State_ID = Convert.ToInt32(row["Insured_State_ID"]);
                        _clsDtls.Home_State_ID = Convert.ToInt32(row["Home_State_ID"]);
                        _clsDtls.Is_new_business = Convert.ToBoolean(row["Is_new_business"]);
                        _clsDtls.Years_Without_Loss = Convert.ToInt32(row["Years_Without_Loss"]);
                        _clsDtls.Effective_Date = Convert.ToDateTime(row["Effective_Date"]);
                        _clsDtls.Expiration_Date = Convert.ToDateTime(row["Expiration_Date"]);
                        _clsDtls.UserID = Convert.ToInt32(row["UserID"]);
                        _clsDtls.QuoteStatus = row["QuoteStatus"].ToString();
                        _clsDtls.QuoteNo = row["QuoteNo"].ToString();

                        list.Add(_clsDtls);
                    }
                }
            }

            return list;
        }

        public vwClassDetails GetClassDetailsByQuoteID(int quoteID)
        {
            vwClassDetails _clsDtls = null;

            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@QuoteID", quoteID)
            };

            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("proc_vwClassDetails_GetAllByQuoteID", CommandType.StoredProcedure, parameters))
            {
                //check if any record exist or not
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];


                    _clsDtls = new vwClassDetails();

                    _clsDtls.ID = Convert.ToInt32(row["ID"]);
                    _clsDtls.Class = row["Class"].ToString();
                    _clsDtls.Full_Description = row["Full_Description"].ToString();
                    _clsDtls.Zip = Convert.ToInt32(row["Zip"]);
                    _clsDtls.Quote_ID = Convert.ToInt32(row["Quote_ID"]);
                    _clsDtls.StateID = Convert.ToInt32(row["StateID"]);
                    _clsDtls.Territory = row["Territory"].ToString();
                    _clsDtls.ClassID = Convert.ToInt32(row["ClassID"]);
                    _clsDtls.Exposure = Convert.ToInt32(row["Exposure"]);
                    _clsDtls.Cov_Premises = Convert.ToBoolean(row["Cov_Premises"]);
                    _clsDtls.Cov_Product = Convert.ToBoolean(row["Cov_Product"]);
                    _clsDtls.Territory_ID = Convert.ToInt32(row["Territory_ID"]);
                    _clsDtls.TerritoryDetails = row["TerritoryDetails"].ToString();
                    _clsDtls.TerritoryType = row["TerritoryType"].ToString();
                    _clsDtls.Insured_Name = row["Insured_Name"].ToString();
                    _clsDtls.Mailing_Address1 = row["Mailing_Address1"].ToString();
                    _clsDtls.Mailing_Address2 = row["Mailing_Address2"].ToString();
                    _clsDtls.ZipCode = Convert.ToInt32(row["ZipCode"]);
                    _clsDtls.City = row["City"].ToString();
                    _clsDtls.Insured_State_ID = Convert.ToInt32(row["Insured_State_ID"]);
                    _clsDtls.Home_State_ID = Convert.ToInt32(row["Home_State_ID"]);
                    _clsDtls.Is_new_business = Convert.ToBoolean(row["Is_new_business"]);
                    _clsDtls.Years_Without_Loss = Convert.ToInt32(row["Years_Without_Loss"]);
                    _clsDtls.Effective_Date = Convert.ToDateTime(row["Effective_Date"]);
                    _clsDtls.Expiration_Date = Convert.ToDateTime(row["Expiration_Date"]);
                    _clsDtls.UserID = Convert.ToInt32(row["UserID"]);
                    _clsDtls.QuoteStatus = row["QuoteStatus"].ToString();
                    _clsDtls.QuoteNo = row["QuoteNo"].ToString();
                }
            }

            return _clsDtls;
        }
    }
}
