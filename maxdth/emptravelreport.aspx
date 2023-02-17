<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="emptravelreport.aspx.cs" Inherits="maxdth.emptravelreport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Payment Pending Travel Report</h5>
                <hr />
                <asp:GridView ID="emppendingtravelreport" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="emptravelpendingDS" DataKeyNames="travelid" CellPadding="4" ForeColor="#333333" BorderStyle="Solid" BorderWidth="2" CssClass="table-responsive table-bordered">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CheckBoxField DataField="isactive" HeaderText="Is Active" SortExpression="isactive" />
                        <asp:BoundField DataField="travelid" HeaderText="Travel ID" InsertVisible="False" ReadOnly="True" SortExpression="travelid" />
                        <asp:BoundField DataField="travelstatus" HeaderText="Travel Status" SortExpression="travelstatus" />
                        <asp:BoundField DataField="traveltype" HeaderText="Travel Type" SortExpression="traveltype" />
                        <asp:BoundField DataField="fromtown" HeaderText="From Town" SortExpression="fromtown" />
                        <asp:BoundField DataField="totown" HeaderText="To Town" SortExpression="totown" />
                        <asp:BoundField DataField="noofkms" HeaderText="No Of Kms" SortExpression="noofkms" />
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
                <asp:GridView ID="empcompletedtravelreport" runat="server" AutoGenerateColumns="False" DataKeyNames="travelid" DataSourceID="emppaidtravelds" BorderStyle="Solid" CellPadding="4" ForeColor="#333333" GridLines="Both" BorderWidth="2" CssClass="table-responsive table-bordered">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CheckBoxField DataField="isactive" HeaderText="Is Active" SortExpression="isactive" />
                        <asp:BoundField DataField="travelid" HeaderText="Travel ID" InsertVisible="False" ReadOnly="True" SortExpression="travelid" />
                        <asp:BoundField DataField="travelstatus" HeaderText="Travel Status" SortExpression="travelstatus" />
                        <asp:BoundField DataField="traveltype" HeaderText="Travel Type" SortExpression="traveltype" />
                        <asp:BoundField DataField="fromtown" HeaderText="From Town" SortExpression="fromtown" />
                        <asp:BoundField DataField="totown" HeaderText="To Town" SortExpression="totown" />
                        <asp:BoundField DataField="noofkms" HeaderText="No Of Kms" SortExpression="noofkms" />
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
                <asp:SqlDataSource ID="emppaidtravelds" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [traveltrip_tbl] WHERE (([isactive] = @isactive) AND ([addedby] = @addedby) AND ([travelstatus] = @travelstatus))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="isactive" Type="Boolean" />
                        <asp:SessionParameter Name="addedby" SessionField="fullname" Type="String" />
                        <asp:Parameter DefaultValue="Completed" Name="travelstatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
