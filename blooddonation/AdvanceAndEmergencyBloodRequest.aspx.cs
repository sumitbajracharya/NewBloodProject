using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdvanceAndEmergencyBloodRequest : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string querry = "select BloodGroup from TblBloodGroup";
            string query = "select LocationName from TblLocation";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet dss = new DataSet();

            da.Fill(dss, "tbl_locationnn");

            ddlLocationA.DataSource = dss;
            ddlLocationA.DataTextField = "LocationName";
            ddlLocationA.DataBind();
            ddlLocationA.Items.Insert(0, "Select Location");

            SqlDataAdapter dab = new SqlDataAdapter(querry, con);
            DataSet dsa = new DataSet();

            dab.Fill(dsa, "tblBlood");

            ddlBloodGroupA.DataSource = dsa;
            ddlBloodGroupA.DataTextField = "BloodGroup";
            ddlBloodGroupA.DataBind();
            ddlBloodGroupA.Items.Insert(0, "Select Blood Group");

        }


    }
    protected void btnSubmitA_Click(object sender, EventArgs e)
    {
        AdvanceRequestInfo _AdvanceRequest = new AdvanceRequestInfo();

        _AdvanceRequest.SeekerName= txtFullNameA.Text;
        _AdvanceRequest.HospitalName = txtHospitalNameA.Text;
        _AdvanceRequest.HospitalPaper = fupImageA.FileName;
        _AdvanceRequest.LocationId = int.Parse(Request.QueryString["Location"]);
        _AdvanceRequest.Message = txtMessageA.Text;
        _AdvanceRequest.MobileNo = txtPhoneNoA.Text;
        _AdvanceRequest.PatientName = txtPatientNameA.Text;
        _AdvanceRequest.Purpose = txtPurposeA.Text;
        _AdvanceRequest.Quantity = Convert.ToInt32(txtQuantityA.Text);
        _AdvanceRequest.Time = DateTime.Now;
        _AdvanceRequest.Date = Convert.ToDateTime(txtDateA.Text.ToString());

       
        //AdvanceBloodRequest.AddAdvanceBloodRequest(_AdvanceRequest);
    }
}