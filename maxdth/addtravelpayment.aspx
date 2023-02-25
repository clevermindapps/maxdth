<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addtravelpayment.aspx.cs" Inherits="maxdth.addtravelpayment" %>

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
                            <h4 class="mt-3 font-weight-bold">Add Travel Payment</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Employee Name</label>
                            <!--Drop Down-->
                            <asp:DropDownList CssClass="form-control" ID="employeename" runat="server">
                                <asp:ListItem Text="-- Select Value --" Value="" />
                                <asp:ListItem Text="Abdul Pahim Basha Shaik" Value="Abdul Pahim Basha Shaik" />
                                <asp:ListItem Text="Basheer Ahmad Shaik" Value="Basheer Ahmad Shaik" />
                                <asp:ListItem Text="Jaheem Basha Shaik" Value="Jaheem Basha Shaik" />
                                <asp:ListItem Text="Suman Samanthula" Value="Suman Samanthula" />
                                <asp:ListItem Text="CleverMind" Value="CleverMind" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ControlToValidate="employeename"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Amount</label>
                            <asp:TextBox CssClass="form-control" ID="travelamount" runat="server" placeholder="500" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ControlToValidate="travelamount"></asp:RequiredFieldValidator><br />
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*Please enter amount from 0 to 10000 only" ControlToValidate="travelamount" MinimumValue="0" MaximumValue="10000" Display="Static" Type="Integer"></asp:RangeValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Payment Date</label>
                            <asp:TextBox CssClass="form-control" ID="paymentdate" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ControlToValidate="paymentdate"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="d-grid gap-2">
                            <asp:Button CssClass="form-control btn btn-primary" ID="addtravelpaymentbutton" runat="server" Text="Add Travel Payment" OnClick="addtravelpaymentbutton_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
