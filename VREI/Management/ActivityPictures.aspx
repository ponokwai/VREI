<%@ Page Title="Activity Pictures" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ActivityPictures.aspx.cs" Inherits="VREI.Management.ActivityPictures" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BackendContent" runat="server">
    <div class="container body-content">
        <h2>
            <asp:Literal ID="ltlTitle" runat="server"></asp:Literal></h2>
        <div style="overflow:auto">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id, ImageUrl" DataSourceID="EntityDataSource1" GroupItemCount="2" InsertItemPosition="FirstItem" ItemType="VREI.activitypic">

                <EditItemTemplate>
                    <td runat="server" style="">
                        <asp:Image ID="Image2" ImageUrl='<%# BindItem.ImageUrl %>' CssClass="img-responsive img-thumbnail img-uploaded" runat="server" />
                        <b>Upload Image:</b>
                        <a class="pop-help" tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-placement="top" title="Recommended Size" data-content="522px * 295px"><span class="glyphicon glyphicon-question-sign"></span></a>
                        <br />
                        <asp:FileUpload ID="FileUploadEditItem" CssClass="form-control" runat="server" />
                        <br />
                        <b>Description:</b>
                        <asp:TextBox ID="ImageDescriptionTextBox" CssClass="form-control" runat="server" Text='<%# Bind("ImageDescription") %>' />
                        <br />
                        <div class="btn-group">
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" CssClass="btn btn-danger" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" CssClass="btn btn-default" Text="Cancel" />
                        </div>

                        <br />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No activity image is available</td>
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
                <InsertItemTemplate>
                    <td runat="server" style="">
                        <b>Upload Image:</b>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Upload an Image" ControlToValidate="FileUploadInsertItem" SetFocusOnError="true" ValidationGroup="ValInsertItem" Display="Dynamic" CssClass="FormError"></asp:RequiredFieldValidator>
                        <a class="pop-help" tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-placement="top" title="Recommended Size" data-content="522px * 295px"><span class="glyphicon glyphicon-question-sign"></span></a>
                        <br />
                        <asp:FileUpload ID="FileUploadInsertItem" CssClass="form-control" runat="server" />
                        <br />
                        <b>Description:</b>
                        <asp:TextBox ID="ImageDescriptionTextBox" runat="server" CssClass="form-control" Text='<%# Bind("ImageDescription") %>' />
                        <br />
                        <div class="btn-group">
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" CssClass="btn btn-success" ValidationGroup="ValInsertItem" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" CssClass="btn btn-default" Text="Clear" />
                        </div>
                        <br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">
                        <asp:Image ID="Image1" runat="server" CssClass="img-responsive img-thumbnail img-uploaded" ImageUrl='<%# Item.ImageUrl %>' />
                        <%--<asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />--%>
                        <br />
                        <b>Description:</b>
                        <asp:Label ID="ImageDescriptionLabel" runat="server" Text='<%# Eval("ImageDescription") %>' />
                        <br />
                        <b>Edited By:</b>
                        <asp:Label ID="CreatedByLabel" runat="server" Text='<%# Item.EditedBy %>' />
                        <br />
                        <b>Date-Time Edited:</b>
                        <asp:Label ID="DateTimeCreatedLabel" runat="server" Text='<%# Item.DateTimeEdited %>' />
                        <br />
                        <div class="btn-group">
                            <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CssClass="btn btn-default" CommandName="Edit" Text="Edit" />
                        </div>

                        <br /><hr />
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
                            <td runat="server" style="" class="text-center">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
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
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbo_vreiEntities" DefaultContainerName="dbo_vreiEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="activitypics" AutoGenerateWhereClause="True" EntityTypeFilter="" OnDeleted="EntityDataSource1_Deleted" OnInserting="EntityDataSource1_Inserting" OnUpdating="EntityDataSource1_Updating" Select="" Where="">
                <WhereParameters>
                    <asp:QueryStringParameter Name="ActivityId" QueryStringField="ActId" Type="Int32" />
                </WhereParameters>
            </asp:EntityDataSource>
        </div>
    </div>
</asp:Content>
