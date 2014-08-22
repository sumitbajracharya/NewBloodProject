using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonarDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["DonarID"] != null)
        {
            int _Donar = int.Parse(Request.QueryString["DonarID"]);

            MemberInfo Member = BLLUser.GetMemberByUserID(_Donar);

            ImgProfilePicture.ImageUrl = string.Format("../Assets/Images/UserImage/ProfilePicture/" + Member.ProfilePicture);
            LblName.Text = string.Format(Member.FirstName + " " + Member.LastName);
            LblAddress.Text = Member.PermanentAddress;
            LblBestTime.Text = Member.BestTime;
            LblBloodGroup.Text = BLLBloodGroup.GetBloodGroupByID(Member.BloodGroupId);
            LblDOB.Text = (Member.DOB).ToString();
            LblGender.Text = Member.Gender;
            LblLastDonationdate.Text = (Member.LastDonationDate).ToString();
            
        }
    }
}