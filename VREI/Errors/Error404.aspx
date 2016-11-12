<%@ Page Title="Page Not Found" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="Error404.aspx.cs" Inherits="VREI.Errors.Error404" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FrontendContent" runat="server">
    <div class="container body-content">
        <h1><%: Title %></h1>
        <p>The page you requested cannot be found. Please check <a runat="server" href="~/">Homepage</a> or choose a different page from the Menu.</p>
        <p>&nbsp;</p>
        <p>VREI Team</p>
    </div>
</asp:Content>
