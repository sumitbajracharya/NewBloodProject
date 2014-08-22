<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddNewsArticle.aspx.cs" Inherits="Admin_AddNewsArticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table table-bordered">
    <tr>
    <td class="col-sm-2">News Title</td>
    <td><asp:TextBox ID="txtNewsTitle" runat="server" cssClass="form-control"></asp:TextBox></td>
    </tr>

    <tr>
    <td>News Image </td>
    <td><asp:FileUpload ID="fupNewsImage" CssClass="btn btn-default" runat="server" /></td>
    </tr>

    <tr>
    <td>News Body</td>
    <td><asp:TextBox ID="txtNewsBody" runat="server" cssClass="form-control" TextMode="MultiLine"></asp:TextBox></td>
    </tr>

    <tr>
    <td colspan='2'><center> <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-default" Text="Add" OnClick="btnAdd_Click" /> &nbsp;&nbsp;&nbsp; <asp:Button ID="btnCancel" CssClass="btn btn-default" runat="server" Text="Cancel" />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </center></td>
    </tr>
    </table>
</asp:Content>

