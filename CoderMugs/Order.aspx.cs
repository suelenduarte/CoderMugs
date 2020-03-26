using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CoderMugs
{
    public partial class Order : System.Web.UI.Page
    {
        private Product selectedProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Bind drop-down list when first load
            if (!IsPostBack) ddlProducts.DataBind();

            //Get and show product
            selectedProduct = this.GetSelectedProduct();
            lblName.Text = selectedProduct.name;
            lblShortDescription.Text = selectedProduct.shortDescription;
            lblLongDescription.Text = selectedProduct.longDescription;
            lblUnitPrice.Text = selectedProduct.unitPrice.ToString("c") + " each";
            imageProduct.ImageUrl = "Images/Products/" + selectedProduct.imageFile;

        }

        private Product GetSelectedProduct()
        {
            //Get row from SqlDataSource based on value in drop-down list
            DataView productsTable = (DataView) SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter = "productId = '" + ddlProducts.SelectedValue + "'";
            DataRowView row = productsTable[0];

            //Create a new product object and load with data from row
            Product product = new Product();
            product.productId = row["productId"].ToString();
            product.name = row["name"].ToString();
            product.shortDescription = row["shortDescription"].ToString();
            product.longDescription = row["longDescription"].ToString();
            product.unitPrice = (decimal)row["unitPrice"];
            product.imageFile = row["imageFile"].ToString();

            return product;

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                //Get cart from session and selected item from cart
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.productId];

                //If item isn't in cart, add it
                //Otherwise, increase its quantity
                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct, Convert.ToInt32(txtQuantity.Text));

                } else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));

                }
                Response.Redirect("Cart.aspx");
            }

        }
    }
}