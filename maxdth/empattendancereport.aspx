<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="empattendancereport.aspx.cs" Inherits="maxdth.empattendancereport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Monthly Attendance Report</h5>
                <br />
                <asp:DropDownList ID="empmonthcode" runat="server" DataSourceID="empmonthds" DataTextField="monthname" DataValueField="monthcode" OnSelectedIndexChanged="empmonthcode_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="empmonthds" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [monthcode_tbl]"></asp:SqlDataSource>
                <hr />
                <asp:GridView ID="empmonthlyattendance" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="attendanceid" DataSourceID="empmonthlyattendenceds" PageSize="32">
                    <Columns>
                        <asp:CheckBoxField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
                        <asp:BoundField DataField="attendanceid" HeaderText="attendanceid" ReadOnly="True" SortExpression="attendanceid" />
                        <asp:BoundField DataField="monthcode" HeaderText="monthcode" SortExpression="monthcode" />
                        <asp:BoundField DataField="userfullname" HeaderText="userfullname" SortExpression="userfullname" />
                        <asp:BoundField DataField="datetime" HeaderText="datetime" SortExpression="datetime" />
                        <asp:BoundField DataField="fulldayorhalfday" HeaderText="fulldayorhalfday" SortExpression="fulldayorhalfday" />
                        <asp:CheckBoxField DataField="isonleave" HeaderText="isonleave" SortExpression="isonleave" />
                        <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                        <asp:BoundField DataField="modifiedby" HeaderText="modifiedby" SortExpression="modifiedby" />
                        <asp:BoundField DataField="modifieddatetime" HeaderText="modifieddatetime" SortExpression="modifieddatetime" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>

                <asp:SqlDataSource ID="empmonthlyattendenceds" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [attendance_tbl] WHERE (([userfullname] = @userfullname) AND ([isactive] = @isactive) AND ([monthcode] = @monthcode))">
                    <SelectParameters>
                        <asp:SessionParameter Name="userfullname" SessionField="fullname" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="isactive" Type="Boolean" />
                        <asp:FormParameter DefaultValue="202302" FormField="empmonthcode" Name="monthcode" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div>
                <br />
                <h5 style="color:red">Overall Attendance Report</h5>
                <hr />
                <asp:GridView CssClass="table-responsive" ID="empattendance" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="attendanceid" DataSourceID="empattendanceds" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CheckBoxField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
                        <asp:BoundField DataField="attendanceid" HeaderText="attendanceid" ReadOnly="True" SortExpression="attendanceid" />
                        <asp:BoundField DataField="monthcode" HeaderText="monthcode" SortExpression="monthcode" />
                        <asp:BoundField DataField="userfullname" HeaderText="userfullname" SortExpression="userfullname" />
                        <asp:BoundField DataField="datetime" HeaderText="datetime" SortExpression="datetime" />
                        <asp:BoundField DataField="fulldayorhalfday" HeaderText="fulldayorhalfday" SortExpression="fulldayorhalfday" />
                        <asp:CheckBoxField DataField="isonleave" HeaderText="isonleave" SortExpression="isonleave" />
                        <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                        <asp:BoundField DataField="modifiedby" HeaderText="modifiedby" SortExpression="modifiedby" />
                        <asp:BoundField DataField="modifieddatetime" HeaderText="modifieddatetime" SortExpression="modifieddatetime" />
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
