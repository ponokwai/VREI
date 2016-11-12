<%@ Page Title="Activities" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="Activities.aspx.cs" Inherits="VREI.Activities" %>
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
        <div><br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource1" ItemType="VREI.activity">
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <tr style="">
                        
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/ActivityDetails.aspx?ActId=" + Item.Id %>'><asp:Label ID="TitleLabel" runat="server" Text='<%# Item.Title %>' /></asp:HyperLink></td><td>
                            <asp:Label ID="FromDateLabel" runat="server" Text='<%# Eval("FromDate", "{0:M/yyyy}") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ToDateLabel" runat="server" Text='<%# Eval("ToDate", "{0:M/yyyy}") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="" class="table table-responsive">
                                    <tr runat="server" style="">
                                        <th runat="server">Title</th><th runat="server">From Date</th><th runat="server">To Date</th></tr><tr runat="server" id="itemPlaceholder">                                        
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="" class="text-center">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ButtonCssClass="btn btn-default" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ButtonCssClass="btn btn-default" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                
                
                
            </asp:ListView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbo_vreiEntities" DefaultContainerName="dbo_vreiEntities" EnableFlattening="False" EntitySetName="activities" EntityTypeFilter="" Select="" Where="it.[Publish] == true"></asp:EntityDataSource>
        </div>
    </div>

</asp:Content>
