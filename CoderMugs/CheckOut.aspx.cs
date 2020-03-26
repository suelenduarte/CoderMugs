using CoderMugs.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoderMugs
{
    public partial class CheckOut : System.Web.UI.Page
    {
        private Customer customer;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                customer = (Customer)Session["Customer"];
                this.LoadCustomerData();

            }

        }

        private void LoadCustomerData()
        {
            if (customer != null)
            {
                txtFirstName.Text = customer.firstName;
                txtLastName.Text = customer.lastName;
                txtEmail.Text = customer.email;
                txtPhone.Text = customer.phone;
                txtAddress.Text = customer.address;
                txtCity.Text = customer.city;
                txtZip.Text = customer.zip;
                ddlState.SelectedValue = customer.state;
                rblContact.SelectedValue = customer.contactVia;
                cblAboutList.Items[0].Selected = customer.newProducts;
                cblAboutList.Items[1].Selected = customer.specialPromo;
                cblAboutList.Items[2].Selected = customer.newRevisions;
                cblAboutList.Items[3].Selected = customer.localEvents;
            }
          
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                this.GetCustomerData();
                Response.Redirect("~/Confirmation.aspx");
            }
        }

        private void GetCustomerData()
        {
            if (customer == null) customer = new Customer();
            {
                customer.firstName = txtFirstName.Text;
                customer.lastName = txtLastName.Text;
                customer.email = txtEmail.Text;
                customer.phone = txtPhone.Text;
                customer.address = txtAddress.Text;
                customer.city = txtCity.Text;
                customer.zip = txtZip.Text;
                customer.state = ddlState.SelectedValue;
                customer.contactVia = rblContact.SelectedValue;
                customer.newProducts = cblAboutList.Items[0].Selected;
                customer.specialPromo = cblAboutList.Items[1].Selected;
                customer.newRevisions = cblAboutList.Items[2].Selected;
                customer.localEvents = cblAboutList.Items[3].Selected;
                Session["Customer"] = customer;

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session.Remove("Cart");
            Session.Remove("Customer");
            Response.Redirect("~/Order.aspx");
        }
    }
}