<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="UserManagement.aspx.cs" Inherits="Admin_UserManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
  <li class="active"><a href="#List" role="tab" data-toggle="tab">List Member</a></li>
  <li><a href="#Verify" role="tab" data-toggle="tab">Verify Member</a></li>

  <li><a href="#Update" role="tab" data-toggle="tab">Update Member</a></li>
 



<!-- Tab panes -->
<div class="tab-content">
  <div class="tab-pane active" id="List">

      <asp:GridView ID="GridViewListMember" runat="server" AutoGenerateColumns="False" Width="435px">
          <Columns>
              <asp:BoundField HeaderText="Name" DataField="Name" />
              <asp:BoundField HeaderText="Blood Group" DataField="Blood Group" />
              <asp:BoundField HeaderText="Gender" DataField="Gender" />
              <asp:BoundField HeaderText="Contact No." DataField="Contact No" />
              <asp:BoundField HeaderText="Location" DataField="Location" />
              
              <asp:TemplateField HeaderText="Account Status">
                  <ItemTemplate>
                      <asp:CheckBox ID="chkbxAccountStatus" runat="server" Checked="False" />
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Member Status">
                  <ItemTemplate>
                      <asp:CheckBox ID="chkbxMemberStatus" runat="server" />
                  </ItemTemplate>
              </asp:TemplateField>
              
          </Columns>
      </asp:GridView>

  </div>
  <div class="tab-pane" id="Verify">

      <asp:GridView ID="GridViewVerifyMember" runat="server" AutoGenerateColumns="false" Width="861px">
          <Columns>
              <asp:BoundField HeaderText="Name" DataField="Name"/>
              <asp:BoundField HeaderText="Blood Group" DataField="Blood Group" />
              <asp:BoundField HeaderText="Gender" DataField="Gender"/>
              <asp:BoundField HeaderText="Contact No." DataField="Contact No"/>
              <asp:BoundField HeaderText="Location" DataField="Location"/>
              <asp:BoundField HeaderText="Donation Card" DataField="DonationCard" />
              <asp:TemplateField>
                  <ItemTemplate>
                      <asp:Button ID="btnAccept" runat="server" Text="Accept" />
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField>
                  <ItemTemplate>
                      <asp:Button ID="btnDeny" runat="server" Text="Deny" />
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>
      </asp:GridView>
  </div>
  <div class="tab-pane" id="Update">
      <asp:GridView ID="GridViewUpdateMember" runat="server">
          <Columns>
              <asp:BoundField HeaderText="Name" DataField="Name" />
              <asp:BoundField HeaderText="Blood Group" DataField="Blood Group" />
              <asp:BoundField HeaderText="Gender" DataField="Gender" />
              <asp:BoundField HeaderText="Contact No." DataField="Contact No" />
              <asp:BoundField HeaderText="Location" DataField="Location" />
              
              <asp:TemplateField HeaderText="Account Status">
                  <ItemTemplate>
                      <asp:CheckBox ID="chkbxAccountStatus" runat="server" Checked="False" />
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Member Status">
                  <ItemTemplate>
                      <asp:CheckBox ID="chkbxMemberStatus" runat="server" />
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField>
                  <ItemTemplate>
                      <asp:Button ID="btnUpdate" runat="server" Text="Update" />
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField>
                  <ItemTemplate>
                      <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                  </ItemTemplate>
              </asp:TemplateField>
              
          </Columns>
      </asp:GridView>
  </div>

</div>

</asp:Content>

