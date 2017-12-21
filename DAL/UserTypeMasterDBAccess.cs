using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace DAL
{
    public class UserTypeMasterDBAccess
    {
        public List<UserTypeMaster> GetUserTypeList()
        {
            List<UserTypeMaster> list = null;

            using (DataTable table = SqlDBHelper.ExecuteSelectCommand("proc_UserType_GetAll", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<UserTypeMaster>();

                    foreach (DataRow row in table.Rows)
                    {
                        UserTypeMaster _userType = new UserTypeMaster();

                        _userType.ID = Convert.ToInt32(row["ID"]);
                        _userType.UserType = row["UserType"].ToString();
                        _userType.TypeDesc= row["TypeDesc"].ToString();

                        list.Add(_userType);
                    }
                }
            }

            return list;
        }
    }
}
