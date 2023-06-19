<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="customernumbers.aspx.cs" Inherits="maxdth.customernumbers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                            <h4 class="mt-3 font-weight-bold">Add Customer Numbers</h4>
                        </center>
                        <div class="mb-3 mt-3">
                            <label class="form-label">Contact Number</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="contactnumber" runat="server" TextMode="Phone">
                                    </asp:TextBox>
                                    <asp:Button ID="submit" runat="server" Text="submit"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
