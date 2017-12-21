using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class ClassMasterHandler
    {
        ClassMasterDBAccess classMasterDB = null;
        
        public ClassMasterHandler()
        {
            classMasterDB = new ClassMasterDBAccess();
        }
        public List<ClassMaster> GetClassListDetails(string strClass)
        {
            return classMasterDB.GetClassMasterListByClassName(strClass);
        }
    }
}
