using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class vwClassDetails
    {
        public int ID { get; set; }
        public int Zip { get; set; }
        public int Quote_ID { get; set; }
        public int StateID { get; set; }
        public string Territory { get; set; }
        public int ClassID { get; set; }
        public int Exposure { get; set; }
        public bool Cov_Premises { get; set; }
        public bool Cov_Product { get; set; }
        public int Territory_ID { get; set; }
        public string TerritoryDetails { get; set; }
        public string TerritoryType { get; set; }
        public string Class { get; set; }
        public string Full_Description { get; set; }
        public string Insured_Name { get; set; }
        public string Mailing_Address1 { get; set; }
        public string Mailing_Address2 { get; set; }
        public int ZipCode { get; set; }
        public string City { get; set; }
        public int Insured_State_ID { get; set; }
        public int Home_State_ID { get; set; }
        public bool Is_new_business { get; set; }
        public int Years_Without_Loss { get; set; }
        public DateTime Effective_Date { get; set; }
        public DateTime Expiration_Date { get; set; }
        public int UserID { get; set; }
        public string QuoteStatus { get; set; }
        public string QuoteNo { get; set; }
    }
}
