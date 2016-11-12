<%@ Page Title="Manage Activities" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Activities.aspx.cs" Inherits="VREI.Management.Activities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BackendContent" runat="server">
    <div class="container body-content">
        <h2><%: Title %></h2>
        <div style="overflow:auto">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource1" GroupItemCount="2" InsertItemPosition="FirstItem" ItemType="VREI.activity">

                <EditItemTemplate>
                    <td runat="server" style="">
                        <br />
                        <b>Title:</b>
                        <asp:TextBox ID="TitleTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Title") %>' />
                        <br />
                        <b>From Date:</b>
                        <asp:TextBox ID="FromDateTextBox" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Bind("FromDate") %>' />
                        <br />
                        <b>To Date:</b>
                        <asp:TextBox ID="ToDateTextBox" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Bind("ToDate") %>' />
                        <br />
                        <b>Facilitators:</b>
                        <asp:TextBox ID="FacilitatorTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Text='<%# Bind("Facilitator") %>' />
                        <br />

                        <b>Description:</b>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Text='<%# Bind("Description") %>' />
                        <br />
                        <asp:CheckBox ID="PublishCheckBox" runat="server" Checked='<%# Bind("Publish") %>' Text="Publish" />
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
                <InsertItemTemplate>
                    <td runat="server" style="">
                        <b>Title:</b>
                        <asp:TextBox ID="TitleTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Title") %>' />
                        <br />
                        <b>From Date:</b>
                        <asp:TextBox ID="FromDateTextBox" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Bind("FromDate") %>' />
                        <br />
                        <b>To Date:</b>
                        <asp:TextBox ID="ToDateTextBox" runat="server" CssClass="form-control" TextMode="Date" Text='<%# Bind("ToDate") %>' />
                        <br />

                        <b>Facilitator:</b>
                        <asp:TextBox ID="FacilitatorTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Text='<%# Bind("Facilitator") %>' />
                        <br />
                        <b>Description:</b>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Text='<%# Bind("Description") %>' />
                        <br />
                        <asp:CheckBox ID="PublishCheckBox" runat="server" Checked='<%# Bind("Publish") %>' Text="Publish" />
                        <br />
                        <div class="btn-group">
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" CssClass="btn btn-success" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" CssClass="btn btn-default" Text="Clear" />
                        </div>

                        <br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">
                        <b>Title:</b>
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                        <br /><hr />
                        <b>From Date:</b>
                        <asp:Label ID="FromDateLabel" runat="server" Text='<%# Eval("FromDate") %>' />
                        <br /><hr />
                        <b>To Date:</b>
                        <asp:Label ID="ToDateLabel" runat="server" Text='<%# Eval("ToDate") %>' />
                        <br /><hr />
                        <b>Facilitator:</b>
                        <asp:Label ID="FacilitatorLabel" runat="server" Text='<%# Eval("Facilitator") %>' />
                        <br /><hr />
                        <b>Description:</b><br />
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" BorderStyle="None" ReadOnly="true" Text='<%# Eval("Description") %>' Width="90%"></asp:TextBox>
                        <%--<asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />--%>
                        <br /><hr />
                        <asp:CheckBox ID="PublishCheckBox" runat="server" Checked='<%# Eval("Publish") %>' Enabled="false" Text="Publish" />
                        <br />
                        <b>Created By:</b>
                        <asp:Label ID="CreatedByLabel" runat="server" Text='<%# Eval("CreatedBy") %>' />
                        <br />
                        <b>Date-Time Created:</b>
                        <asp:Label ID="DateTimeCreatedLabel" runat="server" Text='<%# Eval("DateTimeCreated") %>' />
                        <br /><hr />
                        <b>Last Modified By:</b>
                        <asp:Label ID="LastModifiedByLabel" runat="server" Text='<%# Eval("LastModifiedBy") %>' />
                        <br />
                        <b>Date-Time Last Modified:</b>
                        <asp:Label ID="LastModifiedDateTimeLabel" runat="server" Text='<%# Eval("LastModifiedDateTime") %>' />
                        <br /><hr />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Management/ActivityPictures.aspx?ActId=" + Item.Id %>'><b>Update Pictures</b></asp:HyperLink>
                        <br />
                        <div class="btn-group">
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" CssClass="btn btn-danger" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" CssClass="btn btn-default" Text="Edit" />
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
                                        <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="btn btn-default" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="btn btn-default" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>

            </asp:ListView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbo_vreiEntities" DefaultContainerName="dbo_vreiEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="activities" OnDeleting="EntityDataSource1_Deleting" OnInserting="EntityDataSource1_Inserting" OnUpdating="EntityDataSource1_Updating" EntityTypeFilter="" OrderBy="it.[Id] DESC" Select="">
            </asp:EntityDataSource>
        </div>
    </div>
</asp:Content>
