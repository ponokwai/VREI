<%@ Page Title="Page Content Details" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="PageContentDetails.aspx.cs" Inherits="VREI.Manager.PageContentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BackendContent" runat="server">
    <div class="container body-content">
        <h2><%: Title %></h2>
        
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource1" GroupItemCount="1" ItemType="VREI.pagecontent">

                <EditItemTemplate>
                    <td runat="server" style="">
                        <b>PageTitle:</b><br />
                        <asp:TextBox ID="PageTitleTextBox" runat="server" ReadOnly="true" CssClass="form-control" Text='<%# Bind("PageTitle") %>' />
                        <br />
                        <b>Banner Image:</b><br />
                        <asp:Image ID="Image2" runat="server" CssClass="img-responsive img-thumbnail" ImageUrl='<%# BindItem.BannerUrl %>' />
                        <a class="pop-help" tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-placement="top" title="Recommended Size" data-content="1280px * 400px"><span class="glyphicon glyphicon-question-sign"></span></a>
                        <br />
                        <asp:FileUpload ID="FileUploadPageBanner" runat="server" CssClass="form-control" />
                        <%--<asp:TextBox ID="BannerUrlTextBox" runat="server" Text='<%# Bind("BannerUrl") %>' />--%>
                        <br />
                        <b>Page Text:</b><br />
                        <asp:TextBox ID="PageTextTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Text='<%# Bind("PageText") %>' />
                        <br />
                        <div class="btn-group">
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" CssClass="btn btn-success" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" CssClass="btn btn-default" Text="Cancel" />
                        </div>

                        <br />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate>
                    <td runat="server" style="">

                        <b>Page Title:</b><br />
                        <asp:Label ID="PageTitleLabel" runat="server" Text='<%# Eval("PageTitle") %>' />
                        <br />
                        <b>Page Banner:</b><br />
                        <asp:Image ID="Image1" runat="server" CssClass="img-responsive img-thumbnail" ImageUrl='<%# Item.BannerUrl %>' />
                        <%--<asp:Label ID="BannerUrlLabel" runat="server" Text='<%# Eval("BannerUrl") %>' />--%>
                        <br />
                        <b>PageText:</b><br />
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" BorderStyle="None" TextMode="MultiLine" Text='<%# Item.PageText %>' Width="90%"></asp:TextBox>
                        <%--<asp:Label ID="PageTextLabel" runat="server" Text='<%# Eval("PageText") %>' />--%>
                        <br />
                        <b>Edited By:</b><br />
                        <asp:Label ID="EditedByLabel" runat="server" Text='<%# Eval("EditedBy") %>' />
                        <br />
                        <b>Date-Time Edited:</b><br />
                        <asp:Label ID="DateTimeEditedLabel" runat="server" Text='<%# Eval("DateTimeEdited") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" CssClass="btn btn-default" Text="Edit" />
                        <br />
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                    <tr id="groupPlaceholder" runat="server">
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
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" AutoGenerateWhereClause="True" ConnectionString="name=dbo_vreiEntities" DefaultContainerName="dbo_vreiEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="pagecontents" Where="" OnUpdating="EntityDataSource1_Updating">
                <WhereParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int16" />
                </WhereParameters>
            </asp:EntityDataSource>
        
    </div>
</asp:Content>
