<%@ Page Title="Role Manager" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ManageRole.aspx.cs" Inherits="VREI.Administrator.ManageRole" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BackendContent" runat="server">
    <div class="container body-content">
        <h2><%: Title %></h2>
        <div>
            <h3>Create Role</h3>
            Enter Name:
                <asp:TextBox ID="tbxCreateRole" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:Button ID="btnRole" runat="server" CssClass="btn btn-default" Text="Create Role" OnClick="btnRole_Click" />
            <br />
            <br />
            Roles:
            <asp:ListBox ID="lbxRoles" runat="server" CssClass="form-control"></asp:ListBox>
        </div>
    </div>
</asp:Content>
