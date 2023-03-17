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
                    <asp:GridView ID="monthlyactivationsgridview" runat="server" AllowSorting="True" AllowPaging="True" PageSize="20" CssClass="table-responsive table-bordered" RowStyle-BorderColor="#000066" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="2" EditRowStyle-HorizontalAlign="Left" EditRowStyle-VerticalAlign="Middle" EditRowStyle-Wrap="True" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
<EditRowStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="True" BackColor="#2461BF"></EditRowStyle>

                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />

<RowStyle BorderColor="#000066" BorderWidth="2px" BorderStyle="Solid" BackColor="#EFF3FB"></RowStyle>
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </div>
                <div class="mb-3">
                    <h4>Total Activations: <asp:Label ID="monthlyactivationslabel" runat="server" Text=""></asp:Label></h4>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
