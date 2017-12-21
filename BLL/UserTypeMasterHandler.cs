using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class UserTypeMasterHandler
    {
        UserTypeMasterDBAccess userTypeMasterDB = null;
        public UserTypeMasterHandler()
        {
            userTypeMasterDB = new UserTypeMasterDBAccess();
        }
        public List<UserTypeMaster> GetUserTypeList()
        {
            return userTypeMasterDB.GetUserTypeList();
        }
    }
}
