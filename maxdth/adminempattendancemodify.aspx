<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminempattendancemodify.aspx.cs" Inherits="maxdth.adminempattendancemodify" %>

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
                            </center>
                        </div>
                        <center>
                            <h4 class="mt-3 font-weight-bold">Modify Employee Attendance</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Attendance ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="attendanceid" runat="server" placeholder="Attendance ID"></asp:TextBox>
                                    <asp:Button CssClass="btn btn-primary" ID="attendanceidbutton" runat="server" Text="Get Details" CausesValidation="False" OnClick="attendanceidbutton_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Is Active</label>
                            <asp:DropDownList CssClass="form-control" ID="isactive" runat="server">
                                <asp:ListItem Text="-- Select Value --" Value=""></asp:ListItem>
                                <asp:ListItem Text="True" Value="True"></asp:ListItem>
                                <asp:ListItem Text="False" Value="False"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ControlToValidate="isactive"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Month Code</label>
                            <asp:TextBox CssClass="form-control" ID="monthcode" runat="server" placeholder="Month Code" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Employee Name</label>
                            <asp:TextBox CssClass="form-control" ID="empfullname" runat="server" placeholder="Employee Name" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Date and Time</label>
                            <asp:TextBox CssClass="form-control" ID="dateandtime" runat="server" placeholder="Date and Time" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Full Day or Half Day</label>
                            <asp:TextBox CssClass="form-control" ID="fulldayorhalfday" runat="server" placeholder="1.00" TextMode="Number"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*Please enter 0.5 or 1.0" ControlToValidate="fulldayorhalfday" MinimumValue="0.00" MaximumValue="1.00"></asp:RangeValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Is Onleave</label>
                            <asp:DropDownList CssClass="form-control" ID="isonleave" runat="server">
                                <asp:ListItem Text="-- Select Value --" Value=""></asp:ListItem>
                                <asp:ListItem Text="True" Value="True"></asp:ListItem>
                                <asp:ListItem Text="False" Value="False"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" placeholder="Remarks" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="d-grid gap-2">
                            <asp:Button CssClass="form-control btn btn-primary" ID="modifyattendancebutton" runat="server" Text="Modify Attendance" OnClick="modifyattendancebutton_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
