<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
    

 
    <h3>Enter Email address</h3>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" cssClass="form-control" Width="40%"></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmit" cssClass="btn btn-default" runat="server" Text="Submit" />
    <br />
    <asp:Label ID="lblMessage" runat="server" cssClass="label-success" Text=""></asp:Label>
            
 
    

 
</asp:Content>       

