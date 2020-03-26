<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="CoderMugs.CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CheckOut page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>


</head>
<body class="container">

    <header class="jumbotron">
        <h1>Coders Mugs</h1>
    </header>
    <main>
        <form id="form1" runat="server" class="form-horizontal" defaultfocus="txtEmail" defaultbutton="btnCheckOut">
            <div class="form-group">
                <label class="control-label col-sm-3">Email Address:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rqvEmail" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" Display="Dynamic" ErrorMessage="Email is required."></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Email Re-entry:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtEmailRetry" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvEmailRetry" runat="server" ControlToValidate="txtEmailRetry" CssClass="text-danger" Display="Dynamic" ErrorMessage="Email is required."></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">First Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" CssClass="text-danger" Display="Dynamic" ErrorMessage="First Name is required."></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Last Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" CssClass="text-danger" Display="Dynamic" ErrorMessage="Last Name is required."></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Phone Number:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server"
                        ErrorMessage="Phone number is required." CssClass="text-danger"
                        Display="Dynamic" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                </div>
            </div>

            <h3>Billing Address</h3>
            <div class="form-group">
                <label class="control-label col-sm-3">Address:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server"
                        ErrorMessage="Street Address is required." CssClass="text-danger"
                        Display="Dynamic" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">City:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" CssClass="text-danger" Display="Dynamic" ErrorMessage="City is required."></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">State:</label>
                <div class="col-sm-5">
                    <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource1" DataTextField="stateCode" DataValueField="stateCode">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [States] ORDER BY [stateCode]"></asp:SqlDataSource>


                </div>

                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="ddlState" CssClass="text-danger" Display="Dynamic" ErrorMessage="State is required."></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Zip code:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" MaxLength="5"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvZip" runat="server"
                        ErrorMessage="Zip is required." CssClass="text-danger"
                        Display="Dynamic" ControlToValidate="txtZip"></asp:RequiredFieldValidator>
                </div>
            </div>

            <h3>Optional Data</h3>
            <div class="form-group">
                <div class="col-sm-12">
                    <label>Please let me know about:</label>
                    <asp:CheckBoxList ID="cblAboutList" runat="server" RepeatColumns="2">
                        <asp:ListItem Value="New" Selected="True">New Products</asp:ListItem>
                        <asp:ListItem Value="Special">Special Offers</asp:ListItem>
                        <asp:ListItem Value="Revisions">New Editions</asp:ListItem>
                        <asp:ListItem Value="Local">Local Events</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>


            <div class="form-group">
                <div class="col-sm-12">
                    <label>Please contact me via:</label>
                    <asp:RadioButtonList ID="rblContact" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="true">Twitter</asp:ListItem>
                        <asp:ListItem>Facebook</asp:ListItem>
                        <asp:ListItem Value="Text">Text message</asp:ListItem>
                        <asp:ListItem>Email</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-12">
                    <asp:Button ID="btnCheckOut" runat="server" Text="Check out" CssClass="btn" OnClick="btnCheckOut_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel Order" CssClass="btn" CausesValidation="False" OnClick="btnCancel_Click" />
                    <asp:LinkButton ID="lbtnContinue" runat="server" CssClass="btn" CausesValidation="False" PostBackUrl="~/Order.aspx">Contine shopping</asp:LinkButton>
                </div>
            </div>
        </form>
    </main>



</body>
</html>
