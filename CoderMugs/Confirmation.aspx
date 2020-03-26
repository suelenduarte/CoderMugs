<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="CoderMugs.Confirmation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation page</title>
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
            <form id="form1" runat="server">
                <div class="form-group">
                    <asp:TextBox ID="txtData" runat="server" Columns="50" CssClass="form-control" Rows="25" TextMode="MultiLine"></asp:TextBox>

                </div>

                <div class="form-group">
                    <asp:Button ID="btnContinue" runat="server" CssClass="btn btn-default" PostBackUrl="~/Order.aspx" Text="Continue shopping" />

                </div>
            </form>
        </main>

    </div>
</body>

</html>
