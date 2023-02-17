<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="emptravelreport.aspx.cs" Inherits="maxdth.emptravelreport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Payment Pending Travel Report</h5>
                <hr />
                <asp:GridView ID="emppendingtravelreport" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="emptravelpendingDS"></asp:GridView>
                <asp:SqlDataSource runat="server" ID="emptravelpendingDS" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [traveltrip_tbl] WHERE (([isactive] = @isactive) AND ([addedby] = @addedby) AND ([travelstatus] <> @travelstatus))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="isactive" Type="Boolean"></asp:Parameter>
                        <asp:SessionParameter SessionField="fullname" Name="addedby" Type="String"></asp:SessionParameter>
<asp:Parameter DefaultValue="Completed" Name="travelstatus" Type="String"></asp:Parameter>
                        </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div>
                <br />
                <h5 style="color:Green">Payment Completed Travel Report</h5>
                <hr />
                <asp:GridView ID="empcompletedtravelreport" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
