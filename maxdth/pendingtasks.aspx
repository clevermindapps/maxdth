<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pendingtasks.aspx.cs" Inherits="maxdth.pendingtasks" %>

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
                <br />
                <asp:GridView CssClass="table table-responsive" ID="tasks" runat="server" OnSelectedIndexChanged="tasks_SelectedIndexChanged" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="taskid" DataSourceID="SqlDatapendingtasks" ForeColor="#333333" GridLines="Both" PagerStyle-BorderStyle="Solid" PagerStyle-BorderColor="#FF6600" AllowCustomPaging="True" PageSize="20">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CheckBoxField DataField="isactive" HeaderText="Is Active" SortExpression="isactive" />
                        <asp:BoundField DataField="taskid" HeaderText="Task ID" InsertVisible="False" ReadOnly="True" SortExpression="taskid" />
                        <asp:BoundField DataField="taskstatus" HeaderText="Task Status" SortExpression="taskstatus" />
                        <asp:BoundField DataField="taskname" HeaderText="Task Name" SortExpression="taskname" />
                        <asp:BoundField DataField="custname" HeaderText="Customer Name" SortExpression="custname" />
                        <asp:BoundField DataField="custphone" HeaderText="Customer Phone" SortExpression="custphone" />
                        <asp:BoundField DataField="custarea" HeaderText="Customer Area" SortExpression="custarea" />
                        <asp:BoundField DataField="amount" HeaderText="Amount Received" SortExpression="amount" />
                        <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                        <asp:BoundField DataField="addedby" HeaderText="Added By" SortExpression="addedby" />
                        <asp:BoundField DataField="addeddatetime" HeaderText="Added Date &amp; Time" SortExpression="addeddatetime" />
                        <asp:BoundField DataField="modifiedby" HeaderText="Modified By" SortExpression="modifiedby" />
                        <asp:BoundField DataField="modifieddatetime" HeaderText="Modified Date &amp; Time" SortExpression="modifieddatetime" />
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
        </div>
    </div>
</asp:Content>
