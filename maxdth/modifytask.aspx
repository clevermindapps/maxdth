<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="modifytask.aspx.cs" Inherits="maxdth.modifytask" %>
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
                            <h4 class="mt-3 font-weight-bold">Modify Task</h4>
                        </center>
                        
                        <div class="mb-3 mt-3">
                            <label class="form-label">Task ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="taskid" runat="server" placeholder="Task ID" TextMode="Number"></asp:TextBox>
                                    <asp:Button CssClass="btn btn-primary" ID="taskidbutton" runat="server" Text="Get Task Details" CausesValidation="False" OnClick="taskidbutton_Click" />
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ControlToValidate="taskid"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="mb-3">
                             <label class="form-label">Is Active</label>
                            <asp:DropDownList CssClass="form-control" ID="isactive" runat="server">
                                <asp:ListItem Text="True" Value="True"></asp:ListItem>
                                <asp:ListItem Text="False" Value="False"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ControlToValidate="isactive"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Task Status</label>
                            <asp:DropDownList CssClass="form-control" ID="taskstatus" runat="server">
                                <asp:ListItem Text="Pending" Value="Pending" />
                                <asp:ListItem Text="In Progress" Value="In Progress" />
                                <asp:ListItem Text="Completed" Value="Completed" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ControlToValidate="taskstatus"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field" ControlToValidate="taskname"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Name</label>
                            <!--TextBox-->
                            <asp:TextBox CssClass="form-control" ID="customername" runat="server" placeholder="Customer Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Required Field" ControlToValidate="customername"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Phone Number</label>
                            <!--TextBox-->
                            <asp:TextBox CssClass="form-control" ID="customerphone" runat="server" placeholder="Customer Phone Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerphone"></asp:RequiredFieldValidator>
                        </div>
						<div class="mb-3">
                            <label class="form-label">Customer Area</label>
                            <!--TextBox-->
                            <asp:TextBox CssClass="form-control" ID="customerarea" runat="server" placeholder="Customer Area"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerarea"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Amount Collected</label>
                            <asp:TextBox CssClass="form-control" ID="amount" runat="server" placeholder="Amount"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Required Field" ControlToValidate="amount"></asp:RequiredFieldValidator>
                        </div>
						<div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <!--TextBox-->
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" TextMode="MultiLine" placeholder="Remarks"> </asp:TextBox>
                        </div>
                        <div class="d-grid gap-2">
                            <!--Button-->
                            <asp:Button CssClass="form-control btn btn-primary" ID="modifytaskbutton" runat="server" Text="Modify Task" OnClick="modifytaskbutton_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end wrapper -->
</asp:Content>
