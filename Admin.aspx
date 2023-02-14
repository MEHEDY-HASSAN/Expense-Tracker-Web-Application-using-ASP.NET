<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ExpenseTrackerWeb.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>

    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    body {
        background-size: cover;
          background-origin: border-box;
          background-image: url('pictures/wallet2.jpg');
        } 
  </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Expense Tracker</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">ALL Users</a></li>
            <li><a href="ALLExpenses.aspx">ALL Expenses</a></li>
        <%--
        <li><a href="ADDSubCategory.aspx">Sub Catagory</a></li>
        <li><a href="webpageAddExpenses.aspx">Add Expenses</a></li>--%>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          
        <li><a href="Admin.aspx"><span class="glyphicon glyphicon-user"></span> <asp:Label ID="lblUser" runat="server" Text="Admin"></asp:Label> </a></li>
        <li><a href="Logout.aspx"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

        <div class="row">
            <h3 class="text-center">All Users</h3>

            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" CssClass=" table table-responsive table-hover" runat="server">
                    </asp:GridView>
                </div>

            </div>
            <div class="col-md-1"></div>

        </div>

        </div>
    </form>
</body>
</html>
