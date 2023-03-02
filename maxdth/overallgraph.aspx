<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="overallgraph.aspx.cs" Inherits="maxdth.overallgraph" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Monthly Connections Count</h5>
                <hr />
                <div>
                    <asp:GridView ID="monthlycountgridview" runat="server" DataSourceID="monthlycountgridviewDS" AllowPaging="True" AllowSorting="True"></asp:GridView>
                    <asp:SqlDataSource runat="server" ID="monthlycountgridviewDS"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
