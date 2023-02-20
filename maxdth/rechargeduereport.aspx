<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rechargeduereport.aspx.cs" Inherits="maxdth.rechargeduereport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <center>
                    <h5 style="color: red">Recharge Due Report</h5>
                </center>
                <hr />
                <div class="mb-3 mt-3">
                    <label class="form-label">Select Date</label>
                    <div class="input-group">
                        <asp:TextBox CssClass="form-control" ID="submissiondate" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:Button CssClass="btn btn-primary" ID="duereportbutton" runat="server" Text="Go" OnClick="duereportbutton_Click" />
                    </div>
                </div>
                <div>
                    <asp:GridView CssClass="table-responsive table-bordered" ID="duereportgridview" runat="server" CellPadding="4" ForeColor="#333333" AllowPaging="True" PageSize="20" BorderStyle="Solid" BorderWidth="2" AllowSorting="True" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        <Columns>
                        <asp:CheckBoxField DataField="isactive"   SortExpression="isactive" HeaderText="Is Active" />
                            <asp:BoundField DataField="subscriberid" ReadOnly="true" SortExpression="subscriberid" HeaderText="Subscriber ID" />
                            <asp:BoundField DataField="dthoperator" ReadOnly="true" SortExpression="dthoperator" HeaderText="DTH Operator" />
                            <asp:BoundField DataField="custname" ReadOnly="true" SortExpression="custname" HeaderText="Customer Name" />
                            <asp:BoundField DataField="custphone" ReadOnly="true" SortExpression="custphone" HeaderText="Customer Phone" />
                            <asp:BoundField DataField="custarea" ReadOnly="true" SortExpression="custarea" HeaderText="Customer Area" />
                            <asp:BoundField DataField="monthlyamount" ReadOnly="true" SortExpression="monthlyamount" HeaderText="Monthly Amount" />
                            <asp:BoundField DataField="duedate" ReadOnly="true" SortExpression="duedate" HeaderText="Due Date" />
                            <asp:BoundField DataField="remarks" ReadOnly="true" SortExpression="remarks" HeaderText="Remarks" />
                            <asp:BoundField DataField="addedby" ReadOnly="true" SortExpression="addedby" HeaderText="Added By" />
                            <asp:BoundField DataField="addeddatetime" ReadOnly="true" SortExpression="addeddatetime" HeaderText="Added Date Time" />
                            <asp:BoundField DataField="modifiedby" ReadOnly="true" SortExpression="modifiedby" HeaderText="Modified By" />
                            <asp:BoundField DataField="modifieddatetime" ReadOnly="true" SortExpression="modifieddatetime" HeaderText="Modified Date Time" />
                            </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
