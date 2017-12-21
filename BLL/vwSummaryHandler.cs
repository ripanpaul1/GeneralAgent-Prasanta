using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class vwSummaryHandler
    {
        vwSummaryDBAccess summary = null;
        public vwSummaryHandler()
        {
            summary = new vwSummaryDBAccess();
        }
        public vwSummary GetSummaryByQuoteID(int ID)
        {
            return summary.GetSummaryByQuoteID(ID);
        }
    }
}
