using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class QuoteDetailsHandler
    {
        QuoteDetailsDBAccess quoteDetails= null;
        public QuoteDetailsHandler()
        {
            quoteDetails = new QuoteDetailsDBAccess();
        }
        public bool AddNew(QuoteDetails objQuote)
        {
            return quoteDetails.AddNew(objQuote);
        }
        public bool Update(QuoteDetails objQuote)
        {
            return quoteDetails.Update(objQuote);
        }
        public QuoteDetails GetQuotesByNumber(string quoteNo)
        {
            return quoteDetails.GetQuotesByNumber(quoteNo);
        }
    }
}
