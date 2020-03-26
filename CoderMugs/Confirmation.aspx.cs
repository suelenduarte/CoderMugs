using CoderMugs.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoderMugs
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var customer = (Customer)Session["Customer"];

            string message = "Contact information\n" +
                " Email:" + customer.email + "\n" +
                " First Name:" + customer.firstName + "\n" +
                " Last Name:" + customer.lastName + "\n" +
                " Phone Number:" + customer.phone + "\n" +
                " Billing Address:" + "\n" +
                " Address:" + customer.address + "\n" +
                " City:" + customer.city + "\n" +
                " State:" + customer.state + "\n" +
                " Zip Code:" + customer.zip + "\n" +
                " Let me know about:" + "\n" +
                " New products:" + customer.newProducts + "\n" +
                " Special offers:" + customer.specialPromo + "\n" +
                " New editions:" + customer.newRevisions + "\n" +
                " Local events:" + customer.localEvents + "\n" +
                " Contact me via:" + customer.contactVia + "\n";
            txtData.Text = message;


        }
    }
}