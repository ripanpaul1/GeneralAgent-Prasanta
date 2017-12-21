using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class vwProperty
    {
        public int ID { get; set; }
        public int QuoteID { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public int Zip { get; set; }
        public string City { get; set; }
        public int StateID { get; set; }
        public int ProtectionClass { get; set; }
        public int ClassID { get; set; }
        public string StructureDescription { get; set; }
        public string ConstructionType { get; set; }
        public bool ConstType_ApplySpriniderSafeguardP1 { get; set; }
        public bool ConstType_ExcludeWindHall { get; set; }
        public string HigherWindHall { get; set; }
        public int YearBuilt { get; set; }
        public int LastCompleteUpdateYear { get; set; }
        public string Plumbing { get; set; }
        public string Rooting { get; set; }
        public string Wiring { get; set; }
        public bool Coverage_Building { get; set; }
        public bool Coverage_BusinessPersonalProperty { get; set; }
        public bool Coverage_BusinessIncome { get; set; }
        public bool Coverage_PersonalPropertyofOthers { get; set; }
        public bool Coverage_Signs { get; set; }
        public bool Coverage_PropertyInOpen { get; set; }
        public string Class { get; set; }
        public string Full_Description { get; set; }
        public string Insured_Name { get; set; }
        public string QuoteNo { get; set; }
        public string QuoteStatus { get; set; }
        public string StateName { get; set; }
    }
}
