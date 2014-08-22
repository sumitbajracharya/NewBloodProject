<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Registration_2.aspx.cs" Inherits="User_Registration_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="table table-bordered">
            <tr>
                <td>Profile Picture</td>
                <td>
                    <asp:FileUpload ID="fuProfilePicture" cssClass="form-control" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Date of Birth</td>
                <td>
                    <asp:TextBox ID="txtDay" hight="34px" width="20%" txt="Day" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtMonth" hight="34px" width="20%" txt="Month"  runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtYear" hight="34px" width="40%" txt="Year"  runat="server"></asp:TextBox>
                                
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="rdbGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
           
            <tr>
                <td>Current Address</td>
                <td>
                    <asp:DropDownList ID="ddlCurrentAddress" cssClass="form-control" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            
            <tr>
                <td>Best Time To Contact</td>
                <td>
                    <asp:DropDownList ID="ddlBestTimeToContact" cssClass="form-control" runat="server">
                        <asp:ListItem Selected="True">AnyTime</asp:ListItem>
                        <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Afternoon</asp:ListItem>
                        <asp:ListItem>Evening</asp:ListItem>
                        <asp:ListItem>Night</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
            <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" cssClass="btn btn-default" runat="server" Text="Submit" />
                    <asp:Button ID="btnCancel" cssClass="btn btn-default" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>

</asp:Content>

