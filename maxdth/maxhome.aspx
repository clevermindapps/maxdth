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
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-danger">
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
                                            <p class="text-warning">Modify Task</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-blooker text-white ms-auto">
                                            <i class='bx bx-edit-alt'></i>
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
                                            <p class="text-success">New Connection</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-ohhappiness text-white ms-auto">
                                            <i class="bx bx-globe-alt"></i>
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
                                            <p class="text-secondary">Due Report</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-moonlit text-white ms-auto">
                                            <i class='bx bx-notepad'></i>
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
                                            <p class="text-danger">Recharge Entry</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-burning text-white ms-auto">
                                            <i class='bx bx-recycle'></i>
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
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-warning">
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
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-success">
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
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-secondary">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2/4--%>
                                            <p class="text-secondary">Travel Report</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-moonlit text-white ms-auto">
                                            <i class="bx bx-notepad"></i>
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
                            <div class="card radius-10 border-start border-0 border-3 border-pink">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2/5--%>
                                            <p class="text-pink">Trvl Pay Report</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-ibiza text-white ms-auto">
                                            <i class='bx bx-rupee'></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card radius-10 border-start border-0 border-3 border-info">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div>
                                            <%--2/6--%>
                                            <p class="text-info">Atednc Report</p>
                                        </div>
                                        <div class="widgets-icons-2 rounded-circle bg-gradient-scooter text-white ms-auto">
                                            <i class='bx bx-id-card'></i>
                                        </div>
                                    </div>
                                </div>
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
