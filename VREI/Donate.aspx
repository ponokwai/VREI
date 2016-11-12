<%@ Page Title="Donate" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="VREI.Donate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FrontendContent" runat="server">
    <div class="container-fluid carousel-inner <%--page-banner--%>">
        <asp:Image ID="Image1" Width="100%" CssClass="img-responsive page-banner" runat="server" />
        <div class="carousel-caption glideLeft">
            <h4><%: Title %></h4>            
        </div>
    </div><br />
    <div class="container page-text-container">
        <div><br />
            <asp:Label ID="Label1" CssClass="page-text" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
