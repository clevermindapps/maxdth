<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminmodifytravel.aspx.cs" Inherits="maxdth.adminmodifytravel" %>
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
                            <h4 class="mt-3 font-weight-bold">Modify Travel Details</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Travel ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="travelid" runat="server" TextMode="Number">
                                    </asp:TextBox>
                                    <asp:Button CssClass="btn btn-primary" ID="travelidbutton" runat="server" Text="Get Travel Details" CausesValidation="False" OnClick="travelidbutton_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Is Active</label>
                            <asp:DropDownList CssClass="form-control" ID="isactive" runat="server">
                                <asp:ListItem Text="-- Select Value --" Value=""></asp:ListItem>
                                <asp:ListItem Text="True" Value="True"></asp:ListItem>
                                <asp:ListItem Text="False" Value="False" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ControlToValidate="isactive"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Travel Status</label>
                            <asp:DropDownList CssClass="form-control" ID="travelstatus" runat="server">
                                <asp:ListItem Text="-- Select Value --" Value="" />
                                <asp:ListItem Text="Pending" Value="Pending" />
                                <asp:ListItem Text="Approved" Value="Approved" />
                                <asp:ListItem Text="Completed" Value="Completed" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ControlToValidate="travelstatus"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Travel Type</label>
                            <asp:DropDownList CssClass="form-control" ID="traveltype" runat="server">
                                <asp:ListItem Text="-- Select Travel Type --" Value="" />
                                <asp:ListItem Text="Two Way" Value="Two Way" />
                                <asp:ListItem Text="One Way" Value="One Way" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ControlToValidate="traveltype"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                             <label class="form-label">From Town</label>
                            <asp:TextBox CssClass="form-control" ID="fromtown" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">To Town</label>
                            <asp:TextBox CssClass="form-control" ID="totown" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">No Of Kms</label>
                            <asp:TextBox CssClass="form-control" ID="noofkms" runat="server" TextMode="Number" OnLoad="noofkms_Load"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field" ControlToValidate="noofkms"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Amount</label>
                            <asp:TextBox CssClass="form-control" ID="amount" runat="server" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                             <label class="form-label">Remarks</label>
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="d-grid gap-2">
                            <asp:Button CssClass="form-control btn btn-primary" ID="modifytravelbutton" runat="server" Text="Modify Travel Details" OnClick="modifytravelbutton_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
