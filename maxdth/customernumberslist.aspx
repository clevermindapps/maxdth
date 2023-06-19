<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="customernumberslist.aspx.cs" Inherits="maxdth.customernumberslist" %>
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
                            <h4 class="mt-3 font-weight-bold">Customer Numbers List</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <div class="form-group">
                                <div>
                                    <center>
                                        <asp:GridView CssClass="table-responsive table-bordered dataTables_paginate paging_simple_numbers" ID="customernumslist" runat="server" AutoGenerateColumns="False" DataKeyNames="sno" DataSourceID="SqlDataSource1" HeaderStyle-HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" BorderWidth="2px" HeaderStyle-VerticalAlign="Middle" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle" PagerStyle-CssClass="GridPager">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField ShowEditButton="True" ButtonType="Button"></asp:CommandField>
                                                <asp:TemplateField HeaderText="S No" InsertVisible="False" SortExpression="sno">
                                                    <EditItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Eval("sno") %>' ID="Label1"></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Bind("sno") %>' ID="Label1"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Customer Phone" SortExpression="customerphone">
                                                    <EditItemTemplate>
                                                        <asp:TextBox runat="server" Text='<%# Bind("customerphone") %>' ID="TextBox1"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Bind("customerphone") %>' ID="Label2"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Is Paid" SortExpression="ispaid">
                                                    <EditItemTemplate>
                                                        <asp:CheckBox runat="server" Checked='<%# Bind("ispaid") %>' ID="CheckBox1"></asp:CheckBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:CheckBox runat="server" Checked='<%# Bind("ispaid") %>' Enabled="false" ID="CheckBox1"></asp:CheckBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Is Converted" SortExpression="isconverted">
                                                    <EditItemTemplate>
                                                        <asp:CheckBox runat="server" Checked='<%# Bind("isconverted") %>' ID="CheckBox2"></asp:CheckBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:CheckBox runat="server" Checked='<%# Bind("isconverted") %>' Enabled="false" ID="CheckBox2"></asp:CheckBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Added By" SortExpression="addedby">
                                                    <EditItemTemplate>
                                                        <asp:TextBox runat="server" Text='<%# Bind("addedby") %>' ID="TextBox2"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Bind("addedby") %>' ID="Label3"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Added DateTime" SortExpression="addeddatetime">
                                                    <EditItemTemplate>
                                                        <asp:TextBox runat="server" Text='<%# Bind("addeddatetime") %>' ID="TextBox3"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Bind("addeddatetime") %>' ID="Label4"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Modified By" SortExpression="modifiedby">
                                                    <EditItemTemplate>
                                                        <asp:TextBox runat="server" Text='<%# Bind("modifiedby") %>' ID="TextBox4"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Bind("modifiedby") %>' ID="Label5"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Modified DateTime" SortExpression="modifieddatetime">
                                                    <EditItemTemplate>
                                                        <asp:TextBox runat="server" Text='<%# Bind("modifieddatetime") %>' ID="TextBox5"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Bind("modifieddatetime") %>' ID="Label6"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

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
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:maxdbConnectionString2 %>' ProviderName='<%$ ConnectionStrings:maxdbConnectionString2.ProviderName %>' SelectCommand="SELECT * FROM [custphnumbers]"></asp:SqlDataSource>
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
