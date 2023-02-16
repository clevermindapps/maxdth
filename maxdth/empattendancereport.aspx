<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="empattendancereport.aspx.cs" Inherits="maxdth.empattendancereport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div>
                <br />
                <h5 style="color:red">Overall Attendance Report</h5>
                <br />
                <asp:GridView CssClass="table-responsive" ID="empattendance" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
