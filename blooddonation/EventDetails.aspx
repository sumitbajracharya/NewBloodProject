<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EventDetails.aspx.cs" Inherits="EventDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


  <table class="table table-bordered">
            <tr>
                <td colspan="2">
                    <asp:Image ID="imgEvent" runat="server" CssClass="img-thumbnail" />
                  
                </td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    <asp:Label ID="lblDate" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Time</td>
                <td> <asp:Label ID="lblTime" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Venue</td>
                <td> <asp:Label ID="lblVenue" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Posted By</td>
                <td> <asp:Label ID="lblPostedBy" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>Description</td>
                <td> <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
</asp:Content>

