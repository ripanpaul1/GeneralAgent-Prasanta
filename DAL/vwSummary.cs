using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class vwSummary
    {
        public int ID { get; set; }
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
        public bool LOB_GeneralLiability { get; set; }
        public bool LOB_VacantBuildingGL { get; set; }
        public bool LOB_Owners { get; set; }
        public bool LOB_SpecialEvent { get; set; }
        public bool LOB_Property { get; set; }
        public bool LOB_VacantBuildingProperty { get; set; }
        public bool LOB_BuilderRisk { get; set; }
        public bool LOB_Crime { get; set; }
        public bool LOB_InlandMarine { get; set; }
        public bool LOB_ContractorsEquipment { get; set; }
        public bool LOB_MotorTruck { get; set; }
        public bool LOB_Garage { get; set; }
        public int UserID { get; set; }
        public string QuoteStatus { get; set; }
        public string QuoteNo { get; set; }
        public string HomeStateName { get; set; }
        public string InsureStateName { get; set; }
        public string FullName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int ClassID { get; set; }
        public int Exposure { get; set; }
        public bool Cov_Premises { get; set; }
        public bool Cov_Product { get; set; }
        public int Territory_ID { get; set; }
        public string Insured_State_Name { get; set; }
        public string Home_State_Name { get; set; }
        public string EachOccurence { get; set; }
        public string GeneralAggregate { get; set; }
        public string PremisesDamage { get; set; }
        public string MedicalExpense { get; set; }
        public string ProductCompleted { get; set; }
        public string DeductablePerClaim { get; set; }
        public string PersonalInjury { get; set; }
        public int ProtectionClass { get; set; }
        public int PropertyClassID { get; set; }
        public string StructureDescription { get; set; }
        public string PropertyClassName { get; set; }        
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
        public string TerritoryDetails { get; set; }
        public string Class { get; set; }
    }
}
