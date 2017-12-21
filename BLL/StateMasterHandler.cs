using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class StateMasterHandler
    {
        StateMasterDBAccess stateMasterDB = null;
        public StateMasterHandler()
        {
            stateMasterDB = new StateMasterDBAccess();
        }
        public List<StateMaster> GetStateListDetails()
        {
            return stateMasterDB.GetStateList();
        }
    }
}
