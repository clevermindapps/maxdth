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
            <asp:Chart ID="Chart1" runat="server" DataSourceID="testingchartds" Width="1000px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="userfullname" YValueMembers="Column1"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource runat="server" ID="testingchartds" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="select COUNT(monthcode), userfullname from attendance_tbl group by userfullname"></asp:SqlDataSource>

            <hr />
            <br />
            <br />
            <h2>Bar Chart 2</h2>
            <asp:Chart ID="barchart" runat="server" DataSourceID="empatnDS" OnLoad="barchart_Load">
                <Series>
                    <asp:Series Name="Series1" XValueMember="userfullname" YValueMembers="noofworkingdays"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource runat="server" ID="empatnDS" ConnectionString="<%$ ConnectionStrings:maxdbConnectionString %>" SelectCommand="select userfullname, count(fulldayorhalfday) as noofworkingdays from attendance_tbl group by userfullname"></asp:SqlDataSource>

            <br />
            <br />
            <hr />
            <asp:GridView CssClass="table-responsive table-bordered" ID="GridView3" runat="server" DataSourceID="empatnDS" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" OnSelectedIn="" PageSize="20" BorderStyle="Solid" BorderWidth="2px" ShowFooter="True">
                <Columns>
                    <asp:BoundField DataField="userfullname" HeaderText="Employee Name" SortExpression="userfullname"></asp:BoundField>
                    <asp:BoundField DataField="noofworkingdays" HeaderText="No of Working Days" ReadOnly="True" SortExpression="noofworkingdays"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />

             <section>
        <div class="row">
            <div class="col-12">
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="To Display User Details"></asp:Label><br />

                <asp:Button ID="userbtn" runat="server" Text="Click Here" OnClick="userbtn_Click" /><br />
                <br />

                <asp:GridView ID="usertbl" runat="server"></asp:GridView>
            </div>
        </div>
    </section>

    <section>
         <div class="row">
            <div class="col-12">
                <asp:Label ID="Label2" runat="server" Text="Count & Disply Data"></asp:Label>
                <asp:TextBox ID="empid" runat="server"></asp:TextBox>
                <asp:Button ID="Show" runat="server" Text="Button" OnClick="Show_Click" />
                <asp:GridView ID="atndscount" runat="server"></asp:GridView>
               
                </div>
             </div>
    </section>
     <section>
         <div class="row">
            <div class="col-12">
                <asp:Label ID="Label3" runat="server" Text="Total Amount Of Travel Payment" OnLoad="Label3_Load"></asp:Label>
               <%-- <asp:Button ID="sum" runat="server" Text="Button" OnClick="sum_Click" />--%>
                <asp:GridView ID="amount" runat="server"></asp:GridView>
               
               
                </div>
             </div>
    </section>

        </div>
    </div>


  
   

</asp:Content>
