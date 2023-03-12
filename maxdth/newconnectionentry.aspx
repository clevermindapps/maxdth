<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newconnectionentry.aspx.cs" Inherits="maxdth.newconnectionentry" %>
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
                            <h4 class="mt-3 font-weight-bold">Add New Connection Details</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Month Code and Name</label>
                            <asp:DropDownList CssClass="form-control" ID="monthcodename" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ControlToValidate="monthcodename"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">DTH Operator</label>
                            <asp:DropDownList CssClass="form-control" ID="dthoperator" runat="server">
                                <asp:ListItem Text="-- Select DTH Operator --" Value="" />
                                <asp:ListItem Text="TATA PLAY" Value="TATA PLAY" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvdthoperator" runat="server" ErrorMessage="*Required Field" ControlToValidate="dthoperator" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">New Connection Type</label>
                            <asp:DropDownList CssClass="form-control" ID="connectiontype" runat="server">
                                <asp:ListItem Text="-- Select Connection Type --" Value="" />
                                <asp:ListItem Text="Full Set" Value="Full Set" />
                                <asp:ListItem Text="Box Set" Value="Box Set" />
                                <asp:ListItem Text="Only Box" Value="Only Box" />
                                <asp:ListItem Text="Binge Full Set" Value="Binge Full Set" />
                                <asp:ListItem Text="Binge Box Set" Value="Binge Box Set" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ControlToValidate="connectiontype"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Pack Details</label>
                            <asp:TextBox CssClass="form-control" ID="packdetails" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ControlToValidate="packdetails"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Connection Given Date</label>
                            <asp:TextBox CssClass="form-control" ID="congivendate" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field" ControlToValidate="congivendate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Monthly Recharge Amount</label>
                            <asp:TextBox CssClass="form-control" ID="monthlyamount" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Required Field" ControlToValidate="monthlyamount"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Due Date</label>
                            <asp:TextBox CssClass="form-control" ID="duedate" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Required Field" ControlToValidate="duedate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Name</label>
                            <asp:TextBox CssClass="form-control" ID="customername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Required Field" ControlToValidate="customername"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Phone Number</label>
                            <asp:TextBox CssClass="form-control" ID="customerphone" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerphone"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Area</label>
                            <asp:DropDownList CssClass="form-control" ID="customerareadropdown" runat="server" OnSelectedIndexChanged="customerareadropdown_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                            <br />
                            <asp:TextBox CssClass="form-control" ID="customerareaothertbox" runat="server" Enabled="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerareadropdown"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerareaothertbox" Enabled="False"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Subscriber ID</label>
                            <asp:TextBox CssClass="form-control" ID="subscriberid" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*Required Field" ControlToValidate="subscriberid"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Promoter Name</label>
                            <asp:DropDownList CssClass="form-control" ID="promoterlist" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*Required Field" ControlToValidate="promoterlist"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Sales Person Name</label>
                            <asp:TextBox CssClass="form-control" ID="salesperson" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*Required Field" ControlToValidate="salesperson"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Actual Price</label>
                            <asp:TextBox CssClass="form-control" ID="actualprice" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*Required Field" ControlToValidate="actualprice"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Discount</label>
                            <asp:TextBox CssClass="form-control" ID="discount" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*Required Field" ControlToValidate="discount"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Dealer Commission</label>
                            <asp:TextBox CssClass="form-control" ID="commission" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*Required Field" ControlToValidate="commission"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Received Amount</label>
                            <asp:TextBox CssClass="form-control" ID="receivedamount" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*Required Field" ControlToValidate="receivedamount"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">EVD Amount</label>
                            <asp:TextBox CssClass="form-control" ID="evdamount" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*Required Field" ControlToValidate="evdamount"></asp:RequiredFieldValidator>
                        </div>
                        <div class="d-grid gap-2">
                            <!--Button-->
                            <asp:Button CssClass="form-control btn btn-primary" ID="addconnectionbutton" runat="server" Text="Add Connection Details" OnClick="addconnectionbutton_Click"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
