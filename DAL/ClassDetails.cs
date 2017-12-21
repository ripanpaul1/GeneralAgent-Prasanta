using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ClassDetails
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
    }
}
