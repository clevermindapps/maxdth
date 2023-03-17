<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="connectionmonthlyreport.aspx.cs" Inherits="maxdth.connectionmonthlyreport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <center>
                    <h5 style="color: darkblue">Monthly Activations List</h5>
                </center>
                <hr />
                <div class="mb-3 mt-3">
                    <label class="form-label">Select Month</label>
                    <asp:DropDownList CssClass="form-control" ID="monthname" runat="server" OnSelectedIndexChanged="monthname_SelectedIndexChanged" AutoPostBack="true" DataTextField="monthname" DataValueField="monthcode" DataSourceID="monthcodenameDS"></asp:DropDownList><asp:SqlDataSource runat="server" ID="monthcodenameDS" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [monthcode_tbl]"></asp:SqlDataSource>
                </div>
                <hr />
                <div class="mb-3 mt-3">
                    <asp:GridView ID="monthlyactivationsgridview" runat="server" AllowSorting="True" AllowPaging="True" PageSize="20" BorderStyle="Solid" BorderWidth="2" BorderColor="Black" CssClass="table-responsive table-bordered" RowStyle-BorderColor="#000066" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="2" EditRowStyle-HorizontalAlign="Left" EditRowStyle-VerticalAlign="Middle" EditRowStyle-Wrap="True" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" OnSelectedIndexChanged="monthlyactivationsgridview_SelectedIndexChanged"></asp:GridView>
                </div>
                <div class="mb-3">
                    <h4>Total Activations: <asp:Label ID="monthlyactivationslabel" runat="server" Text=""></asp:Label></h4>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
