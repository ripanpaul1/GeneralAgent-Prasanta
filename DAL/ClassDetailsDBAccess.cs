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
    public class ClassDetailsDBAccess
    {
        public bool AddNew(ClassDetails _class)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@Zip", _class.Zip),
            new SqlParameter("@Quote_ID", _class.Quote_ID),
            new SqlParameter("@StateID", _class.StateID),
            new SqlParameter("@Territory", _class.Territory),
            new SqlParameter("@ClassID", _class.ClassID),
            new SqlParameter("@Exposure", _class.Exposure),
            new SqlParameter("@Cov_Product", _class.Cov_Product),
            new SqlParameter("@Cov_Premises", _class.Cov_Premises),
           new SqlParameter("@Territory_ID", _class.Territory_ID),


            };

            return SqlDBHelper.ExecuteNonQuery("proc_ClassDetails_AddNew", CommandType.StoredProcedure, parameters);
        }

        public bool Update(ClassDetails _class)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@ID", _class.ID),
           new SqlParameter("@Zip", _class.Zip),
            new SqlParameter("@Quote_ID", _class.Quote_ID),
            new SqlParameter("@StateID", _class.StateID),
            new SqlParameter("@Territory", _class.Territory),
            new SqlParameter("@ClassID", _class.ClassID),
            new SqlParameter("@Exposure", _class.Exposure),
            new SqlParameter("@Cov_Product", _class.Cov_Product),
            new SqlParameter("@Cov_Premises", _class.Cov_Premises),
           new SqlParameter("@Territory_ID", _class.Territory_ID),

            };

            return SqlDBHelper.ExecuteNonQuery("proc_ClassDetails_Update", CommandType.StoredProcedure, parameters);
        }
    }
}
