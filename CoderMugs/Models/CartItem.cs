using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CartItem
{
    // Create an empty CartItem object
    public CartItem() { }

    // Create a CartItem object with values
    public CartItem(Product product, int quantity)
    {
        this.product = product;
        this.quantity = quantity;
    }

    public Product product { get; set; }
    public int quantity { get; set; }

    // Add quantity to the current quantity
    public void AddQuantity(int quantity)
    {
        this.quantity += quantity;
    }

    // Format item's name, quantity, and price in one line
    public string Display()
    {
        string displayString = string.Format("{0} ({1} at {2})",
            product.name,
            quantity.ToString(),
            product.unitPrice.ToString("c")
            );
        return displayString;

    }

}