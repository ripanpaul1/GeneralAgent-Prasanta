using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class vwClassDetailsHandler
    {
        vwClassDetailsDBAccess classDetails = null;
        public vwClassDetailsHandler()
        {
            classDetails = new vwClassDetailsDBAccess();
        }
        public List<vwClassDetails> GetClassMasterListByQuoteID(int quoteID)
        {
            return classDetails.GetClassMasterListByQuoteID(quoteID);
        }
        public vwClassDetails GetClassDetailsByQuoteID(int quoteID)
        {
            return classDetails.GetClassDetailsByQuoteID(quoteID);
        }
    }
}
