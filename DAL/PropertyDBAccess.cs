using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace DAL
{
    public class PropertyDBAccess
    {
        public bool AddNew(Property _property)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
            new SqlParameter("@QuoteID", _property.QuoteID),
            new SqlParameter("@Address1", _property.Address1),
            new SqlParameter("@Address2", _property.Address2),
            new SqlParameter("@Zip", _property.Zip),
            new SqlParameter("@City", _property.City),
            new SqlParameter("@StateID", _property.StateID),
            new SqlParameter("@ProtectionClass", _property.ProtectionClass),
            new SqlParameter("@ClassID", _property.ClassID),
           new SqlParameter("@StructureDescription", _property.StructureDescription),
           new SqlParameter("@ConstructionType", _property.ConstructionType),
           new SqlParameter("@ConstType_ApplySpriniderSafeguardP1", _property.ConstType_ApplySpriniderSafeguardP1),
           new SqlParameter("@ConstType_ExcludeWindHall", _property.ConstType_ExcludeWindHall),
           new SqlParameter("@HigherWindHall", _property.HigherWindHall),
           new SqlParameter("@YearBuilt", _property.YearBuilt),
           new SqlParameter("@LastCompleteUpdateYear", _property.LastCompleteUpdateYear),
           new SqlParameter("@Plumbing", _property.Plumbing),
           new SqlParameter("@Rooting", _property.Rooting),
           new SqlParameter("@Wiring", _property.Wiring),
           new SqlParameter("@Coverage_Building", _property.Coverage_Building),
           new SqlParameter("@Coverage_BusinessPersonalProperty", _property.Coverage_BusinessPersonalProperty),
           new SqlParameter("@Coverage_BusinessIncome", _property.Coverage_BusinessIncome),
           new SqlParameter("@Coverage_PersonalPropertyofOthers", _property.Coverage_PersonalPropertyofOthers),
           new SqlParameter("@Coverage_Signs", _property.Coverage_Signs),
           new SqlParameter("@Coverage_PropertyInOpen", _property.Coverage_PropertyInOpen),



            };

            return SqlDBHelper.ExecuteNonQuery("proc_Property_AddNew", CommandType.StoredProcedure, parameters);
        }

        public bool Update(Property _property)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
                 new SqlParameter("@ID", _property.ID),
            new SqlParameter("@QuoteID", _property.QuoteID),
            new SqlParameter("@Address1", _property.Address1),
            new SqlParameter("@Address2", _property.Address2),
            new SqlParameter("@Zip", _property.Zip),
            new SqlParameter("@City", _property.City),
            new SqlParameter("@StateID", _property.StateID),
            new SqlParameter("@ProtectionClass", _property.ProtectionClass),
            new SqlParameter("@ClassID", _property.ClassID),
           new SqlParameter("@StructureDescription", _property.StructureDescription),
           new SqlParameter("@ConstructionType", _property.ConstructionType),
           new SqlParameter("@ConstType_ApplySpriniderSafeguardP1", _property.ConstType_ApplySpriniderSafeguardP1),
           new SqlParameter("@ConstType_ExcludeWindHall", _property.ConstType_ExcludeWindHall),
           new SqlParameter("@HigherWindHall", _property.HigherWindHall),
           new SqlParameter("@YearBuilt", _property.YearBuilt),
           new SqlParameter("@LastCompleteUpdateYear", _property.LastCompleteUpdateYear),
           new SqlParameter("@Plumbing", _property.Plumbing),
           new SqlParameter("@Rooting", _property.Rooting),
           new SqlParameter("@Wiring", _property.Wiring),
           new SqlParameter("@Coverage_Building", _property.Coverage_Building),
           new SqlParameter("@Coverage_BusinessPersonalProperty", _property.Coverage_BusinessPersonalProperty),
           new SqlParameter("@Coverage_BusinessIncome", _property.Coverage_BusinessIncome),
           new SqlParameter("@Coverage_PersonalPropertyofOthers", _property.Coverage_PersonalPropertyofOthers),
           new SqlParameter("@Coverage_Signs", _property.Coverage_Signs),
           new SqlParameter("@Coverage_PropertyInOpen", _property.Coverage_PropertyInOpen),



            };

            return SqlDBHelper.ExecuteNonQuery("proc_Property_Update", CommandType.StoredProcedure, parameters);
        }
    }
}
