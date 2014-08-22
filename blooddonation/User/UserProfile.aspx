<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="User_UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p align="right"><a href="EditUser.aspx" >Edit </a> </p>

    <table class="table table-bordered">
    
    <tr>
    <td rowspan='4'> <asp:ImageButton ID="ImgProfilePicture" runat="server" Width="197px" /></td>
    <td>Name:</td>
    <td><asp:Label ID="lblName" runat="server" Text=" "></asp:Label></td>
    </tr>

    <tr>
    <td>Gender:</td>
    <td><asp:Label ID="lblGender" runat="server" Text=" "></asp:Label></td>
    </tr>

    <tr>
    <td>Adderss:</td>
    <td><asp:Label ID="lblAdderss" runat="server" Text=" "></asp:Label></td>
    </tr>

    <tr>
    <td>Blood Group:</td>
    <td><asp:Label ID="lblBloodGroup" runat="server" Text=" "></asp:Label></td>
    </tr>

    <tr>
    <td>Date of Birth:</td>
    <td colspan='2'><asp:Label ID="lblDOB" runat="server" Text=" "></asp:Label></td>
    </tr>

    <tr>
    <td>Last Donation date:</td>
    <td colspan='2'><asp:Label ID="lblLastDonationdate" runat="server" Text=" "></asp:Label></td>
    </tr>

    <tr>
    <td>Best Avaliability:</td>
    <td colspan='2'><asp:Label ID="lblBestTime" runat="server" Text=" "></asp:Label></td>
    </tr>

    </table>
</asp:Content>

