<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dealerslist.aspx.cs" Inherits="maxdth.dealerslist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Dealers List</h5>
                <hr />
                <asp:GridView CssClass="table-responsive table-bordered" ID="dealerslistgridview" runat="server" AutoGenerateColumns="False" DataKeyNames="dealerid" DataSourceID="dealerslistds" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" PageSize="30" BorderStyle="Solid" BorderWidth="2" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CheckBoxField DataField="isactive" HeaderText="Is Active" SortExpression="isactive" />
                        <asp:BoundField DataField="dealerid" HeaderText="Dealer ID" ReadOnly="True" SortExpression="dealerid" />
                        <asp:BoundField DataField="dealername" HeaderText="Dealer Name" SortExpression="dealername" />
                        <asp:BoundField DataField="dealerphone" HeaderText="Dealer Phone" SortExpression="dealerphone" />
                        <asp:BoundField DataField="dealerarea" HeaderText="Dealer Area" SortExpression="dealerarea" />
                        <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                        <asp:BoundField DataField="addedby" HeaderText="Added By" SortExpression="addedby" />
                        <asp:BoundField DataField="addeddatetime" HeaderText="Added Date Time" SortExpression="addeddatetime" />
                        <asp:BoundField DataField="modifiedby" HeaderText="Modified By" SortExpression="modifiedby" />
                        <asp:BoundField DataField="modifieddatetime" HeaderText="Modified Date Time" SortExpression="modifieddatetime" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="dealerslistds" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [dealer_tbl]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
