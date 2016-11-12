<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="ActivityPhotos.aspx.cs" Inherits="VREI.ActivityPhotos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FrontendContent" runat="server">
    <div class="container body-content">
        <h2>
            <asp:Literal ID="ltlTitle" runat="server"></asp:Literal></h2>
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server" ItemType="VREI.activitypic">
                <ItemTemplate>
                    <div class="col-sm-6 img-col-proj">
                        <asp:Image ID="imgPic" runat="server" ImageUrl='<%# Item.ImageUrl %>' CssClass="activity-pics img-responsive" />
                        <b><asp:Literal ID="ltlDesc" runat="server" Text='<%# Item.ImageDescription %>' ></asp:Literal></b>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
