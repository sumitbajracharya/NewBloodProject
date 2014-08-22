<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="AdvanceBloodRequestForm.aspx.cs" Inherits="User_AdvanceBloodRequestForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
  <li class="active"><a href="#newRequest" role="tab" data-toggle="tab">Make New Request</a></li>
  <li><a href="#Updates" role="tab" data-toggle="tab">Updates</a></li>

  <li><a href="#RequestList" role="tab" data-toggle="tab">Request List</a></li>
 
</ul>
    <!-- Tab panes -->
<div class="tab-content">
  <div class="tab-pane active" id="newRequest">
       <table class="table table-bordered">
            <tr>
                <th colspan="2"><center>Advance Blood Request Form</center></th>
            </tr>
            <tr>
                <td class="col-sm-3">Full Name</td>
                <td>
                    <asp:TextBox ID="txtABRFullName" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="col-sm-3">Patient Name</td>
                <td>
                    <asp:TextBox ID="txtPatientName" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="txtABRAge" cssClass="form-control" runat="server" Width="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:DropDownList ID="ddlABRBloodGroup" runat="server" cssClass="form-control" Width="50%">
                        <asp:ListItem>A+ve</asp:ListItem>
                        <asp:ListItem>A-ve</asp:ListItem>
                        <asp:ListItem>B+ve</asp:ListItem>
                        <asp:ListItem>B-ve</asp:ListItem>
                        <asp:ListItem>AB+ve</asp:ListItem>
                        <asp:ListItem>AB-ve</asp:ListItem>
                        <asp:ListItem>O+ve</asp:ListItem>
                        <asp:ListItem>O-ve</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td>
                    <asp:TextBox ID="txtQuantity" cssClass="form-control" runat="server" Width="60px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Hospital</td>
                <td>
                    <asp:TextBox ID="txtHospitalName" cssClass="form-control" runat="server" Width="60px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Location</td>
                <td>
                    
                    <asp:DropDownList ID="ddlABRDistrict" runat="server" cssClass="form-control" Width="50%">
                      
                        
                        
                        <asp:ListItem>Kathmandu</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList ID="ddlABRLocation" runat="server" cssClass="form-control" Width="50%">
                        <asp:ListItem>New Road</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    
                    <asp:TextBox ID="txtDate" runat="server" cssClass="form-control"></asp:TextBox>
                   
                   
                </td>
            </tr>
            <tr>
                <td>Time</td>
                <td>
                      <asp:DropDownList ID="DropDownList4" runat="server" cssClass="form-control pull-left" style="margin-right:10px;"  Width="65px" >
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlTimeAmPm" runat="server" cssClass="form-control"  Width="65px" >
                        <asp:ListItem>am</asp:ListItem>
                        <asp:ListItem>pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Phone no.</td>
                <td>
                    <asp:TextBox ID="txtABRPhoneno" runat="server" cssClass="form-control"  Width="115px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Purpose</td>
                <td>
                    <asp:TextBox ID="txtABRPurpose" runat="server" cssClass="form-control" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Hospital Paper</td>
                <td>
                  <asp:Image ID="imgABRHospitalpaprer" runat="server" Height="223px" Width="281px" />
                    <asp:FileUpload ID="fupABRImage" runat="server" cssClass="btn btn-default" />
                    <br />
                  
                </td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <asp:TextBox ID="txtABRMessageBox" runat="server" cssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                
                <td colspan="2" align="center">
                    <asp:Button ID="btnABRSubmit" runat="server" Text="Submit" CssClass="btn btn-default" />
                    <asp:Button ID="btnABRCancel" runat="server" Text="Cancel" CssClass="btn btn-default" />
                </td>
            </tr>
        </table>
    </div>
  <div class="tab-pane" id="Updates">
      <div class="table-responsive">
        <table class="table table-bordered" >
            <tr >
                <th>Request Date</th>
                <th>Purpose</th>
                <th>Number of Acceptance</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>

                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("RequestDate") %></td>
                        <td>Heart Surgery</td>
                        <td>5</td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            
            
        </table>
     </div>
      </div>
  <div class="tab-pane" id="RequestList">
     <div class="table-responsive">
        <table class="table table-bordered">
            <tr>
                <th>Date</th>
                <th>Contact Person</th>
                
            </tr>
            <asp:Repeater ID="Repeater2" runat="server">
                <HeaderTemplate>

                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Date") %></td>
                        <td><a href=""><%#Eval("Name") %></a></td>
                        
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            
            
        </table>
     </div>
  </div>

</div>
</asp:Content>