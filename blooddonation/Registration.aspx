<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<table class="table table-bordered">

<tr><td colspan="2"><b>Registration Form</b><br /><asp:Label ID="lblResult" Text=" " runat="server" ForeColor="Red"></asp:Label></td></tr>
<tr><td class="col-sm-3">Full Name</td><td><asp:TextBox ID="TxtFirstName" cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td>Last Name</td><td><asp:TextBox ID="TxtLastName" cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td>Blood Group</td><td><asp:DropDownList ID="Ddlbloodgroup" cssClass="btn btn-default" runat="server" Width="30%">
    <asp:ListItem></asp:ListItem>
    <asp:ListItem>A +ve</asp:ListItem>
    <asp:ListItem>A -ve</asp:ListItem>
    <asp:ListItem>B +ve</asp:ListItem>
    <asp:ListItem>B -ve</asp:ListItem>

                
            </asp:DropDownList></td></tr>
<tr><td>Email Id</td><td><asp:TextBox ID="TxtEmail" cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td>Mobile Number</td><td> <asp:TextBox ID="Txtmobile" cssClass="form-control" runat="server"></asp:TextBox></td></tr>

<tr><td>Password</td><td> <asp:TextBox ID="TxtPassword" cssClass="form-control" runat="server" TextMode="Password"></asp:TextBox></td></tr>

<tr><td colspan="2" align="center"> <asp:Button ID="btnsubmit" 
        cssClass="btn btn-default" runat="server" Text="Submit" 
        onclick="btnsubmit_Click" /> <asp:Button ID="Button1" cssClass="btn btn-default" runat="server" Text="Cancel" /></td></tr>

</table>

 
</asp:Content>

