<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ExpenseTrackerWeb.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>

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
              background-origin: border-box;
          background-image: url('pictures/wallet.jpg');
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
                            <li class="active"><a href="Home.aspx">Home</a></li>
        <li><a href="Login.aspx">Login</a></li>
                            <!--
        <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li>
        -->
                        </ul>
                        <!--
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login </a></li>
      </ul>
          -->
                    </div>
                </div>
            </nav>

            <div class="container-fluid text-center">
                <div class="row content">

                    <div class="col-sm-2 sidenav">
                        <!-- 
      <p><a href="#">Link</a></p> 
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      -->
                    </div>

                    <div class="col-sm-8 text-left">
                        <br />
                        <div class="panel panel-primary">
                            <!-- Panel -->
                            <div class="panel-heading">Register</div>
                            <div class="panel-body">
                                <div class="row">
                                   <div class="col-md-4"> 
                                        <div class="form-group">
                                            <label>
                                                Username:
                                            </label>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    
                                       </div> 

                                </div>
                                <div class="row">

                                        <div class="col-md-4">

                                        <div class="form-group">
                                            <label>
                                                Password:
                                            </label>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

                                        </div>
                                     </div> 

                                </div>

                                <div class="row">

                                    <div class="col-md-4"> 

                                        <div class="form-group">
                                            <label>
                                                Email:
                                            </label>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>

                                        </div>
                                     </div> 

                                </div>

                                <div class="row">

                                    <div class="col-md-4">
                                        <div class="form-group">

                                            <asp:Button ID="Button1" CssClass="btn btn-info btn-md" runat="server" Text="Register" OnClick="Button1_Click" />

                                        </div>
                                    </div>


                                </div>


                            </div>
                            <div class="panel-footer">
                                <!-- Password  -->
                            </div>
                        </div>
                        <!--
        <h1>Welcome</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <h3>Test</h3>
      <p>Lorem ipsum...</p>
        -->
                    </div>
                    <!--div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div-->
                </div>
            </div>

          <%--  <footer class="container-fluid text-center">
                <p>Nur Mohammed Mehedy</p>
            </footer>--%>
        </div>
    </form>
</body>
</html>
