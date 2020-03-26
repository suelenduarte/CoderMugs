using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CartItemList
{
    // Internal List of items
    private List<CartItem> cartItems;

    public CartItemList()
    {
        cartItems = new List<CartItem>();
    }

    // Numbers of items in the internal list
    public int Count
    {
        get
        {
            return cartItems.Count;
        }
    }

    // Locate items in the internal list by index
    public CartItem this[int index]
    {
        get
        {
            return cartItems[index];
        }
    }

    // Locate items in the internal list by productId
    public CartItem this[string id]
    {
        get
        {
            foreach (CartItem cartItem in cartItems)
                if (cartItem.product.productId == id) return cartItem;
            return null;
        }
    }

    // Get cart object from session state
    public static CartItemList GetCart()
    {
        CartItemList cart = (CartItemList)HttpContext.Current.Session["Cart"];
        if (cart == null)
            HttpContext.Current.Session["Cart"] = new CartItemList();
        return (CartItemList)HttpContext.Current.Session["Cart"];
    }

    // Add item to the list
    public void AddItem(Product product, int quantity)
    {
        CartItem cartItem = new CartItem(product, quantity);
        cartItems.Add(cartItem);
    }

    // Remove item with the given index
    public void RemoveItem(int index)
    {
        cartItems.RemoveAt(index);
    }

    // Remove all items from list 
    public void RemoveAll()
    {
        cartItems.Clear();
    }

}