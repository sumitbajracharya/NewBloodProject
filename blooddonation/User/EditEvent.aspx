<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="EditEvent.aspx.cs" Inherits="User_EditEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="table table-bordered">
        <tr>
            <th colspan="2">Update Event</th>
        </tr>
        <tr>
            <td>Event Title</td>
            <td>
                <asp:TextBox ID="txtEventTitle" runat="server" cssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Event Date</td>
            <td>
                <asp:TextBox ID="txtEventDate" runat="server" cssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Time</td>
            <td>
                <asp:TextBox ID="txtStartingTime" runat="server" cssClass="form-control pull-left" Width="30%"></asp:TextBox>
                <asp:DropDownList ID="ddlStartingAmPm" runat="server" Width="10%" cssClass="form-control pull-left">
                    <asp:ListItem>am</asp:ListItem>
                    <asp:ListItem>pm</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="lblTo" runat="server" Text=" To " CssClass="pull-left"></asp:Label>
                <asp:TextBox ID="txtEndingTime" runat="server" cssClass="form-control pull-left" Width="30%"></asp:TextBox>
                <asp:DropDownList ID="ddlEndingAmPm" runat="server"  Width="10%" cssClass="form-control pull-left">
                    <asp:ListItem>am</asp:ListItem>
                    <asp:ListItem>pm</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Venue</td>
            <td>
                <asp:TextBox ID="txtVenue" runat="server" cssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Posted By</td>
            <td>
                <asp:TextBox ID="txtPosetedBy" runat="server" cssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Contact no.</td>
            <td>
                <asp:TextBox ID="txtContactNumber" runat="server" cssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" cssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Upload Image</td>
            <td>
                <asp:FileUpload ID="fupImage" runat="server" cssClass="btn btn-default" />
                <br />
                <asp:Image ID="imgEvent" runat="server" Height="190px" Width="310px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" cssClass="btn btn-default" OnClick="btnSubmit_Click"/>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" cssClass="btn btn-default" OnClick="btnCancel_Click"/>
            </td>
        </tr>
    </table>

</asp:Content>

