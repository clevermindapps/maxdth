<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminempattendancereport.aspx.cs" Inherits="maxdth.adminempattendancereport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Employees Attendance Report</h5>
                <hr />
                <div>
                    <asp:GridView CssClass="table-responsive table-bordered" ID="adminempattendancereportgridview" runat="server" HeaderStyle-HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="attendanceid" DataSourceID="adminempattendanceds" ForeColor="#333333" GridLines="None" PageSize="20">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CheckBoxField DataField="isactive" HeaderText="Is Active" SortExpression="isactive" />
                            <asp:BoundField DataField="attendanceid" HeaderText="Attendance ID" ReadOnly="True" SortExpression="attendanceid" />
                            <asp:BoundField DataField="monthcode" HeaderText="Month Code" SortExpression="monthcode" />
                            <asp:BoundField DataField="userfullname" HeaderText="Emp Full Name" SortExpression="userfullname" />
                            <asp:BoundField DataField="datetime" HeaderText="Date Time" SortExpression="datetime" />
                            <asp:BoundField DataField="fulldayorhalfday" HeaderText="Fullday Or Halfday" SortExpression="fulldayorhalfday" />
                            <asp:CheckBoxField DataField="isonleave" HeaderText="Is Onleave" SortExpression="isonleave" />
                            <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                            <asp:BoundField DataField="modifiedby" HeaderText="Modified By" SortExpression="modifiedby" />
                            <asp:BoundField DataField="modifieddatetime" HeaderText="Modified Date Time" SortExpression="modifieddatetime" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
<HeaderStyle HorizontalAlign="Center" BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="adminempattendanceds" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [attendance_tbl]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
