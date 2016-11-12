<%@ Page Title="Actvity Details" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="ActivityDetails.aspx.cs" Inherits="VREI.ActivityDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FrontendContent" runat="server">
    <div class="container">
        <h2><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></h2>
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource1" ItemType="VREI.activity">
                <ItemTemplate>
                    <h2><asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' /></h2>
                    <br />
                    <b>Description:</b><br />
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Item.Description.ToString().Replace(Environment.NewLine, "<br/>") %>' />
                    <br /><hr />
                    <b>Start Date:</b>
                    <asp:Label ID="FromDateLabel" runat="server" Text='<%# Bind("FromDate", "{0:dd/M/yyyy}") %>' />
                    <br /><hr />
                    <b>End Date:</b>
                    <asp:Label ID="ToDateLabel" runat="server" Text='<%# Bind("ToDate", "{0:dd/M/yyyy}") %>' />
                    <br /><hr />
                    <b>Facilitator(s):</b>
                    <asp:Label ID="FacilitatorLabel" runat="server" Text='<%# Bind("Facilitator") %>' />
                    <br /><hr />
                    <b>Date Created:</b>
                    <asp:Label ID="DateTimeCreatedLabel" runat="server" Text='<%# Bind("DateTimeCreated", "{0:dd/M/yyyy}") %>' />
                    <br /><hr />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/ActivityPhotos.aspx?ActId=" + Item.Id %>'><b>View Photos</b></asp:HyperLink>
                </ItemTemplate>
            </asp:FormView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbo_vreiEntities" DefaultContainerName="dbo_vreiEntities" EnableFlattening="False" EntitySetName="activities" AutoGenerateWhereClause="True" EntityTypeFilter="" Select="" Where="">
                <WhereParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="ActId" Type="Int32" />
                </WhereParameters>
            </asp:EntityDataSource>
        </div>
    </div>
</asp:Content>
