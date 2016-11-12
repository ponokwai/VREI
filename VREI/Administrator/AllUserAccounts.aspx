<%@ Page Title="Manage User Accounts" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="AllUserAccounts.aspx.cs" Inherits="VREI.AllUserAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BackendContent" runat="server">
    <div class="container body-content">
        <h2><%: Title %></h2>
        <div>
            <h4>All Accounts</h4>
            <div style="overflow: auto">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
            <br />
            <hr />
            <div class="form-group">
                User Name: 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbxUserName" CssClass="FormError" Display="Dynamic" ErrorMessage="Enter UserName"></asp:RequiredFieldValidator>
                &nbsp;<asp:Label ID="lblUserFeed" CssClass="lblFeedBack" runat="server"></asp:Label>
                <asp:TextBox ID="tbxUserName" placeholder="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                <br />

                <asp:Button ID="btnUnlock" runat="server" Text="Unlock User" CssClass="btn btn-success" OnClick="btnUnlock_Click" />

            </div>
        </div>
    </div>
</asp:Content>
