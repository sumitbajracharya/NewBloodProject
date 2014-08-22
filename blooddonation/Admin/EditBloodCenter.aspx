<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditBloodCenter.aspx.cs" Inherits="Admin_EditBloodCenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="tab-pane" id="EditBloodCenters">

  <div class="row">
  <div class="col-md-3">
 <table class="table table-bordered" style="margin-top:10px;">
   
    <tr>
    <th>S.no. </th>
    <th>Center Name </th>
    </tr>

    <asp:Repeater ID="rptrBloodCenters"   runat="server">
     <ItemTemplate>
          <tr>
               <td><%#Eval("CenterID")%> </td>
               <td><asp:LinkButton ID="lnkbtnCenterName" runat="server" CommandArgument='<%#Eval("CenterID")  %>' OnClick="lnkbtnCenterName_click"><%#Eval("Name")%></asp:LinkButton> </td>
          </tr>  
      </ItemTemplate>
  </asp:Repeater>
   
   </table>
  
  
  </div>
  <div class="col-md-9">
  
  <table class="table table-bordered" style="margin-top:10px;">
         <tr>
                <td class="col-md-3">Center Name</td>
                <td><asp:TextBox ID="txtCenterName" cssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
               
                <td>Location</td>
                <td><asp:DropDownList ID="ddlLocation" cssClass="form-control" Width="50%" 
                        runat="server"></asp:DropDownList></td>
            </tr>

            <tr>
                <td>Phone Number</td>
                <td><asp:TextBox ID="txtPhoneNumber" cssClass="form-control" Width="115px" runat="server"></asp:TextBox></td>
            </tr>

            
            <tr>
                <td>Image</td>
                <td>
                    <asp:HiddenField ID="hfdImageCenter" runat="server" />
                    <asp:Image ID="imgCenter" runat="server"  cssClass="img-thumbnail" />
                <asp:FileUpload ID="fupImage"  cssClass="btn btn-default" runat="server" /></td>
            </tr>
            <tr>
                <td>Map Coordinates</td>
                <td><asp:TextBox ID="txtMapCoordinates" cssClass="form-control" Width="50%" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Details:</td>
                <td><asp:TextBox ID="txtDetails"  cssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan='2'>
                
                <asp:Button ID="btnUpdateCenter" runat="server" cssClass="btn btn-default" 
                        Text="Update" onclick="btnUpdateCenter_Click" /> &nbsp;
                 <asp:Button ID="btnRestore" runat="server" cssClass="btn btn-default" Text="Restore" /> 
                 <br />
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                 </td>
                         
            </tr>    

        </table>
  
  
  </div>
</div>
   </div>

</asp:Content>

