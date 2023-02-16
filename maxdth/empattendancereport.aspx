<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="empattendancereport.aspx.cs" Inherits="maxdth.empattendancereport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Monthly Attendance Report</h5>
                <br />
                <asp:DropDownList ID="empmonthcode" runat="server" DataSourceID="empmonthds" DataTextField="monthname" DataValueField="monthcode" OnSelectedIndexChanged="empmonthcode_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="empmonthds" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [monthcode_tbl]"></asp:SqlDataSource>
                <hr />
                <asp:GridView ID="empmonthlyattendance" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataKeyNames="attendanceid" PageSize="32" AutoGenerateColumns="False" ForeColor="#333333" BorderStyle="Solid" BorderWidth="2" CssClass="table-bordered">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CheckBoxField DataField="isactive"   SortExpression="isactive" HeaderText="Is Active" />
                        <asp:BoundField DataField="attendanceid" HeaderText="Attendance ID" ReadOnly="True" SortExpression="attendanceid" />
                        <asp:BoundField DataField="monthcode" HeaderText="Month Code" SortExpression="monthcode" />
                        <asp:BoundField DataField="userfullname" HeaderText="Full Name" SortExpression="userfullname" />
                        <asp:BoundField DataField="datetime" HeaderText="Submitted Date" SortExpression="datetime" />
                        <asp:BoundField DataField="fulldayorhalfday" HeaderText="Fullday or Halfday" SortExpression="fulldayorhalfday" />
                        <asp:CheckBoxField DataField="isonleave" HeaderText="Is Onleave" SortExpression="isonleave" />
                        <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                        <asp:BoundField DataField="modifiedby" HeaderText="Modified By" SortExpression="modifiedby" />
                        <asp:BoundField DataField="modifieddatetime" HeaderText="Modified Date Time" SortExpression="modifieddatetime" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
            <div>
                <br />
                <h5 style="color:red">Overall Attendance Report</h5>
                <hr />
                <asp:GridView CssClass="table-bordered" ID="empattendance" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="attendanceid" DataSourceID="empattendanceds" ForeColor="#333333" BorderStyle="Solid" BorderWidth="2px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CheckBoxField DataField="isactive"   SortExpression="isactive" HeaderText="Is Active" />
                        <asp:BoundField DataField="attendanceid"   ReadOnly="True" SortExpression="attendanceid" HeaderText="Attendance ID" />
                        <asp:BoundField DataField="monthcode"   SortExpression="monthcode" HeaderText="Month Code" />
                        <asp:BoundField DataField="userfullname"   SortExpression="userfullname" HeaderText="Full Name" />
                        <asp:BoundField DataField="datetime"   SortExpression="datetime" HeaderText="Submitted Date" />
                        <asp:BoundField DataField="fulldayorhalfday"   SortExpression="fulldayorhalfday" HeaderText="Fullday or Halfday" />
                        <asp:CheckBoxField DataField="isonleave"   SortExpression="isonleave" HeaderText="Is Onleave" />
                        <asp:BoundField DataField="remarks"   SortExpression="remarks" HeaderText="Remarks" />
                        <asp:BoundField DataField="modifiedby"   SortExpression="modifiedby" HeaderText="Modified By" />
                        <asp:BoundField DataField="modifieddatetime"   SortExpression="modifieddatetime" HeaderText="Modified Date Time" />
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
                <asp:SqlDataSource ID="empattendanceds" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [attendance_tbl] WHERE (([userfullname] = @userfullname) AND ([isactive] = @isactive))">
                    <SelectParameters>
                        <asp:SessionParameter Name="userfullname" SessionField="fullname" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="isactive" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
