using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class QuoteDetails
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

    }
}
