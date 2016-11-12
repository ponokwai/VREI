<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VREI.Account.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FrontendContent" runat="server">
    <div class="container body-content">
        <h2><%: Title %></h2>
        <div class="row">
            <div class="col-md-6 col-sm-8 col-xs-12">
                <asp:LoginView ID="LoginView1" runat="server">
                    <AnonymousTemplate>
                        <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" PasswordRecoveryText="Recover Password" PasswordRecoveryUrl="~/Account/RecoverPassword.aspx" DestinationPageUrl="~/Management/Default.aspx" VisibleWhenLoggedIn="False">
                            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                            <TextBoxStyle Font-Size="0.8em" />
                            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                        </asp:Login>
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        <p>You are already logged in. Go to <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Management/Default.aspx" runat="server">Management page</asp:HyperLink> or <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Account/ChangePassword.aspx" runat="server"> Change your Password</asp:HyperLink></p> <br />
                        <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="btn btn-default" />
                    </LoggedInTemplate>
                </asp:LoginView>
                
            </div>
        </div>
    </div>
</asp:Content>
