<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dealeradd.aspx.cs" Inherits="maxdth.dealeradd" %>
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
                            <h4 class="mt-3 font-weight-bold">Add New Dealer</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Dealer ID</label>
                            <asp:TextBox CssClass="form-control" ID="dealerid" runat="server" placeholder="Dealer ID"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ControlToValidate="dealerid"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Dealer Name</label>
                            <asp:TextBox CssClass="form-control" ID="dealername" runat="server" placeholder="Dealer Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ControlToValidate="dealername"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Dealer Phone</label>
                            <asp:TextBox CssClass="form-control" ID="dealerphone" runat="server" placeholder="Dealer Phone"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field" ControlToValidate="dealerphone"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Dealer Area</label>
                            <asp:TextBox CssClass="form-control" ID="dealerarea" runat="server" placeholder="Dealer Area"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field" ControlToValidate="dealerarea"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" placeholder="Remarks" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="d-grid gap-2">
                            <!--Button-->
                            <asp:Button CssClass="form-control btn btn-primary" ID="adddealerbutton" runat="server" Text="Add Dealer" OnClick="adddealerbutton_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
