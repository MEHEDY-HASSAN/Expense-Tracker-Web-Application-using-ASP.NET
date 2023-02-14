<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ExpenseMainCatagory.aspx.cs" Inherits="ExpenseTrackerWeb.ExpenseMainCatagory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Expense Main Catagory</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>Enter Expense Type:</label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="* enter expense type...." ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" CssClass="btn btn-success btn-lg" runat="server" Text="Submit" OnClick="Button1_Click"/>
                </div>
            </div>
            <div class="col-md-4"> </div>
        </div>

        <div class ="row">

            <div class="col-md-2"></div>
            <div class="col-md-8">
                
                <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" EmptyDataText="Record not found!" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                </asp:GridView>
                
            </div>
            <div class="col-md-2"></div>

        </div>
    </div>

</asp:Content>
