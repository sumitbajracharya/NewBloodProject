<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="col-md-12">
        <p>raktadata.com is a online blood donation facility, where you can search donors, blood seekers, and blood donation camping events online.</p>

<p>This online blood donation site is developed by five asp.net web programmers as an internship project provided by <a href="http://www.tulipstechnologies.com/">Tulips Technologies</a>.</p>

<p><a href="#">Raktadata.com</a> an online blood donation project is developed aiming to minimmize the shortage of fresh blood in the blood bank by providing contacts of peoples with required blood type from nearest location possible.</p>
     </div>

  <div class="col-md-12">
  <h3>Contact Us</h3>
 <div class="form-group">

    <label for="fullname">Full Name</label>
     <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
    
  </div>
  <div class="form-group">
    <label for="email">Email Id</label>
      <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
    
  </div>
    <div class="form-group">
   <label for="Message">Message</label>
        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

  </div>
      <asp:Button ID="btnSubmit" CssClass="btn btn-default" runat="server" Text="Submit" />

  </div>




</asp:Content>

