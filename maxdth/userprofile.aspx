<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="maxdth.userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div class="container">
                <div class="main-body">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <asp:Image class="rounded-circle p-1 bg-primary" ID="profileimage" runat="server" Width="270" />
                                    </div>
                                    <ul class="list-group list-group-flush">
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col-sm-2">
                                            <h6 class="mb-0">Full Name</h6>
                                        </div>
                                        <div class="col-sm-10 text-secondary">
                                            <asp:TextBox class="form-control" ID="fullname" runat="server" Text="User Full Name" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-2">
                                            <h6 class="mb-0">User Role</h6>
                                        </div>
                                        <div class="col-sm-10 text-secondary">
                                            <asp:TextBox class="form-control" ID="role" runat="server" Text="User Role" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-2">
                                            <h6 class="mb-0">Email</h6>
                                        </div>
                                        <div class="col-sm-10 text-secondary">
                                            <asp:TextBox class="form-control" ID="email" runat="server" Text="useremail@example.com" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-2">
                                            <h6 class="mb-0">Mobile</h6>
                                        </div>
                                        <div class="col-sm-10 text-secondary">
                                            <asp:TextBox class="form-control" ID="phone" runat="server" Text="1234567890" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-sm-2">
                                            <h6 class="mb-0">Address</h6>
                                        </div>
                                        <div class="col-sm-10 text-secondary">
                                            <asp:TextBox class="form-control" ID="address" runat="server" Text="Full Address" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end page wrapper -->
</asp:Content>
