<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="CoderMugs.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mugs4Coders</title>
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
            <form id="form" runat="server" class="form-horizontal">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="form-group">

                            <label class="clo-sm-5">Please select a product:</label>
                        </div>
                        <div class="col-sm-6">
                            <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="productId" DataValueField="productId">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productId], [name], [shortDescription], [longDescription], [imageFile], [unitPrice] FROM [Products] ORDER BY [name]"></asp:SqlDataSource>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label ID="lblShortDescription" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label ID="lblLongDescription" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label ID="lblUnitPrice" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <asp:Image ID="imageProduct" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label class="col-sm-1">Quantity:</label>
                            <div class="col-sm-3">
                                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="col-sm-8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" CssClass="text-danger" Display="Dynamic" ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQuantity" CssClass="text-danger" Display="Dynamic" ErrorMessage="Quantity must range from 1 to 500." MaximumValue="500" MinimumValue="1"></asp:RangeValidator>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <asp:Button ID="btnAdd" runat="server" CssClass="btn" Text="Add to Cart" OnClick="btnAdd_Click" />
                                    <asp:Button ID="btnCart" runat="server" CssClass="btn" PostBackUrl="~/Cart.aspx" Text="Go to Cart" CausesValidation="False" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </main>


    </div>
</body>
</html>






















