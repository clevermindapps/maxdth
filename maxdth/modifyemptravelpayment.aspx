<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="modifyemptravelpayment.aspx.cs" Inherits="maxdth.modifyemptravelpayment" %>
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
                            <h4 class="mt-3 font-weight-bold">Modify Travel Payment Details</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Payment ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="paymentid" runat="server" TextMode="Number"></asp:TextBox>
                                    <asp:Button CssClass="btn btn-primary" ID="paymentidbutton" runat="server" Text="Get Payment Details" CausesValidation="False" OnClick="paymentidbutton_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                             <label class="form-label">Employee Name</label>
                            <asp:TextBox CssClass="form-control" ID="empname" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                             <label class="form-label">Amount</label>
                            <asp:TextBox CssClass="form-control" ID="amount" runat="server" ReadOnly="false" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                             <label class="form-label">Paid Date</label>
                            <asp:TextBox CssClass="form-control" ID="paiddate" runat="server"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" ReadOnly="false" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Button CssClass="form-control btn btn-primary" ID="travelpayment" runat="server" Text="Modify Travel Payment" OnClick="travelpayment_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
