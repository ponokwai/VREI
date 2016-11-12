<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VREI.Default" 
    MetaDescription="VREI is an NGO with a vision to build a Nigerian society with value driven institution for sustainable development." 
    MetaKeywords="ngo, nigeria, society, value, government, institutions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FrontendContent" runat="server">
    <div class="container-fluid">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <asp:Repeater ID="Repeater1" runat="server" ItemType="VREI.homepageslider">
                    <ItemTemplate>
                        <div class="item">
                            <asp:Image ID="Image1" ImageUrl='<%# Item.ImageUrl %>' CssClass="img-responsive carousel-height" Width="100%" runat="server" />
                            <div class="carousel-caption">
                                <h4>
                                    <asp:Literal ID="Literal1" Text='<%# Item.CaptionHeading %>' runat="server"></asp:Literal></h4>
                                <p>
                                    <asp:Literal ID="Literal2" Text='<%# Item.CaptionDesc %>' runat="server"></asp:Literal>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <br />
    <div class="container">
        <asp:Label ID="lblText" runat="server" CssClass="page-text" Text="Label"></asp:Label>
    </div>
</asp:Content>
