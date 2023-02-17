<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="emptravelpayment.aspx.cs" Inherits="maxdth.emptravelpayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Travel Payment Report</h5>
                <hr />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="paymentid" DataSourceID="emptravelpaymentds" CellPadding="4" CssClass="table-responsive table-bordered" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CheckBoxField DataField="isactive" HeaderText="Is Active" SortExpression="isactive" />
                        <asp:BoundField DataField="paymentid" HeaderText="Payment ID" InsertVisible="False" ReadOnly="True" SortExpression="paymentid" />
                        <asp:BoundField DataField="empname" HeaderText="Full Name" SortExpression="empname" />
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
                <asp:SqlDataSource ID="emptravelpaymentds" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [travelpayment_tbl] WHERE (([isactive] = @isactive) AND ([empname] = @empname))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="isactive" Type="Boolean" />
                        <asp:SessionParameter Name="empname" SessionField="fullname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
