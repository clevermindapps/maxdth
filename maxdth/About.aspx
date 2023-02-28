<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="maxdth.About" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
            <br />
            <hr />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" OnLoad="TextBox1_Load"></asp:TextBox>
            <br />
            <hr />
            <asp:GridView CssClass="table-responsive table-bordered" ID="GridView2" runat="server"></asp:GridView>
            <hr />
            <asp:Chart ID="Chart1" runat="server">
                <Series>
                    <asp:Series Name="Series1"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </div>


    </div>
</asp:Content>
