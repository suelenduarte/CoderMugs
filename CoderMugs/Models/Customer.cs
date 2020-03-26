using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CoderMugs.Models
{
    public class Customer
    {
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string address { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string zip { get; set; }

        //Values for "Please let me know section"
        public bool newProducts { get; set; }
        public bool newRevisions { get; set; }
        public bool specialPromo { get; set; }
        public bool localEvents { get; set; }

        //Valus for "Please contact me via"
        public string contactVia { get; set; }
    }
}