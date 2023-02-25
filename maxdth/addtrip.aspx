<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addtrip.aspx.cs" Inherits="maxdth.addtrip" %>
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
                        <div class="text-start"></div>
                        <center>
                            <h4 class="mt-3 font-weight-bold">Add Your Travel Trip</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Travel Type</label>
                            <!--Drop Down-->
                            <asp:DropDownList CssClass="form-control" ID="traveltype" runat="server">
                                <asp:ListItem Text="-- Select Travel Type --" Value="" />
                                <asp:ListItem Text="Two Way" Value="Two Way" />
                                <asp:ListItem Text="One Way" Value="One Way" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ControlToValidate="traveltype"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">From Town</label>
                            <!--Drop Down-->
                            <asp:DropDownList CssClass="form-control" ID="fromtown" runat="server" AutoPostBack="True" DataTextField="townname" DataValueField="townid" DataSourceID="fromtownds"></asp:DropDownList><asp:SqlDataSource runat="server" ID="fromtownds" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT [townid], [townname] FROM [town_tbl]"></asp:SqlDataSource>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field " ControlToValidate="fromtown"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">To Town</label>
                            <!--Drop Down-->
                            <asp:DropDownList CssClass="form-control" ID="totown" runat="server" DataTextField="townname" DataValueField="townid" DataSourceID="totownds" AutoPostBack="True"></asp:DropDownList><asp:SqlDataSource runat="server" ID="totownds" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="SELECT [townid], [townname] FROM [town_tbl]"></asp:SqlDataSource>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field " ControlToValidate="totown"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Number of KMs</label>
                            <!--Drop Down-->
                            <asp:TextBox CssClass="form-control" ID="noofkms" runat="server" TextMode="Number" AutoPostBack="True" OnLoad="noofkms_Load"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field" ControlToValidate="noofkms"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Travel Amount</label>
                            <asp:TextBox CssClass="form-control" ID="travelamount" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <asp:TextBox CssClass="form-control" ID="remarks" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="d-grid gap-2">
                            <asp:Button CssClass="form-control btn btn-primary" ID="addtripbutton" runat="server" Text="Add Trip" OnClick="addtripbutton_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
