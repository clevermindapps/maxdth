<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminviewtravelpayment.aspx.cs" Inherits="maxdth.adminviewtravelpayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Travel Payment List</h5>
                <hr />
                <div>
                    <asp:GridView CssClass="table-responsive table-bordered" ID="travelpayment" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderStyle="Solid" CellPadding="4" DataKeyNames="paymentid" DataSourceID="travelpaymentlistDS" ForeColor="#333333" GridLines="Both" BorderWidth="2" HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CheckBoxField DataField="isactive" HeaderText="Is Active" SortExpression="isactive" />
                            <asp:BoundField DataField="paymentid" HeaderText="Payment ID" InsertVisible="False" ReadOnly="True" SortExpression="paymentid" />
                            <asp:BoundField DataField="empname" HeaderText="Emp Name" SortExpression="empname" />
                            <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                            <asp:BoundField DataField="paiddate" HeaderText="Paid Date" SortExpression="paiddate" />
                            <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                            <asp:BoundField DataField="addedby" HeaderText="Added By" SortExpression="addedby" />
                            <asp:BoundField DataField="modifiedby" HeaderText="Modified By" SortExpression="modifiedby" />
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
                    <asp:SqlDataSource ID="travelpaymentlistDS" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [travelpayment_tbl]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
