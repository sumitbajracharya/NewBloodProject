<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddLocation.aspx.cs" Inherits="Admin_AddLocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table table-bordered">
        <tr><th colspan="2">ADD LOCATION</th></tr>
        <tr>
            <td>Location Name</td>
            <td>

    
    <asp:TextBox ID="txtLocationName"  cssClass="form-control pull-left"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>District Name</td>
            <td>
                <asp:DropDownList ID="ddlDistrict" cssClass="form-control pull-left" runat="server">
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
    <asp:Button runat="server"   CssClass="btn btn-default" ID="btnAdd" Text="Add" OnClick="btnAdd_Click" />

                <asp:Button ID="btnCancle" runat="server" CssClass="btn btn-default" Text="Cancle" OnClick="btnCancle_Click" />

                <br />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

