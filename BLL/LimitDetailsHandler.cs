using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class LimitDetailsHandler
    {
        LimitDetailsDBAccess limitDetails = null;
        public LimitDetailsHandler()
        {
            limitDetails = new LimitDetailsDBAccess();
        }
        public bool AddNew(LimitDetails objLimit)
        {
            return limitDetails.AddNew(objLimit);
        }
        public bool Update(LimitDetails objLimit)
        {
            return limitDetails.Update(objLimit);
        }
        public LimitDetails GetClassDetailsByQuoteID(int quoteID)
        {
            return limitDetails.GetLimitByQuoteID(quoteID);
        }
    }
}
