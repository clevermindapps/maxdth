<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rechargeduereport.aspx.cs" Inherits="maxdth.rechargeduereport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <center>
                    <h5 style="color: red">Recharge Due Report</h5>
                </center>
                <hr />
                <div class="mb-3 mt-3">
                    <label class="form-label">Select Date</label>
                    <div class="input-group">
                        <asp:TextBox CssClass="form-control" ID="submissiondate" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:Button CssClass="btn btn-primary" ID="duereportbutton" runat="server" Text="Go" OnClick="duereportbutton_Click" />
                    </div>
                </div>
                <div>
                    <asp:GridView CssClass="table-responsive table-bordered" ID="duereportgridview" runat="server"></asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
