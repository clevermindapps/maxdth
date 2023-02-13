<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="maxdth.changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- wrapper -->
    <div class="wrapper">
        <br />
        <br />
        <br />
        <div class="row">
            <div class="col-11 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="text-start">
                            <center>
                                <img src="theme/images/maxlogo.png" width="300" alt="">
                            </center>
                        </div>
                        <center>
                            <h4 class="mt-3 font-weight-bold">Change Your Password</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Old Password</label>
                            <asp:TextBox class="form-control" ID="oldpassword" runat="server" placeholder="Enter Old Password" TextMode="Password"></asp:TextBox>
                           
                        </div>
                        <br />
                        <hr />
                        <div class="mb-3 mt-5">
                            <label class="form-label">New Password</label>
                            <asp:TextBox class="form-control" ID="newpassword" runat="server" placeholder="Enter New Password" TextMode="Password"></asp:TextBox>
                           
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Confirm New Password</label>
                            <asp:TextBox class="form-control" ID="confirmnewpassword" runat="server" placeholder="Confirm New Password" TextMode="Password"></asp:TextBox>
                           
                            
                        </div>
                        <div class="d-grid gap-2">
                            <asp:Button class="btn btn-primary" ID="changeuserpassword" runat="server" Text="Change Password" OnClick="changeuserpassword_Click" />
                            <asp:Button class="btn btn-light" ID="backtologin" runat="server" Text="<- Back to Login" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end wrapper -->
</asp:Content>