using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class vwPropertyDBAccess
    {
        

        public vwProperty GetDetailsByQuoteNo(string quoteNo)
        {
            vwProperty _Property = null;

            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@QuoteNo", quoteNo)
            };

            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("proc_vwProperty_GetAllByQuoteID", CommandType.StoredProcedure, parameters))
            {
                //check if any record exist or not
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];


                    _Property = new vwProperty();

                    _Property.ID = Convert.ToInt32(row["ID"]);
                    _Property.QuoteID = Convert.ToInt32(row["QuoteID"]);
                    _Property.Address1 = Convert.ToString(row["Address1"]);
                    _Property.Address2 = Convert.ToString(row["Address2"]);
                    _Property.Zip = Convert.ToInt32(row["Zip"]);
                    _Property.City = Convert.ToString(row["City"]);
                    _Property.StateID = Convert.ToInt32(row["StateID"]);
                    _Property.ProtectionClass = Convert.ToInt32(row["ProtectionClass"]);
                    _Property.ClassID = Convert.ToInt32(row["ClassID"]);
                    _Property.StructureDescription = Convert.ToString(row["StructureDescription"]);
                    _Property.ConstructionType = Convert.ToString(row["ConstructionType"]);
                    _Property.ConstType_ApplySpriniderSafeguardP1 = Convert.ToBoolean(row["ConstType_ApplySpriniderSafeguardP1"]);
                    _Property.ConstType_ExcludeWindHall = Convert.ToBoolean(row["ConstType_ExcludeWindHall"]);
                    _Property.HigherWindHall = Convert.ToString(row["HigherWindHall"]);
                    _Property.YearBuilt = Convert.ToInt32(row["YearBuilt"]);
                    _Property.LastCompleteUpdateYear = Convert.ToInt32(row["LastCompleteUpdateYear"]);
                    _Property.Plumbing = Convert.ToString(row["Plumbing"]);
                    _Property.Rooting = Convert.ToString(row["Rooting"]);
                    _Property.Wiring = Convert.ToString(row["Wiring"]);
                    _Property.Coverage_Building = Convert.ToBoolean(row["Coverage_Building"]);
                    _Property.Coverage_BusinessPersonalProperty = Convert.ToBoolean(row["Coverage_BusinessPersonalProperty"]);
                    _Property.Coverage_BusinessIncome = Convert.ToBoolean(row["Coverage_BusinessIncome"]);
                    _Property.Coverage_PersonalPropertyofOthers = Convert.ToBoolean(row["Coverage_PersonalPropertyofOthers"]);
                    _Property.Coverage_Signs = Convert.ToBoolean(row["Coverage_Signs"]);
                    _Property.Coverage_PropertyInOpen = Convert.ToBoolean(row["Coverage_PropertyInOpen"]);
                    _Property.Class = Convert.ToString(row["Class"]);
                    _Property.Full_Description = Convert.ToString(row["Full_Description"]);
                    _Property.Insured_Name = Convert.ToString(row["Insured_Name"]);
                    _Property.QuoteNo = Convert.ToString(row["QuoteNo"]);
                    _Property.QuoteStatus = Convert.ToString(row["QuoteStatus"]);
                    _Property.StateName = Convert.ToString(row["StateName"]);
                }
            }

            return _Property;
        }
    }
}
