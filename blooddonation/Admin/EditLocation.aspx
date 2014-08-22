<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditLocation.aspx.cs" Inherits="Admin_EditLocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <asp:DropDownList ID="ddlDistrict" cssClass="form-control" Width="40%" runat="server">
    </asp:DropDownList>
    <asp:Button ID="btnSearch" CssClass="btn btn-default" runat="server" Text="Search" OnClick="btnSearch_Click"  />

    

    <br />
    <asp:GridView ID="gdvLocation" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField HeaderText="LocationName" />
            <asp:BoundField HeaderText="DistrictID" />
        </Columns>
    </asp:GridView>
    <br /><br />
    
    
    
</asp:Content>

