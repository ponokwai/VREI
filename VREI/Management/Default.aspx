<%@ Page Title="Manage Website" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VREI.Management.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BackendContent" runat="server">
    <div class="container body-content">
        <h2><%: Title %></h2>

            <h4>Welcome to VREI website management page. If you are here in error or have incorrect privilege, please log out and inform the website administrator</h4>

            <div style="overflow: auto">
                <table class="table table-responsive">
                    <tr>
                        <th>Role</th>
                        <th>Page</th>
                        <th>Description</th>
                    </tr>
                    <tr>
                        <td rowspan="3">Manager &amp; Administrator</td>
                        <td>Homepage Slider</td>
                        <td>Allows to update the website default page carousel sliders</td>
                    </tr>
                    <tr>
                        <td>Page Content</td>
                        <td>Allows to update all website page textual and graphic (except default page carousel) content</td>
                    </tr>
                    <tr>
                        <td>Activities</td>
                        <td>Create/Update/Delete programs or activities (including associated pictures)</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Administrator only</td>
                        <td>Users Dashboard</td>
                        <td>See all website user status and unlock locked user accounts</td>
                    </tr>
                    <tr>
                        <td>Manage User</td>
                        <td>Manage website users and their roles</td>
                    </tr>
                </table>
            </div>
        
    </div>
</asp:Content>
