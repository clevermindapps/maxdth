﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pendingtasks.aspx.cs" Inherits="maxdth.pendingtasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3">
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--1--%>
                                            <p class="text-info">Connections</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-scooter text-white ms-auto">
                                            <%--<i class='bx bx-error'></i>--%>
                                            <p class="mt-3"><asp:Label ID="connections" runat="server" Text="15"></asp:Label></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-secondary">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2--%>
                                            <p style="color:#8e2de2">Services</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-cosmic text-white ms-auto">
                                            <%--<i class='bx bx-error'></i>--%>
                                            <p class="mt-3"><asp:Label ID="services" runat="server" Text="5"></asp:Label></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-warning">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--3--%>
                                            <p class="text-warning">Recharges</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-blooker text-white ms-auto">
                                            <%--<i class='bx bx-edit-alt'></i>--%>
                                            <p class="mt-3"><asp:Label ID="recharges" runat="server" Text="9"></asp:Label></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-success">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--4--%>
                                            <p class="text-success">Shiftings</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-ohhappiness text-white ms-auto">
                                            <%--<i class="bx bx-globe-alt"></i>--%>
                                            <p class="mt-3"><asp:Label ID="shiftings" runat="server" Text="4"></asp:Label></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-secondary">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--5--%>
                                            <p class="text-secondary">Accessories</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-moonlit text-white ms-auto">
                                            <%--<i class='bx bx-notepad'></i>--%>
                                            <p class="mt-3"><asp:Label ID="accessories" runat="server" Text="7"></asp:Label></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-danger">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--6--%>
                                            <p class="text-danger">Pending Amt</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-burning text-white ms-auto">
                                            <%--<i class='bx bx-recycle'></i>--%>
                                            <p class="mt-3"><asp:Label ID="pendingamt" runat="server" Text="99"></asp:Label></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <br />
                <h5 style="color:red">List of Pending Tasks</h5>
                <hr />
                <asp:GridView CssClass="table-responsive table-bordered" ID="tasks" runat="server" OnSelectedIndexChanged="tasks_SelectedIndexChanged" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="taskid" DataSourceID="SqlDatapendingtasks" ForeColor="#333333" PagerStyle-BorderStyle="Solid" PageSize="20" BorderStyle="Solid" BorderWidth="2px" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle" PagerStyle-CssClass="GridPager" FooterStyle-BorderStyle="Solid" FooterStyle-BorderWidth="2" FooterStyle-CssClass="GridPager" PagerStyle-BorderWidth="2" FooterStyle-HorizontalAlign="Center" FooterStyle-VerticalAlign="Middle">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CheckBoxField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
                        <asp:BoundField DataField="taskid" HeaderText="taskid" InsertVisible="False" ReadOnly="True" SortExpression="taskid" />
                        <asp:BoundField DataField="taskstatus" HeaderText="taskstatus" SortExpression="taskstatus" />
                        <asp:BoundField DataField="taskname" HeaderText="taskname" SortExpression="taskname" />
                        <asp:BoundField DataField="subscriberid" HeaderText="subscriberid" SortExpression="subscriberid"></asp:BoundField>
                        <asp:BoundField DataField="custname" HeaderText="custname" SortExpression="custname" />
                        <asp:BoundField DataField="custphone" HeaderText="custphone" SortExpression="custphone" />
                        <asp:BoundField DataField="custarea" HeaderText="custarea" SortExpression="custarea" />
                        <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                        <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                        <asp:BoundField DataField="addedby" HeaderText="addedby" SortExpression="addedby" />
                        <asp:BoundField DataField="addeddatetime" HeaderText="addeddatetime" SortExpression="addeddatetime" />
                        <asp:BoundField DataField="modifiedby" HeaderText="modifiedby" SortExpression="modifiedby" />
                        <asp:BoundField DataField="modifieddatetime" HeaderText="modifieddatetime" SortExpression="modifieddatetime" />
                        <asp:BoundField DataField="subscriberid" HeaderText="Subscriber ID" SortExpression="subscriberid"></asp:BoundField>
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
                <asp:SqlDataSource ID="SqlDatapendingtasks" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [task_tbl] WHERE [isactive] = 1 AND [taskstatus] != 'Completed'"></asp:SqlDataSource>
            </div>
            
            <div>
                <hr />
                <br />
                <br />
                <h5 style="color:Green">List of Completed Tasks</h5>
                <hr />
                <asp:GridView CssClass="table-responsive table-bordered dataTables_paginate paging_simple_numbers" ID="completedtasksgridview" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderStyle="Solid" CellPadding="4" DataKeyNames="taskid" DataSourceID="completedtasksDS" ForeColor="#333333" BorderWidth="2px" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" PageSize="30" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle" PagerStyle-CssClass="GridPager" OnSelectedIndexChanged="completedtasksgridview_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CheckBoxField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
                        <asp:BoundField DataField="taskid" HeaderText="taskid" InsertVisible="False" ReadOnly="True" SortExpression="taskid" />
                        <asp:BoundField DataField="taskstatus" HeaderText="taskstatus" SortExpression="taskstatus" />
                        <asp:BoundField DataField="taskname" HeaderText="taskname" SortExpression="taskname" />
                        <asp:BoundField DataField="subscriberid" HeaderText="subscriberid" SortExpression="subscriberid"></asp:BoundField>
                        <asp:BoundField DataField="custname" HeaderText="custname" SortExpression="custname" />
                        <asp:BoundField DataField="custphone" HeaderText="custphone" SortExpression="custphone" />
                        <asp:BoundField DataField="custarea" HeaderText="custarea" SortExpression="custarea" />
                        <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                        <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                        <asp:BoundField DataField="addedby" HeaderText="addedby" SortExpression="addedby" />
                        <asp:BoundField DataField="addeddatetime" HeaderText="addeddatetime" SortExpression="addeddatetime" />
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
                <asp:SqlDataSource ID="completedtasksDS" runat="server" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT * FROM [task_tbl] WHERE ([taskstatus] = @taskstatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Completed" Name="taskstatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
