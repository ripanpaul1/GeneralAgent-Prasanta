using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace DAL
{
    public class StateMasterDBAccess
    {
        public List<StateMaster> GetStateList()
        {
            List<StateMaster> list = null;

            using (DataTable table = SqlDBHelper.ExecuteSelectCommand("proc_StateMaster_GetAll", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<StateMaster>();

                    foreach (DataRow row in table.Rows)
                    {
                        StateMaster _state = new StateMaster();

                        _state.ID = Convert.ToInt32(row["ID"]);
                        _state.StateName = row["StateName"].ToString();
                        
                        list.Add(_state);
                    }
                }
            }

            return list;
        }
    }
}
