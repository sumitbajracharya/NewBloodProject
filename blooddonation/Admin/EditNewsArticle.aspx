<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditNewsArticle.aspx.cs" Inherits="Admin_EditNewsArticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <table class="table table-bordered">
    <tr>
    <td class="col-sm-2">News Title</td>
    <td><asp:TextBox ID="txtNewsTitle" runat="server" cssClass="form-control"></asp:TextBox></td>
    </tr>

    <tr>
    <td>&nbsp;News Body</td>
    <td><asp:TextBox ID="txtNewsBody" runat="server" cssClass="form-control" TextMode="MultiLine"></asp:TextBox></td>
    </tr>

    <tr>
    <td>News Image</td>
    <td><asp:FileUpload ID="fupNewsImage" CssClass="btn btn-default" runat="server" /></td>
    </tr>

    <tr>
    <td colspan='2'><center> <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-default" Text="Update" OnClick="btnUpdate_Click" /> &nbsp;&nbsp;&nbsp; <asp:Button ID="btnCancel" CssClass="btn btn-default" runat="server" Text="Cancel" />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </center></td>
    </tr>
    </table>
   

    <br /><br /><br /><br />

    <asp:GridView ID="gdvNewsArticle" runat="server" OnSelectedIndexChanged="gdvBloodGroup_SelectedIndexChanged" AutoGenerateColumns="False" Width="398px">
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Button ID="BtnDelete" runat="server" CssClass="btn btn-default" text="Delete" CommandArgument='<%#Eval("CountryID") %>' />
    </ItemTemplate>
    </asp:TemplateField>
        <asp:BoundField DataField="NewsTitle" HeaderText="NEWS TITLE" />
        <asp:BoundField DataField="NewsBody" HeaderText="NEWS BODY" />
        <asp:BoundField DataField="NewsImage" HeaderText="NEWS IMAGE" />
    </Columns>
    </asp:GridView>
</asp:Content>

