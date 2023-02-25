<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="maxhome.aspx.cs" Inherits="maxdth.maxhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3">
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <asp:LinkButton ID="addtask" runat="server" OnClick="addtask_Click" CausesValidation="False">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div>
                                                <%--1--%>
                                                <p class="text-info">Add Task</p>
                                            </div>
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-scooter text-white ms-auto">
                                                <i class='bx bx-plus'></i>
                                            </div>
                                        </div>
                                    </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-danger">
                                <asp:LinkButton ID="pendingtasks" runat="server" OnClick="pendingtasks_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2--%>
                                            <p class="text-danger">Pending Tasks</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-bloody text-white ms-auto">
                                            <i class='bx bx-error'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-warning">
                                <asp:LinkButton ID="modifytask" runat="server" OnClick="modifytask_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--3--%>
                                            <p class="text-warning">Modify Task</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-blooker text-white ms-auto">
                                            <i class='bx bx-edit-alt'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-success">
                                <asp:LinkButton ID="rechargeduereport" runat="server" OnClick="rechargeduereport_Click">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--4--%>
                                            <p class="text-success">Due Report</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-ohhappiness text-white ms-auto">
                                            <i class="bx bx-notepad"></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-secondary">
                                <asp:LinkButton ID="rechargeentry" runat="server" OnClick="rechargeentry_Click">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--5--%>
                                            <p class="text-secondary">Rechrge Entry</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-moonlit text-white ms-auto">
                                            <i class='bx bx-recycle'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-danger">
                                <asp:LinkButton ID="modifyrecharge" runat="server" OnClick="modifyrecharge_Click">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--6--%>
                                            <p class="text-danger">Modfy Rechrg</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-burning text-white ms-auto">
                                            <i class='bx bx-edit'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->

            <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3">
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <asp:LinkButton ID="attendance" runat="server" OnClick="attendance_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2/1--%>
                                            <p class="text-info">Attendance</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-scooter text-white ms-auto">
                                            <i class='bx bx-user-check'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-warning">
                                <asp:LinkButton ID="empattendancereport" runat="server" OnClick="empattendancereport_Click">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2/2--%>
                                            <p class="text-warning">Atednc Report</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-blooker text-white ms-auto">
                                            <i class='bx bx-id-card'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-success">
                                <asp:LinkButton ID="addtrip" runat="server" OnClick="addtrip_Click">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2/3--%>
                                            <p class="text-success">Add Trip</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-ohhappiness text-white ms-auto">
                                            <i class='bx bx-cycling'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-secondary">
                                <asp:LinkButton ID="emptravelreport" runat="server" OnClick="emptravelreport_Click">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2/4--%>
                                            <p style="color: #8e2de2">Travel Report</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-cosmic text-white ms-auto">
                                            <i class="bx bx-calculator"></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-pink">
                                <asp:LinkButton ID="emptravelpayment" runat="server" OnClick="emptravelpayment_Click">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2/5--%>
                                            <p class="text-pink">Travl Payment</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-ibiza text-white ms-auto">
                                            <i class='bx bx-rupee'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2/6--%>
                                            <p class="text-info">NewConection</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-scooter text-white ms-auto">
                                            <i class='bx bx-globe-alt'></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->

            <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3">
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <asp:LinkButton ID="connectionmonthlyreport" runat="server" OnClick="connectionmonthlyreport_Click" CausesValidation="False">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div>
                                                <%--3/1--%>
                                                <p class="text-info">ConMthly Rep</p>
                                            </div>
                                            <div class="widgets-icons-2 rounded-circle bg-gradient-scooter text-white ms-auto">
                                                <i class='bx bx-book-content'></i>
                                            </div>
                                        </div>
                                    </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-danger">
                                <asp:LinkButton ID="overallgraph" runat="server" OnClick="overallgraph_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--3/2--%>
                                            <p class="text-danger">Conn Graph</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-bloody text-white ms-auto">
                                            <i class='bx bx-bar-chart-square'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-warning">
                                <asp:LinkButton ID="adminempattendancereport" runat="server" OnClick="adminempattendancereport_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--3/3--%>
                                            <p class="text-warning">Emp Atndnce</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-blooker text-white ms-auto">
                                            <i class='bx bx-columns'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-success">
                                <asp:LinkButton ID="adminmodifyattendance" runat="server" OnClick="adminmodifyattendance_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--3/4--%>
                                            <p class="text-success">Modify Atend</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-ohhappiness text-white ms-auto">
                                            <i class="bx bx-revision"></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-secondary">
                                <asp:LinkButton ID="adminviewtravel" runat="server" OnClick="adminviewtravel_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--3/5--%>
                                            <p class="text-secondary">View Travel</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-moonlit text-white ms-auto">
                                            <i class='bx bx-detail'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-danger">
                                <asp:LinkButton ID="adminmodifytravel" runat="server" OnClick="adminmodifytravel_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--3/6--%>
                                            <p class="text-danger">Modfy Trvel</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-burning text-white ms-auto">
                                            <i class='bx bx-edit'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->

            <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3">
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <asp:LinkButton ID="addtravelpayment" runat="server" OnClick="addtravelpayment_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--4/1--%>
                                            <p class="text-info">Add Trv Pay</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-scooter text-white ms-auto">
                                            <i class='bx bx-rupee'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-secondary">
                                <asp:LinkButton ID="viewtravelpayment" runat="server" OnClick="viewtravelpayment_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--4/2--%>
                                            <p style="color: #8e2de2">View TrvPay</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-cosmic text-white ms-auto">
                                            <i class='bx bx-columns'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-warning">
                                <asp:LinkButton ID="modifyemptravelpaymentid" runat="server" OnClick="modifyemptravelpayment_Click">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--4/3--%>
                                            <p class="text-warning">Mdfy TrvPay</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-blooker text-white ms-auto">
                                            <i class='bx bx-message-square-edit'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-success">
                                <asp:LinkButton ID="adddealer" runat="server" OnClick="adddealer_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--4/4--%>
                                            <p class="text-success">Add Dealer</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-ohhappiness text-white ms-auto">
                                            <i class='bx bx-user-plus'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-secondary">
                                <asp:LinkButton ID="modifydealer" runat="server" OnClick="modifydealer_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--4/5--%>
                                            <p style="color: #8e2de2">Mdfy Dealer</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-cosmic text-white ms-auto">
                                            <i class="bx bx-user-pin"></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-pink">
                                <asp:LinkButton ID="viewdealers" runat="server" OnClick="viewdealers_Click" CausesValidation="False">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--4/6--%>
                                            <p class="text-pink">View Dealers</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-ibiza text-white ms-auto">
                                            <i class='bx bx-user-circle'></i>
                                        </div>
                                    </div>
                                </div>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->
        </div>
    </div>
    <!--end page wrapper -->
</asp:Content>