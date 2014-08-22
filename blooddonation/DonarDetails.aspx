<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DonarDetails.aspx.cs" Inherits="DonarDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <table class="table table-bordered">

    
    <tr>
    
    <td class="col-sm-3">Name</td>
    <td>
        <asp:Label ID="LblName" runat="server" Text="Label"></asp:Label></td>
    <td rowspan='4' class="col-sm-2">
        <asp:Image ID="ImgProfilePicture" runat="server" Width="150" CssClass="img-thumbnail" ImageUrl="~/Assets/Images/Slider/slider1.jpg" />
   </td>
     </tr>

    <tr>
    <td>Gender</td>
    <td><asp:Label ID="LblGender" runat="server" Text="Label"></asp:Label></td>
    </tr>

    <tr>
    <td>Adderss</td>
    <td><asp:Label ID="LblAddress" runat="server" Text="Label"></asp:Label></td>
    </tr>

    <tr>
    <td>Blood Group</td>
    <td><asp:Label ID="LblBloodGroup" runat="server" Text="Label"></asp:Label></td>
    </tr>

    <tr>
    <td class="style1">Date of Birth</td>
    <td colspan='2'><asp:Label ID="LblDOB" runat="server" Text="Label"></asp:Label></td>
    </tr>

    <tr>
    <td class="style1">Last Donation date</td>
    <td colspan='2'><asp:Label ID="LblLastDonationdate" runat="server" Text="Label"></asp:Label></td>
    </tr>



    <tr>
    <td class="style1">Best Avaliability</td>
    <td colspan='2'><asp:Label ID="LblBestTime" runat="server" Text="Label"></asp:Label></td>
    </tr>

    <tr>
    <td colspan='3' align="center"><asp:button ID="btnRequest" runat="server" Text="send Request" cssClass="btn btn-default"/></td>
    </tr>

    </table>

</asp:Content>

