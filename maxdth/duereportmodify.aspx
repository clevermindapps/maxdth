<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="duereportmodify.aspx.cs" Inherits="maxdth.duereportmodify" %>

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
                            <h4 class="mt-3 font-weight-bold">Modify Details for Due Report</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Subscriber ID</label>
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control" ID="subscriberid" runat="server" TextMode="Number"></asp:TextBox>
                                <asp:Button CssClass="btn btn-primary" ID="modifybutton" runat="server" Text="Go" OnClick="modifybutton_Click" CausesValidation="False" />
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ControlToValidate="subscriberid"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Is Active</label>
                            <asp:DropDownList CssClass="form-control" ID="isactive" runat="server">
                                <asp:ListItem Text="-- Select Status -->" Value="" />
                                <asp:ListItem Text="True" Value="True" />
                                <asp:ListItem Text="False" Value="True" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ControlToValidate="isactive"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">DTH Operator</label>
                            <asp:DropDownList CssClass="form-control" ID="dthoperator" runat="server">
                                <asp:ListItem Text="-- Select DTH Operator --" Value="" />
                                <asp:ListItem Text="TATA PLAY" Value="TATA PLAY" />
                                <asp:ListItem Text="Sun Direct" Value="Sun Direct" />
                                <asp:ListItem Text="Airtel" Value="Airtel" />
                                <asp:ListItem Text="Videocon" Value="Videocon" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ControlToValidate="dthoperator"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Name</label>
                            <asp:TextBox CssClass="form-control" ID="customername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field" ControlToValidate="customername"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Phone</label>
                            <asp:TextBox CssClass="form-control" ID="customerphone" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerphone"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Customer Area</label>
                            <asp:TextBox CssClass="form-control" ID="customerarea" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Required Field" ControlToValidate="customerarea"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Monthly Recharge Amount</label>
                            <asp:TextBox CssClass="form-control" ID="monthlyamount" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Required Field" ControlToValidate="monthlyamount"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Old Due Date</label>
                            <asp:TextBox CssClass="form-control" ID="duedate" runat="server" TextMode="DateTime"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Required Field" ControlToValidate="duedate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">New Due Date</label>
                            <asp:TextBox CssClass="form-control" ID="newduedate" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Required Field" ControlToValidate="newduedate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="d-grid gap-2">
                            <asp:Button CssClass="form-control btn btn-primary" ID="modifyduereportbutton" runat="server" Text="Modify Details" OnClick="modifyduereportbutton_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
