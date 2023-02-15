<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="maxdth.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <h2>This is About Us page</h2>
            <asp:Button ID="testing" runat="server" Text="Testing" onclick="testing_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="yyyymmddlable" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="yyyymmlable" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>
