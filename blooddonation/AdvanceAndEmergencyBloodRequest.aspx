<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdvanceAndEmergencyBloodRequest.aspx.cs" Inherits="AdvanceAndEmergencyBloodRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<ul class="nav nav-tabs" role="tablist">
  <li class="active"><a href="#Advance" role="tab" data-toggle="tab">Advance Blood Request Form</a></li>
  <li><a href="#Emergency" role="tab" data-toggle="tab">Emergency Blood Request</a></li>
</ul>


  <div class="tab-content" style="margin-top:5px;">
  <div class="tab-pane active" id="Advance">
  
     <table class="table table-bordered">
            <tr>
                <th colspan="2">Advance Blood Request Form</th>
            </tr>
            <tr>
                <td class="col-sm-3">Full Name</td>
                <td>
                    <asp:TextBox ID="txtFullNameA"  placeholder="FullName" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
         <tr>
                <td class="col-sm-3">Patient Name</td>
                <td>
                    <asp:TextBox ID="txtPatientNameA"  placeholder="FullName" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="txtAgeA" cssClass="form-control" runat="server" Width="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:DropDownList ID="ddlBloodGroupA" runat="server" cssClass="form-control" Width="50%">
                        
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td>
                    <asp:TextBox ID="txtQuantityA" cssClass="form-control" runat="server" Width="60px"></asp:TextBox>
                </td>
            </tr>
         <tr>
                <td>Hospital</td>
                <td>
                    <asp:TextBox ID="txtHospitalNameA" cssClass="form-control" runat="server" Width="60px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Location</td>
                <td>
                    
                    <asp:DropDownList ID="ddlLocationA" runat="server" cssClass="form-control" Width="50%">
                      
                        
                        
                        <asp:ListItem>Kathmandu</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList ID="ddlLocationsA" runat="server" cssClass="form-control" Width="50%">
                        <asp:ListItem>New Road</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    
                    <asp:TextBox ID="txtDateA" runat="server" cssClass="form-control"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="regexpDate" runat="server" ControlToValidate="txtDateA"
ErrorMessage="Error" ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$" EnableClientScript="True"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Time</td>
                <td>
                      <asp:DropDownList ID="ddlTimeA" runat="server" cssClass="form-control pull-left" style="margin-right:10px;"  Width="65px" >
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlTimeAmPmA" runat="server" cssClass="form-control"  Width="65px" >
                        <asp:ListItem>am</asp:ListItem>
                        <asp:ListItem>pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Phone no.</td>
                <td>
                    <asp:TextBox ID="txtPhoneNoA" runat="server" cssClass="form-control"  Width="115px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Purpose</td>
                <td>
                    <asp:TextBox ID="txtPurposeA" runat="server" cssClass="form-control" placeholder="Enter Purpose"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Hospital Paper</td>
                <td>
                  <asp:Image ID="imgHospitalpaprerA" runat="server" Height="223px" Width="281px" />
                    <asp:FileUpload ID="fupImageA" runat="server" cssClass="btn btn-default" />
                    <br />
                  
                </td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <asp:TextBox ID="txtMessageA" runat="server" cssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmitA" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="btnSubmitA_Click" />
                    <asp:Button ID="btnCancelA" runat="server" Text="Cancel" CssClass="btn btn-default" />
                </td>
            </tr>
        </table>
   </div>
  <div class="tab-pane" id="Emergency">
  <table class="table table-bordered">
            <tr>
                <th colspan="2">Emergency Blood Request</th>
            </tr>
            <tr>
                <td>Full Name</td>
                <td>
                    <asp:TextBox ID="txtFullNameE" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="txtAgeE" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:DropDownList ID="ddlBloodgroupE" runat="server">
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
                <td>Location</td>
                <td>
                    <asp:DropDownList ID="ddlDistrictE" runat="server" cssClass="form-control">
                        <asp:ListItem>Choose District</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList ID="ddlLocationE" runat="server" cssClass="form-control">
                        <asp:ListItem>ChooseLocation</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Phone no.</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumberE" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <asp:TextBox ID="txtMessageE" runat="server" Height="107px" TextMode="MultiLine" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
           <tr>
                
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmitE" runat="server" Text="Submit" CssClass="btn btn-default" />
                    <asp:Button ID="btnCancelE" runat="server" Text="Cancel" CssClass="btn btn-default" />
                </td>
            </tr>
        </table>

  </div>
  
  </div>
</asp:Content>

