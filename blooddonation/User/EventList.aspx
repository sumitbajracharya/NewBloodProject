<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="EventList.aspx.cs" Inherits="User_EventList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


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


</asp:Content>

