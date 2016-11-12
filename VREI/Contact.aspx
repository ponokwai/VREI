<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="VREI.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FrontendContent" runat="server">
    <%--<div class="container-fluid">
        <!-- Google Map API -->
        <script>
            function initMap() {
                var mapDiv = document.getElementById('map');
                var map = new google.maps.Map(mapDiv, {
                    center: { lat: 5.564787, lng: 5.795521 },
                    zoom: 15
                });
            }
        </script>
        <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBiMRHRC6WX2rFDYJcwG5K_9JhTZkeeyW0&callback=initMap">
        </script>

        <div id="map" style="width: 100%; height: 350px;"></div>

    </div>--%>
    
    <div class="container">
        <div class="row">
            <div class="col-xs-12 text-center">
                <h2><%: Title %></h2>
            </div>
        </div>
        <br />

        <div class="row">
            <div class="col-md-4 wow glideLeft2">
                <address>
                    CONTACT ADDRESS:
                    <br />
                    Masodje Junction<br />
                    Opposite Classical International School<br />
                    PTI Road<br />
                    Effurun<br />
                    Delta State<br />
                    Nigeria<br />
                    <abbr title="Phone">P:</abbr>
                    +234 (0) 8069475030; +234 (0) 80521044873
                </address>


                <address>
                    <strong>Email:</strong>   <a href="mailto:info@vrei.org.ng">info@vrei.org.ng</a>
                    <br />
                </address>
            </div>
            <div class="col-md-8 wow glideRight">
                <!-- Client Validation js -->
                <script type="text/javascript">
                    function validatePhoneAndEmail(source, args) {
                        var phoneNumber = document.getElementById('<%= txtYourNumber.ClientID %>');
                        var emailAddress = document.getElementById('<%= txtYourEmail.ClientID %>');
                        if (phoneNumber.value != '' || emailAddress.value != '') {
                            args.IsValid = true;
                        }
                        else {
                            args.IsValid = false;
                        }
                    }
                </script>


                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="FormError" HeaderText="Please correct the following errors:" />
                <asp:Panel ID="ContactFormPanel" runat="server">
                    Name: 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtYourName" CssClass="FormError" ErrorMessage="Enter your name" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtYourName" runat="server" CssClass="form-control"></asp:TextBox>
                    Phone Number:
                        <asp:TextBox ID="txtYourNumber" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                    Email:
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtYourEmail" CssClass="FormError" ErrorMessage="Enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneAndEmail" CssClass="FormError" Display="Dynamic" ErrorMessage="Enter your phone number or email address" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                    <asp:TextBox ID="txtYourEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    Comments:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtYourComments" CssClass="FormError" ErrorMessage="Enter a comment" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtYourComments" runat="server" TextMode="MultiLine" CssClass="form-control" ValidateRequestMode="Enabled"></asp:TextBox><br />
                    <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn btn-default" OnClick="Button1_Click" />
                </asp:Panel>
                <asp:Label ID="iMessage" runat="server" Text="Message Sent" CssClass="success text-center" Visible="false"></asp:Label>

            </div>
        </div>
    </div>
</asp:Content>
