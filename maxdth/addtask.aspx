<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addtask.aspx.cs" Inherits="maxdth.addtask" %>
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
                            <h4 class="mt-3 font-weight-bold">Add New Task</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Task Name</label>
                            <!--Drop Down-->
                            <div class="form-group">
                                <asp:DropDownList CssClass="form-control" ID="taskname" runat="server">
                                    <asp:ListItem Text="-- Select Task Name --" Value="" />
                                    <asp:ListItem Text="New Connection" Value="New Connection" />
                                    <asp:ListItem Text="Service" Value="Service" />
                                    <asp:ListItem Text="Recharge" Value="Recharge" />
                                    <asp:ListItem Text="Shifting" Value="Shifting" />
                                    <asp:ListItem Text="Accessories" Value="Accessories" />
                                    <asp:ListItem Text="Pending Amount" Value="Pending Amount" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ControlToValidate="taskname" CssClass="form-control" ValidationGroup="addtaskgroup"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Name</label>
                            <!--TextBox-->
                            <asp:TextBox CssClass="form-control" ID="customername" runat="server" placeholder="Customer Name"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="form-control" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ControlToValidate="customername" ValidationGroup="addtaskgroup"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Phone Number</label>
                            <!--TextBox-->
                            <asp:TextBox CssClass="form-control" ID="customerphone" runat="server" placeholder="Customer Phone Number"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="form-control" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerphone" ValidationGroup="addtaskgroup"></asp:RequiredFieldValidator>
                        </div>
						<div class="mb-3">
                            <label class="form-label">Customer Area</label>
                            <!--TextBox-->
                            <asp:TextBox CssClass="form-control" ID="customerarea" runat="server" placeholder="Customer Area"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="form-control" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerarea" ValidationGroup="addtaskgroup"></asp:RequiredFieldValidator>
                        </div>
						<div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <!--TextBox-->
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" TextMode="MultiLine" placeholder="Remarks"> </asp:TextBox>
                        </div>
                        <div class="d-grid gap-2">
                            <!--Button-->
                            <asp:Button CssClass="form-control btn btn-primary" ID="addtaskbutton" runat="server" Text="Add Task" OnClick="addtaskbutton_Click" ValidationGroup="addtaskgroup" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end wrapper -->
</asp:Content>