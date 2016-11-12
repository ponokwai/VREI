<%@ Page Title="PageContent" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="PageContent.aspx.cs" Inherits="VREI.Manager.PageContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BackendContent" runat="server">
    <div class="container body-content">
        <h2><%: Title %></h2>
        
            <asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" DataKeyNames="Id" ItemType="VREI.pagecontent">


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
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Item.Id %>' />
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Management/PageContentDetails.aspx?Id=" + Item.Id %>'>
                                <asp:Label ID="PageTitleLabel" runat="server" Text='<%# Item.PageTitle %>' />
                            </asp:HyperLink></td><td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Item.BannerUrl %>' CssClass="img-responsive img-thumbnail" Width="400px" />
                            <%--<asp:Label ID="BannerUrlLabel" runat="server" Text='<%# Eval("BannerUrl") %>' />--%>
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="" class="table table-responsive">
                                    <tr runat="server" style="">
                                        <th runat="server">Id</th><th runat="server">Page Title</th><th runat="server">Banner</th></tr><tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>

            </asp:ListView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbo_vreiEntities" DefaultContainerName="dbo_vreiEntities" EnableFlattening="False" EntitySetName="pagecontents">
            </asp:EntityDataSource>
        
    </div>
</asp:Content>
