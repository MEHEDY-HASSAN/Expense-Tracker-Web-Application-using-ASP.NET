<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="webpageAddExpenses.aspx.cs" Inherits="ExpenseTrackerWeb.webpageAddExpenses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="panel panel-primary">
            <h4>ADD Expenses</h4>
        </div>
        <div class="row alert-info">
            <div class="col-md-2">

                <div class="form-group">

                    <label>Main Category</label>
                    <asp:DropDownList ID="ddlMainCategory" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMainCategory_SelectedIndexChanged"></asp:DropDownList>

                </div>
            </div>


            <div class="col-md-2">

                <div class="form-group">

                    <label>Sub Category</label>
                    <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>

                </div>
            </div>


            <div class="col-md-5">

                <div class="form-group">

                    <label>Description:</label>
                    <asp:TextBox ID="txtDesc" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>

                </div>
            </div>


            <div class="col-md-3">

                <div class="form-group">

                    <label>Ammount (BDT):</label>
                    <asp:TextBox ID="txtAmt" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>

                </div>
            </div>


        </div>
        <div class="row">

            <div class="col-md-3">

                <div class="form-group">

                    <asp:Button ID="btnSubmit" CssClass="btn btn-success" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click" />

                </div>

            </div>

        </div>



        <div class="row">
            <h3 class="text-center">All Expenses List</h3>

            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" CssClass=" table table-responsive table-hover" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                </div>

            </div>
            <div class="col-md-1"></div>

        </div>

    </div>



</asp:Content>
