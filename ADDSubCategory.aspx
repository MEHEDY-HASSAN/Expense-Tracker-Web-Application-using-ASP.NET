<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ADDSubCategory.aspx.cs" Inherits="ExpenseTrackerWeb.ADDSubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Expense Sub Catagory</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-4"></div>
            <div class="col-md-4">

                <div class="form-group">

                    <label class="text-uppercase">Main Expense Category</label>
                    <asp:DropDownList ID="ddlMainCategory" CssClass="form-control" runat="server">

                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label class="text-uppercase">Expense Sub Category</label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                <asp:Button ID="Button1" CssClass="btn btn-info btn-block" runat="server" Text="ADD" OnClick="Button1_Click"></asp:Button>
                </div>

            </div>
            <div class="col-md-4"></div>

        </div>

        
        <div class="'row">
            <div class="col-md-1"></div>
            <div class="col-md-10">

                <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>

            </div>
            <div class="col-md-1"></div>
        </div>

    </div>


</asp:Content>
