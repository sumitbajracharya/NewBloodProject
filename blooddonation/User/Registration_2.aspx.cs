using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Registration_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        MemberInfo _member = new MemberInfo();
        _member.PermanentAddress = txtPermanentAddress.Text;
        _member.CurrentAddress = ddlCurrentAddress.SelectedIndex;
        _member.BestTime = ddlBestTimeToContact.SelectedValue;
        _member.DOB= Convert.ToDateTime(txtDay+"/"+txtMonth+"/"+txtYear);
        _member.LastDonationDate = Convert.ToDateTime(txtLastDonatedDay + "/" + txtLastDonatedMonth + "/" + txtLastDonatedYear);
        _member.MobileNo= txtPhoneNumber.Text;
        _member.Gender = rdbGender.SelectedValue;
        _member.UserName = Session["UserName"].ToString();

         _member.ProfilePicture = fuProfilePicture.FileName;
         fuProfilePicture.PostedFile.SaveAs(Server.MapPath("../Assets/Images/UserImage/ProfilePicture/" + _member.ProfilePicture));
         
        _member.BloodDonationCardSnapshot = fuBloodGroupCard.FileName;
        fuBloodGroupCard.PostedFile.SaveAs(Server.MapPath("../Assets/Images/UserImage/DonarCards/" + _member.BloodDonationCardSnapshot));


        BLLUser.CreateUser2(_member);
    }
}