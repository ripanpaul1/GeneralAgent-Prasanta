using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class ClassDetailsHandler
    {
        ClassDetailsDBAccess classDetails = null;
        public ClassDetailsHandler()
        {
            classDetails = new ClassDetailsDBAccess();
        }
        public bool AddNew(ClassDetails objClass)
        {
            return classDetails.AddNew(objClass);
        }
        public bool Update(ClassDetails objClass)
        {
            return classDetails.Update(objClass);
        }
    }
}
