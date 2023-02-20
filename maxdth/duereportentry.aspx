<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="duereportentry.aspx.cs" Inherits="maxdth.duereportentry" %>
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
                            <center></center>
                        </div>
                        <center>
                            <h4 class="mt-3 font-weight-bold">Add Details for Due Report</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Subscriber ID</label>
                            <asp:TextBox CssClass="form-control" ID="subscriberid" runat="server" TextMode="Number" placeholder="Subscriber ID"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ControlToValidate="subscriberid"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">DTH Operator</label>
                            <asp:DropDownList CssClass="form-control" ID="dthoperator" runat="server">
                                <asp:ListItem Text="-- Select Task Name --" Value="" />
                                <asp:ListItem Text="TATA PLAY" Value="TATA PLAY" />
                                <asp:ListItem Text="Sun Direct" Value="Sun Direct" />
                                <asp:ListItem Text="Airtel" Value="Airtel" />
                                <asp:ListItem Text="Videocon" Value="Videocon" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ControlToValidate="dthoperator"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Name</label>
                            <asp:TextBox CssClass="form-control" ID="customername" runat="server" placeholder="Customer Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ControlToValidate="customername"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Phone</label>
                            <asp:TextBox CssClass="form-control" ID="customerphone" runat="server" placeholder="Customer Phone Number" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerphone"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Area</label>
                            <asp:TextBox CssClass="form-control" ID="customerarea" runat="server" placeholder="Customer Area"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerarea"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Monthly Recharge Amount</label>
                            <asp:TextBox CssClass="form-control" ID="rechargeamount" runat="server" placeholder="259" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Required Field" ControlToValidate="rechargeamount"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Select Due Date</label>
                            <asp:TextBox CssClass="form-control" ID="duedate" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Required Field" ControlToValidate="duedate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" placeholder="Remarks" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="d-grid gap-2">
                            <!--Button-->
                            <asp:Button CssClass="form-control btn btn-primary" ID="duereportentrybutton" runat="server" Text="Submit Details" OnClick="duereportentrybutton_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
