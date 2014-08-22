<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="PostEventForm.aspx.cs" Inherits="User_PostEventForm" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        
        <table class="table table-bordered">
            <tr>
                <th colspan="2">Event Form</th>
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
                    
                    <cc1:CalendarExtender ID="txtEventDate_CalendarExtender" runat="server" 
                        TargetControlID="txtEventDate">
                    </cc1:CalendarExtender>
                    
                </td>
            </tr>
            <tr>
                <td>Time</td>
                <td>
                    <asp:TextBox ID="txtStartingTime" runat="server" cssClass="form-control pull-left" Width="20%" Text="h:m"></asp:TextBox>
                    <asp:DropDownList ID="ddlStartingAmPm" runat="server" Width="15%" cssClass="form-control pull-left">
                        <asp:ListItem Selected="True">am</asp:ListItem>
                        <asp:ListItem>pm</asp:ListItem>
                    </asp:DropDownList> &nbsp;&nbsp; 
                    <asp:Label ID="lblTo" runat="server" Text="To" cssClass="pull-left"></asp:Label>
                    &nbsp;&nbsp;
                       <asp:TextBox ID="txtEndingTime" runat="server" cssClass="form-control pull-left" Width="20%" Text="h:m"></asp:TextBox>
                    <asp:DropDownList ID="ddlEndingTimeAmPm" runat="server" Width="15%" cssClass="form-control pull-left">
                        <asp:ListItem Selected="True">am</asp:ListItem>
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
                    <asp:TextBox ID="txtContactNo" runat="server" cssClass="form-control"></asp:TextBox>
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
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                        cssClass="btn btn-default" onclick="btnSubmit_Click"/>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" cssClass="btn btn-default"/>
                    <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
</asp:Content>

