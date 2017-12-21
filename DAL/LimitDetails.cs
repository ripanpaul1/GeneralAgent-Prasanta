using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class LimitDetails
    {
        public int ID { get; set; }
        public int Quote_ID { get; set; }
        public string EachOccurence { get; set; }
        public string GeneralAggregate { get; set; }
        public string PremisesDamage { get; set; }
        public string MedicalExpense { get; set; }
        public string ProductCompleted { get; set; }
        public string DeductablePerClaim { get; set; }
        public string PersonalInjury { get; set; }
    }
}
