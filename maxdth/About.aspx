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
            <br />
            <br />
            <h4>Gridview By Using Dropdown</h4>
            <hr />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        </div>
    </div>
</asp:Content>
