<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="emptravelpayment.aspx.cs" Inherits="maxdth.emptravelpayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Travel Payment Report</h5>
                <hr />
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
