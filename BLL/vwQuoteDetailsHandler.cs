using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class vwQuoteDetailsHandler
    {
        vwQuoteDetailsDBAccess quoteDetails = null;
        public vwQuoteDetailsHandler()
        {
            quoteDetails = new vwQuoteDetailsDBAccess();
        }
        public List<vwQuoteDetails> GetQuoteDetails()
        {
            return quoteDetails.GetvwQuoteDetailsList();
        }
        public vwQuoteDetails GetQuotesByID(int ID)
        {
            return quoteDetails.GetQuotesByID(ID);
        }
    }
}
