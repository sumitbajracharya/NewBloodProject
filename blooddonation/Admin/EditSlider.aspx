<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditSlider.aspx.cs" Inherits="Admin_EditSlider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <asp:FileUpload ID="fupSlider" CssClass="btn btn-default" runat="server" />
    <asp:Button runat="server"  CssClass="btn btn-default" ID="btnAdd" Text="Add" />

    <br /><br /><br /><br />

    <asp:GridView ID="gdvSlider" runat="server">
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Button ID="BtnDelete" CssClass="btn btn-default" runat="server" text="Delete" CommandArgument='<%#Eval("SliderID") %>' />
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
    </div>
   


</asp:Content>

