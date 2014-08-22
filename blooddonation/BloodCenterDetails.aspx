<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BloodCenterDetails.aspx.cs" Inherits="BloodCenterDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="row">



</div>



<div class="row">
 



  <div class="col-md-4  col-xs-12">
 
   <h4>Blood Center Lists</h4>
  <ul class="list-group">

 
     <asp:Repeater ID="rptBloodCenterList" runat="server">
              <HeaderTemplate>
               
              </HeaderTemplate>
              <ItemTemplate>
      
  <li class="list-group-item"> <asp:LinkButton ID="lnkbtnEvent" runat="server" CommandArgument='<%#Eval("CenterID")  %>' OnClick="lnkbtnBloodCenter_click"><%#Eval("Name") %></asp:LinkButton></li>

                    
            </ItemTemplate>
          </asp:Repeater>
           </ul>
   </div>

   <div class="col-md-8 col-xs-12">

 <asp:Image ID="imgBloodCenter" runat="server" CssClass="img-thumbnail"/>


                    <h3>Nepal Red Cross</h3>
                  
             
              <div class="col-md-12 col-xs-12">
                  <div class="col-md-6 col-xs-6" > <h5>Location</h5> </div>
                  <div class="col-md-6 col-xs-6" ><h5>
                      <asp:Label ID="lblLocation" runat="server"></asp:Label></h5></div>
                  

              </div>
       <%--       <div class="col-md-12 col-xs-12">
                  <div class="col-md-6 col-xs-6"><h5>Available Services</h5></div>
                  <div class="col-md-6 col-xs-6" ><h5><asp:Label ID="lblAvailableServices" runat="server"></asp:Label></h5></div>
     
              </div>--%>
            

               <div class="col-md-12 col-xs-12">
                  <div class="col-md-6 col-xs-6" ><h5>Contact No</h5></div>
                  <div class="col-md-6 col-xs-6" ><h5><asp:Label ID="lblPhoneNumber" runat="server"></asp:Label></h5></div>
                  

              </div>

              <%-- <div class="col-md-12 col-xs-12">
                  <div class="col-md-6 col-xs-6" ><h5>PO Box</h5></div>
                  <div class="col-md-6 col-xs-6" ><h5><asp:Label ID="lblPOBox" runat="server"></asp:Label></h5></div>
                  

              </div>--%>

             <%-- <div class="col-md-12 col-xs-12">
                  <h4>Blood Stocks</h4>
                  </div>--%>
</div>
</div>


<%--<div class="row">
  <div class="col-md-12 col-xs-12 table-responsive"><table class="table table-bordered">
                      <tr>
                          <td>&nbsp;</td>
                          <td class="text-center">O +ve</td>
                          <td class="text-center">O -ve</td>
                          <td class="text-center">AB +ve</td>
                          <td class="text-center">AB -ve</td>
                          <td class="text-center">B +ve</td>
                          <td class="text-center">B -ve</td>
                          <td class="text-center">A +ve</td>
                          <td class="text-center">A -ve</td>
                      </tr>
                      <tr>
                          <td>FFP</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>Platilates</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>Plasma</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>RBC</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                  </table></div>

</div>--%>

<%--<div class="row">
  <div class="col-md-12 col-xs-12"><h4>Google Maps </h4></div>
  
</div>--%>


</asp:Content>

