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
    public  class ClassMasterDBAccess
    {
        public List<ClassMaster> GetClassMasterListByClassName(string className)
        {
            List<ClassMaster> list = null;
            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@ClassName", className)
            };

            using (DataTable table = SqlDBHelper.ExecuteParamerizedSelectCommand("proc_ClassMaster_GetAllByClassName", CommandType.StoredProcedure, parameters))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<ClassMaster>();

                    foreach (DataRow row in table.Rows)
                    {
                        ClassMaster _clsMstr = new ClassMaster();

                        _clsMstr.ID = Convert.ToInt32(row["ID"]);
                        _clsMstr.Class = row["Class"].ToString();
                        _clsMstr.Full_Description = row["Full_Description"].ToString();
                        
                        list.Add(_clsMstr);
                    }
                }
            }

            return list;
        }
    }
}
