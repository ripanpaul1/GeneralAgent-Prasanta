using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class PropertyHandler
    {
        PropertyDBAccess property = null;
        public PropertyHandler()
        {
            property = new PropertyDBAccess();
        }
        public bool AddNew(Property objProperty)
        {
            return property.AddNew(objProperty);
        }
        public bool Update(Property objProperty)
        {
            return property.Update(objProperty);
        }
    }
}
