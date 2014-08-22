<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="WebSettings.aspx.cs" Inherits="Admin_WebSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table table-bordered">
            <tr>
                <th colspan="2">WEB SETTINGS</th>
            </tr>
            <tr>
                <td class="col-sm-3">Location</td>
                <td>
                    <asp:Button ID="btnEditLocation" runat="server" Text="EDIT" cssClass="btn btn-default" OnClick="btnEditLocation_Click"/>
                     <asp:Button ID="btnAddLocaton" runat="server" cssClass="btn btn-default" OnClick="btnAddLocaton_Click" Text="ADD" />
                </td>
            </tr>
            <tr>
                <td>Blood Center</td>
                <td>
                    <asp:Button ID="btnEditBloodCenter" runat="server" Text="EDIT" cssClass="btn btn-default" OnClick="btnEditBloodCenter_Click"/>
                     <asp:Button ID="btnAddBloodCenter" runat="server" Text="ADD" cssClass="btn btn-default" OnClick="btnAddBloodCenter_Click" />
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:Button ID="btnEditBloodGroup" runat="server" Text="EDIT" cssClass="btn btn-default" OnClick="btnEditBloodGroup_Click"/>
                </td>
            </tr>
            <tr>
                <td>Slider Image </td>
                <td>
                    <asp:Button ID="btnEditImageToTheSlider" runat="server" Text="EDIT" cssClass="btn btn-default" OnClick="btnEditImageToTheSlider_Click"/>
                </td>
            </tr>
            <tr>
                <td>News Artical</td>
                <td>
                    <asp:Button ID="btnEditNewsArtical" runat="server" Text="EDIT" cssClass="btn btn-default" OnClick="btnEditNewsArtical_Click"/>
                </td>
            </tr>
        </table>
</asp:Content>

