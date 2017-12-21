using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class TerritoryMasterHandler
    {
        TerritoryMasterDBAccess territoryMasterDB = null;
        public TerritoryMasterHandler()
        {
            territoryMasterDB = new TerritoryMasterDBAccess();
        }
        public List<TerritoryMaster> GetTerritoryDetails()
        {
            return territoryMasterDB.GetTerritoryList();
        }
    }
}
