<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
  
  
   <div class="col-md-12 col-xs-12">
       <table class="table table-bordered">
           <tr>
               <th colspan="2">ADVANCE BLOOD REQUEST</th>
           </tr>
           <tr>
               <td>
                   <h4>Date</h4>
 
               </td>
               <td>
                   <h4>Program</h4>
   
               </td>
           </tr>
           <asp:Repeater ID="Repeater5" runat="server">
             <ItemTemplate>
             <tr>
               <td>
                   
                    <h6><a href="" <%#Eval("Date") %>></a></h6>
         

               </td>
               <td>
                   <h6><a href="" <%#Eval("Program") %>></a></h6>
               </td>
             </tr>
             </ItemTemplate>
           </asp:Repeater>
       </table>
       
 
 
      
  
 
      <table class="table table-bordered">

          <tr>
              <th colspan="2">BLOOD CENTERS</th>
          </tr>
         
                    <tr>
                        <td><h4>SN</h4></td>
                        <td><h4>Name</h4></td>
                        <td><h4>Location</h4></td>
                    </tr>
           <asp:Repeater ID="Repeater2" runat="server">
               <ItemTemplate>
                    <tr>
                        <td><h6><%#Eval("sn") %>></h6></td>
                        <td><h6><a href="~/User/BloodCenterDetails.aspx?id=<%#Eval("BloodCenterId") %>"><%#Eval("name") %>></></h6></td>
                        <td><h6><%#Eval("location") %>></h6></td>
                    </tr>
              </ItemTemplate>
          </asp:Repeater>
      </table>
 
  
  
  
  
  </div>
  </div>
 

</asp:Content>

