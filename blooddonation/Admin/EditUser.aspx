<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="Admin_EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <table class="table table-bordered">def
            <tr>
                <td class="col-sm-3">First Name</td>
                <td>
                    <asp:TextBox ID="txtFName" runat="server" cssClass="form-control" Width="50%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox ID="txtLName" runat="server" cssClass="form-control" Width="50%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Date of Birth</td>
                <td>
                    <asp:DropDownList ID="ddlYear" runat="server" cssClass="form-control pull-left" Width="60px" ></asp:DropDownList>
                    <asp:DropDownList ID="ddlMonths" runat="server" cssClass="form-control pull-left" Width="60px"></asp:DropDownList>
                    <asp:DropDownList ID="ddlDate" runat="server" cssClass="form-control" Width="60px"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                 <asp:TextBox ID="lblBloodgroup" cssClass="form-control" runat="server" Width="50"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>Permanent Address</td>
                <td>
                    <asp:TextBox ID="TxtPermanentAddress" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Current Address</td>
                <td>
                    <asp:TextBox ID="txtCurrentAddress" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>E-Mail</td>
                <td>
                    <asp:TextBox ID="txtEmail" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Donation Date</td>
                <td>
                    <asp:TextBox ID="txtLastDonationDate" cssClass="form-control" runat="server" Width="50%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Best Time To Contact</td>
                <td>
                    <asp:CheckBoxList ID="chkContactTime" runat="server">
                        <asp:ListItem>Anytime</asp:ListItem>
                        <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Afternoon</asp:ListItem>
                        <asp:ListItem>Evening</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Phone No.</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" cssClass="form-control" runat="server" Width="115"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mobile No.</td>
                <td>
                    <asp:TextBox ID="txtMobilenumber" cssClass="form-control" runat="server" Width="115"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Occupation</td>
                <td>
                    <asp:TextBox ID="txtOccupation" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Recent Medication</td>
                <td>
                    <asp:TextBox ID="txtMedication" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Heridetary Diseases</td>
                <td>
                    <asp:CheckBoxList ID="chkDisease" cssClass="form-control" runat="server">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Weight</td>
                <td>
                    <asp:TextBox ID="txtWeight" cssClass="form-control" runat="server" Width="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Habits</td>
                <td>
                    <asp:TextBox ID="txtHabits" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Best Availability</td>
                <td>&nbsp;</td>
            </tr>
           
            <tr>
                <td>Change Profile Picture</td>
                <td>
                 <asp:Image ID="Image1" runat="server" Height="122px" Width="127px" />   <br />
                    <asp:FileUpload ID="FileUpload1" CssClass="btn btn-default" runat="server" />
                 
                   
                </td>
            </tr>
            <tr>
               
                <td colspan="2" align="center">
                    <asp:Button ID="BtnSave" runat="server" CssClass="btn btn-default" Text="Save" />
                    <asp:Button ID="BtnRestore" runat="server" CssClass="btn btn-default" Text="Restore" />
                </td>
            </tr>
        </table>
</asp:Content>

