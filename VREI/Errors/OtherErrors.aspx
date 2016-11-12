<%@ Page Title="An Error Has Occured" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="OtherErrors.aspx.cs" Inherits="VREI.Errors.OtherErrors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FrontendContent" runat="server">
    <div class="container body-content">
        <h2><%: Title %></h2>
        <p>An error has occurred in the page. The error has been logged and will be fixed soon.</p>
        <br />
        <p>VREI Team</p>
    </div>
</asp:Content>
