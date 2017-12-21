using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class vwPropertyHandler
    {
        vwPropertyDBAccess property = null;
        public vwPropertyHandler()
        {
            property = new vwPropertyDBAccess();
        }
        public vwProperty GetDetailsByQuoteNo(string quoteNo)
        {
            return property.GetDetailsByQuoteNo(quoteNo);
        }
    }
}
