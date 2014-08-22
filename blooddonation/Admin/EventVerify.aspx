<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EventVerify.aspx.cs" Inherits="Admin_EventVerify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<!-- listing the event in table-->

<div class="row">
  <div class="col-md-3">
  
 
 <table class="table table-bordered">
<tr>
<th>Date</th>
<th>Program</th>
</tr>

 <asp:Repeater ID="rptrEvents"  runat="server">
     <ItemTemplate>
          <tr>
               <td><%#Eval("Date")%> </td>
              
               <td><asp:LinkButton ID="lnkbtnEvent" runat="server" CommandArgument='<%#Eval("EventID")  %>' OnClick="lnkbtnEvent_click"><%#Eval("EventTitle")%></asp:LinkButton></td>
          </tr>  
      </ItemTemplate>
  </asp:Repeater>

</table>


  </div>
  <div class="col-md-9">
  


 <table class="table table-bordered">


<tr>
<td class="col-md-2 col-sm-2 col-xs-2">Event Title</td>
<td ><asp:Label ID="lblEventTitle" runat="server"></asp:Label></td>
</tr>

<tr>
<td>Event Date </td>
<td><asp:Label ID="lblDate" runat="server"></asp:Label></td>
</tr>

<tr>
<td>Time </td>
<td  >
    <asp:Label ID="lblTime" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td>Venue </td>
<td ><asp:Label ID="lblVenue" runat="server"></asp:Label></td>
</tr>

<tr>
<td>Posted By </td>
<td ><asp:Label ID="lblPostedBy" runat="server"></asp:Label></td>
</tr>

<tr>
<td>Description </td>
<td ><asp:Label ID="lblDescription" runat="server"></asp:Label></td>
</tr>

<tr>
<td>Contact No. </td>
<td ><asp:Label ID="lblContactNo" runat="server"></asp:Label></td>
</tr>

<tr>
<td>Event Images </td>
<td > 
    <asp:Image ID="imgEvent" CssClass="img-thumbnail" runat="server" /></td>
</tr>

<tr>
<td colspan='2' align="center" ><asp:Button ID="btnAllow"  
        CssClass="btn btn-default" runat="server" Text="Allow" 
        onclick="btnAllow_Click" /><asp:Button ID="btnDiscard" CssClass="btn btn-default" runat="server" Text="Discard" />
        
        <br />
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </td>
</tr>

</table>

  </div>




 


</div>



</asp:Content>

