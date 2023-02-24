<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminviewtravel.aspx.cs" Inherits="maxdth.adminviewtravel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Travel Report</h5>
                <hr />
                <div>
                    <asp:GridView CssClass="table-responsive table-bordered" ID="adminviewtravelgridview" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="travelid" DataSourceID="admintravelreportDS" ForeColor="#333333" GridLines="Both" BorderStyle="Solid" BorderWidth="2" PageSize="20" HeaderStyle-HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CheckBoxField DataField="isactive" HeaderText="Is Active" SortExpression="isactive" />
                            <asp:BoundField DataField="travelid" HeaderText="Travel ID" InsertVisible="False" ReadOnly="True" SortExpression="travelid" />
                            <asp:BoundField DataField="travelstatus" HeaderText="Travel Status" SortExpression="travelstatus" />
                            <asp:BoundField DataField="traveltype" HeaderText="Travel Type" SortExpression="traveltype" />
                            <asp:BoundField DataField="fromtown" HeaderText="From Town" SortExpression="fromtown" />
                            <asp:BoundField DataField="totown" HeaderText="To Town" SortExpression="totown" />
                            <asp:BoundField DataField="noofkms" HeaderText="No of Kms" SortExpression="noofkms" />
                            <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
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
                    <asp:SqlDataSource ID="admintravelreportDS" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [traveltrip_tbl]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
