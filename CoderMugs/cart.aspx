<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="CoderMugs.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</head>
<body>
    <div class="container">
        <header class="jumbotron">
            <h1>Coders Mugs</h1>
        </header>
        <main>
            <form id="form1" runat="server" class="form-horizontal">
                <div class="row">
                    <div class="col-sm-12">
                        <h1>Your shopping cart</h1>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Button ID="btnRemove" runat="server"
                                    Text="Remove Item" OnClick="btnRemove_Click" CssClass="btn" />
                            </div>
                            <div class="col-sm-12">
                                <asp:Button ID="btnEmpty" runat="server"
                                    Text="Empty Cart" OnClick="btnEmpty_Click" CssClass="btn" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <asp:Label ID="lblMessage" runat="server" EnableViewState="False"
                                CssClass="text-info col-sm-12"></asp:Label>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:Button ID="btnContinue" runat="server"
                                    PostBackUrl="~/Order.aspx" Text="Continue Shopping" CssClass="btn" />
                                <asp:Button ID="btnCheckOut" runat="server" Text="Check Out"
                                    OnClick="btnCheckOut_Click" CssClass="btn" />
                            </div>
                        </div>
                    </div>
                </div>

            </form>
        </main>
    </div>

</body>
</html>
