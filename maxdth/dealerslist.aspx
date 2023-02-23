<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dealerslist.aspx.cs" Inherits="maxdth.dealerslist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Dealers List</h5>
                <hr />
                <asp:GridView CssClass="table-responsive table-bordered" ID="dealerslistgridview" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
