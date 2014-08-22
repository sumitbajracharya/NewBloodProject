<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="VerifyAdvanceBloodRequest.aspx.cs" Inherits="Admin_VerifyAdvanceBloodRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
<!-- listing the Advance Blood Request in table-->
<div class="row">
  <div class="col-md-3">
  
 <table class="table table-bordered">
<tr>
<th>Date</th>
<th>Contact Person</th>
</tr>

 <asp:Repeater ID="rptrEvents"   runat="server">
     <ItemTemplate>
          <tr>
               <td><%#Eval("Date")%> </td>
               <td><%#Eval("ContactPerson")%> </td>
          </tr>  
      </ItemTemplate>
  </asp:Repeater>

</table>
</div>

     <div class="col-md-9">
  


 <table class="table table-bordered">

<tr>
<td class="col-sm-3">Full Name</td>
<td><asp:Label ID="lblFullName" runat="server"></asp:Label></td>
</tr>

<tr>
<td>Age </td>
<td><asp:Label ID="lblAge" runat="server"></asp:Label></td>
</tr>

<tr>
<td  >Blood Group</td>
<td ><asp:Label ID="lblBloodGroup" runat="server"></asp:Label></td>
</tr>

<tr>
<td >Quantity</td>
<td><asp:Label ID="lblQuantity" runat="server"></asp:Label></td>
</tr>

<tr>
<td >Location</td>
<td><asp:Label ID="lblLocation" runat="server"></asp:Label></td>
</tr>

<tr>
<td >Date</td>
<td><asp:Label ID="lblDate" runat="server"></asp:Label></td>
</tr>

<tr>
<td >Time</td>
<td><asp:Label ID="lblTime" runat="server"></asp:Label></td>
</tr>

<tr>
<td >Contact No.</td>
<td><asp:Label ID="Label1" runat="server"></asp:Label></td>
</tr>

<tr>
<td >Purpose</td>
<td><asp:Label ID="Label2" runat="server"></asp:Label></td>
</tr>


<tr>
<td >Hospital Docs </td>
    
<td><asp:Image ID="Image1" ImageUrl='<%#Eval("EventImage")%>' runat="server" /> </td>
</tr>

<tr>
<td colspan='2' align="center" > <asp:Button ID="btnAllow"  CssClass="btn btn-default"  runat="server" Text="Allow" /> <asp:Button ID="btnDiscard"  CssClass="btn btn-default" runat="server" Text="Discard" /></td>
</tr>

</table>

</div>

</asp:Content>

