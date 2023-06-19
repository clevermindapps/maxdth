<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="customernumberstotal.aspx.cs" Inherits="maxdth.customernumberstotal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper">
        <br />
        <br />
        <br />
        <div class="row">
            <div class="col-11 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <center>
                            <h4 class="mt-3 font-weight-bold">Total Customer Numbers</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <div class="form-group">
                                <div>
                                    <center>
                                        <asp:GridView CssClass="table-responsive table-bordered dataTables_paginate paging_simple_numbers" ID="totalcustnumbers" runat="server" AutoGenerateColumns="False" DataKeyNames="sno" DataSourceID="SqlDataSource1" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="20" BorderWidth="2px" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle" PagerStyle-CssClass="GridPager">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="sno" HeaderText="sno" ReadOnly="True" InsertVisible="False" SortExpression="sno"></asp:BoundField>
                                                <asp:BoundField DataField="customerphone" HeaderText="customerphone" SortExpression="customerphone"></asp:BoundField>
                                                <asp:CheckBoxField DataField="ispaid" HeaderText="ispaid" SortExpression="ispaid"></asp:CheckBoxField>
                                                <asp:CheckBoxField DataField="isconverted" HeaderText="isconverted" SortExpression="isconverted"></asp:CheckBoxField>
                                                <asp:BoundField DataField="addedby" HeaderText="addedby" SortExpression="addedby"></asp:BoundField>
                                                <asp:BoundField DataField="addeddatetime" HeaderText="addeddatetime" SortExpression="addeddatetime"></asp:BoundField>
                                                <asp:BoundField DataField="modifiedby" HeaderText="modifiedby" SortExpression="modifiedby"></asp:BoundField>
                                                <asp:BoundField DataField="modifieddatetime" HeaderText="modifieddatetime" SortExpression="modifieddatetime"></asp:BoundField>
                                            </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White" />
                                        <HeaderStyle HorizontalAlign="Center" BackColor="#507CD1" Font-Bold="true" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="true" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:maxdbConnectionString2 %>' SelectCommand="SELECT * FROM [custphnumbers] WHERE ([addedby] = @addedby)">
                                            <SelectParameters>
                                                <asp:SessionParameter SessionField="fullname" Name="addedby" Type="String"></asp:SessionParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
