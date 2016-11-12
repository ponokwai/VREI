<%@ Page Title="Recover Password" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="VREI.Account.RecoverPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FrontendContent" runat="server">
    <div class="container body-content">
        <h2><%: Title %></h2>
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-10">
                <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" MailDefinition-BodyFileName="~/App_Data/PasswordRecovery.txt" MailDefinition-From="noreply@vrei.org.ng" MailDefinition-Subject="VREI.org.ng new password" SuccessPageUrl="~/Account/Login.aspx" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
                    <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
<MailDefinition BodyFileName="~/App_Data/PasswordRecovery.txt" From="noreply@vrei.org.ng" Subject="VREI.org.ng new password"></MailDefinition>
                    <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                </asp:PasswordRecovery>
            </div>
        </div>
    </div>
</asp:Content>
