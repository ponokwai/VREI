<%@ Page Title="Change Your Password" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="VREI.Account.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FrontendContent" runat="server">
    <div class="container body-content">
        <h2><%: Page.Title %></h2>
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12">
                <asp:ChangePassword ID="ChangePassword1" runat="server" ContinueDestinationPageUrl="~/Management/Default.aspx" MailDefinition-From="noreply@vrei.org.ng" MailDefinition-Subject="VREI.org.ng Password Changed" SuccessPageUrl="~/Management/Default.aspx" MailDefinition-BodyFileName="~/App_Data/PasswordChange.txt" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
                    <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
<MailDefinition BodyFileName="~/App_Data/PasswordChange.txt" From="noreply@vrei.org.ng" Subject="VREI.org.ng Password Changed"></MailDefinition>
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                </asp:ChangePassword>
            </div>
        </div>
    </div>
</asp:Content>
