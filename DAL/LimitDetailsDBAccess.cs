using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class LimitDetailsDBAccess
    {
        public bool AddNew(LimitDetails _limit)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
            

           new SqlParameter("@Quote_ID",_limit.Quote_ID),
           new SqlParameter("@EachOccurence",_limit.EachOccurence),
           new SqlParameter("@GeneralAggregate",_limit.GeneralAggregate),
           new SqlParameter("@PremisesDamage",_limit.PremisesDamage),
           new SqlParameter("@MedicalExpense",_limit.MedicalExpense),
           new SqlParameter("@ProductCompleted",_limit.ProductCompleted),
           new SqlParameter("@DeductablePerClaim",_limit.DeductablePerClaim),
           new SqlParameter("@PersonalInjury",_limit.PersonalInjury),

            };

            return SqlDBHelper.ExecuteNonQuery("proc_LimitDetails_AddNew", CommandType.StoredProcedure, parameters);
        }

        public bool Update(LimitDetails _limit)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {

                new SqlParameter("@ID",_limit.ID),
           new SqlParameter("@Quote_ID",_limit.Quote_ID),
           new SqlParameter("@EachOccurence",_limit.EachOccurence),
           new SqlParameter("@GeneralAggregate",_limit.GeneralAggregate),
           new SqlParameter("@PremisesDamage",_limit.PremisesDamage),
           new SqlParameter("@MedicalExpense",_limit.MedicalExpense),
           new SqlParameter("@ProductCompleted",_limit.ProductCompleted),
           new SqlParameter("@DeductablePerClaim",_limit.DeductablePerClaim),
           new SqlParameter("@PersonalInjury",_limit.PersonalInjury),

            };

            return SqlDBHelper.ExecuteNonQuery("proc_LimitDetails_Update", CommandType.StoredProcedure, parameters);
        }

        public LimitDetails GetLimitByQuoteID(int quoteID)
        {
            LimitDetails _limit = null;

            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@QuoteID", quoteID)
            };

            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("proc_LimitDetails_LoadByQuoteID", CommandType.StoredProcedure, parameters))
            {
                //check if any record exist or not
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];


                    _limit = new LimitDetails();

                    _limit.ID = Convert.ToInt32(row["ID"]);
                    _limit.Quote_ID = Convert.ToInt32(row["Quote_ID"]);
                    _limit.EachOccurence = Convert.ToString(row["EachOccurence"]);
                    _limit.GeneralAggregate = Convert.ToString(row["GeneralAggregate"]);
                    _limit.PremisesDamage = Convert.ToString(row["PremisesDamage"]);

                    _limit.PremisesDamage = Convert.ToString(row["PremisesDamage"]);
                    _limit.MedicalExpense = Convert.ToString(row["MedicalExpense"]);
                    _limit.ProductCompleted = Convert.ToString(row["ProductCompleted"]);
                    _limit.DeductablePerClaim = Convert.ToString(row["DeductablePerClaim"]);
                    
                    _limit.PersonalInjury = Convert.ToString(row["PersonalInjury"]);
                   
                }
            }

            return _limit;
        }
    }
}
