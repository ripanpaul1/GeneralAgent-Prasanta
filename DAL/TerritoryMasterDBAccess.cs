using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace DAL
{
    public class TerritoryMasterDBAccess
    {
        public List<TerritoryMaster> GetTerritoryList()
        {
            List<TerritoryMaster> list = null;

            using (DataTable table = SqlDBHelper.ExecuteSelectCommand("proc_TerritoryMaster_GetAll", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<TerritoryMaster>();

                    foreach (DataRow row in table.Rows)
                    {
                        TerritoryMaster _territory = new TerritoryMaster();

                        _territory.ID = Convert.ToInt32(row["ID"]);
                        _territory.TerritoryDetails = row["TerritoryDetails"].ToString();
                        _territory.TerritoryType = row["TerritoryType"].ToString();
                        list.Add(_territory);
                    }
                }
            }

            return list;
        }
    }
}
