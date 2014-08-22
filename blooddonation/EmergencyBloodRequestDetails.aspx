<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmergencyBloodRequestDetails.aspx.cs" Inherits="EmergencyBloodRequestDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <table class="table table-bordered"> 
       <tr><th colspan="2">Emergency Blood Request Detail</th></tr>
       
            <tr>
                <td class="col-sm-3">
                    <asp:Label ID="lblFullname" runat="server" Text="FullName"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblBloodgroup" runat="server" Text="BloodGroup"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblContactnumber" runat="server" Text="Contact Number"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPurpose" runat="server" Text="Purpose"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblHospitalPaper" runat="server" Text="Hospital Paper"></asp:Label>
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="77px" Width="100px" />
                </td>
            </tr>
        </table>
</asp:Content>

