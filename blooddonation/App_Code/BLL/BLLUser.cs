using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLLUser
/// </summary>
public class BLLUser
{
	
    public BLLUser()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    // create user from first page
    public static void CreateUser(MemberInfo _User)
    {
        string sp = "Usp_Member_Create";
        SqlConnection con = ConnectionHelper.GetConnection();
        SqlCommand cmd = new SqlCommand(sp, con);
        cmd.Parameters.Add(new SqlParameter("@firstname", _User.FirstName));
        cmd.Parameters.Add(new SqlParameter("@lastname", _User.LastName));
        cmd.Parameters.Add(new SqlParameter("@username", _User.UserName));
        cmd.Parameters.Add(new SqlParameter("@bloodgroupid", _User.BloodGroupId));
        cmd.Parameters.Add(new SqlParameter("@mobilenumber", _User.MobileNo));
        cmd.Parameters.Add(new SqlParameter("@email", _User.Email));
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


    // create user from second regestration page page
    public static void CreateUser2(MemberInfo _User)
    {
        string sp = "Usp_Member_CreateUpdate";
        SqlConnection con = ConnectionHelper.GetConnection();
        SqlCommand cmd = new SqlCommand(sp, con);
        cmd.Parameters.Add(new SqlParameter("@username", _User.UserName));
        cmd.Parameters.Add(new SqlParameter("@PermanentAddress", _User.PermanentAddress));
        cmd.Parameters.Add(new SqlParameter("@DOB", _User.DOB));
        cmd.Parameters.Add(new SqlParameter("@PhoneNumber", _User.PhoneNo));
        cmd.Parameters.Add(new SqlParameter("@CurrentAddress", _User.CurrentAddress));
        cmd.Parameters.Add(new SqlParameter("@Gender", _User.Gender));
        cmd.Parameters.Add(new SqlParameter("@LastDonationDate", _User.LastDonationDate));
        cmd.Parameters.Add(new SqlParameter("@BestTime", _User.BestTime));
        cmd.Parameters.Add(new SqlParameter("@BloodDonationCardSnapshots", _User.BloodDonationCardSnapshot));
        cmd.Parameters.Add(new SqlParameter("@ProfilePicture", _User.ProfilePicture));
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


    // get all users Info
    public static List<MemberInfo> GetAllMembers()
    {
        List<MemberInfo> lstmembers = new List<MemberInfo>();
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string Sp = "usp_get_allmember";
            SqlCommand cmd = new SqlCommand(Sp, con);
            cmd.CommandType = CommandType.StoredProcedure;
            using (SqlDataReader _reader = cmd.ExecuteReader())
            {
                while (_reader.Read())
                    {
                        lstmembers.Add(new MemberInfo
                        {
                            MemberId = int.Parse(_reader["DonarID"].ToString()),
                            FirstName = _reader["FirstName"].ToString(),
                            LastName = _reader["LastName"].ToString(),
                            UserName = _reader["UserName"].ToString(),
                            PermanentAddress = _reader["PermanentAddress"].ToString(),
                            CurrentAddress = int.Parse(_reader["CurrentAddress"].ToString()),
                            DOB = Convert.ToDateTime(_reader["DOB"]),
                            BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString()),
                            Gender = _reader["Gender"].ToString(),
                            LastDonationDate = Convert.ToDateTime(_reader["LastDonationDate"]),
                            BestTime = _reader["BestTime"].ToString(),
                            MobileNo = _reader["MobileNumber"].ToString(),
                            PhoneNo = _reader["PhoneNumber"].ToString(),
                            Email = _reader["Email"].ToString(),
                            BloodDonationCardSnapshot = _reader["BloodDonationCardSnapshots"].ToString(),
                            DonorStatus = bool.Parse(_reader["DonorStatus"].ToString()),
                            AccountStatus = bool.Parse(_reader["AccountStatus"].ToString()),
                            RoleId = bool.Parse(_reader["RoleID"].ToString()),
                            ProfilePicture = _reader["ProfilePicture"].ToString(),
                        });
                    }
                }
            }
            return (lstmembers);
        }        
    

    public static List<MemberInfo> GetDeactiveMembers()
    {
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {
            string Sp = "Usp_GetDeactiveMemeber";
            SqlCommand cmd = new SqlCommand(Sp, con);
            List<MemberInfo> lstmembers = new List<MemberInfo>();
            cmd.CommandType = CommandType.StoredProcedure;
            using (SqlDataReader _reader = cmd.ExecuteReader())
            {
                while (_reader.Read())
                {
                    lstmembers.Add(new MemberInfo
                    {
                        MemberId = int.Parse(_reader["DonarID"].ToString()),
                        FirstName = _reader["FirstName"].ToString(),
                        LastName = _reader["LastName"].ToString(),
                        UserName = _reader["UserName"].ToString(),
                        PermanentAddress = _reader[""].ToString(),
                        CurrentAddress = int.Parse(_reader["CurrentAddress"].ToString()),
                        DOB = Convert.ToDateTime(_reader["DOB"]),
                        BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString()),
                        Gender = _reader["Gender"].ToString(),
                        LastDonationDate = Convert.ToDateTime(_reader["LastDonationDate"]),
                        BestTime = _reader["BestTime"].ToString(),
                        MobileNo = _reader["MobileNumber"].ToString(),
                        PhoneNo = _reader["PhoneNumber"].ToString(),
                        Email = _reader["Email"].ToString(),
                        BloodDonationCardSnapshot = _reader["BloodDonationCardSnapshots"].ToString(),
                        DonorStatus = bool.Parse(_reader["DonorStatus"].ToString()),
                        AccountStatus = bool.Parse(_reader["AccountStatus"].ToString()),
                        RoleId = bool.Parse(_reader["RoleID"].ToString()),
                        ProfilePicture = _reader["ProfilePicture"].ToString(),
                    });
                }
            }
            return (lstmembers);
        }
    }

    public static MemberInfo GetMemberByUserName(string UserName)
    {

        MemberInfo _member = new MemberInfo();

        String sp = "Usp_GetMemeberbyName";
        

        SqlConnection Con = ConnectionHelper.GetConnection();

        SqlCommand cmd = new SqlCommand(sp, Con);
        cmd.Parameters.Add(new SqlParameter("@username", UserName));
        cmd.CommandType = CommandType.StoredProcedure;
        using (SqlDataReader _reader = cmd.ExecuteReader())
        {
            _reader.Read();
            _member.MemberId = int.Parse(_reader["DonarID"].ToString());
            _member.FirstName = _reader["FirstName"].ToString();
            _member.LastName = _reader["LastName"].ToString();
            _member.UserName = _reader["UserName"].ToString();
            _member.PermanentAddress = _reader[""].ToString();
            _member.CurrentAddress = int.Parse(_reader["CurrentAddress"].ToString());
            _member.DOB = Convert.ToDateTime(_reader["DOB"]);
            _member.BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString());
            _member.Gender = _reader["Gender"].ToString();
            _member.LastDonationDate = Convert.ToDateTime(_reader["LastDonationDate"]);
            _member.BestTime = _reader["BestTime"].ToString();
            _member.MobileNo = _reader["MobileNumber"].ToString();
            _member.PhoneNo = _reader["PhoneNumber"].ToString();
            _member.Email = _reader["Email"].ToString();
            _member.BloodDonationCardSnapshot = _reader["BloodDonationCardSnapshots"].ToString();
            _member.DonorStatus = bool.Parse(_reader["DonorStatus"].ToString());
            _member.AccountStatus = bool.Parse(_reader["AccountStatus"].ToString());
            _member.RoleId = bool.Parse(_reader["RoleID"].ToString());
            _member.ProfilePicture = _reader["ProfilePicture"].ToString();
        }
        return _member;
    }


    // Get user from userID
    public static MemberInfo GetMemberByUserID(int UserID)
    {


        MemberInfo _member = new MemberInfo();

        String sp = "Usp_GetMemeberbyID";


        SqlConnection Con = ConnectionHelper.GetConnection();

        SqlCommand cmd = new SqlCommand(sp, Con);
        cmd.Parameters.Add(new SqlParameter("@userid", UserID));
        cmd.CommandType = CommandType.StoredProcedure;
        using (SqlDataReader _reader = cmd.ExecuteReader())
        {
             _reader.Read();
             _member.MemberId = int.Parse(_reader["DonarID"].ToString());
             _member.FirstName = _reader["FirstName"].ToString();
             _member.LastName = _reader["LastName"].ToString();
             _member.UserName = _reader["UserName"].ToString();
            _member.PermanentAddress = _reader[""].ToString();
            _member.CurrentAddress = int.Parse(_reader["CurrentAddress"].ToString());
            _member.DOB = Convert.ToDateTime(_reader["DOB"]);
            _member.BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString());
            _member.Gender = _reader["Gender"].ToString();
            _member.LastDonationDate = Convert.ToDateTime(_reader["LastDonationDate"]);
            _member.BestTime = _reader["BestTime"].ToString();
            _member.MobileNo = _reader["MobileNumber"].ToString();
            _member.PhoneNo = _reader["PhoneNumber"].ToString();
            _member.Email = _reader["Email"].ToString();
            _member.BloodDonationCardSnapshot = _reader["BloodDonationCardSnapshots"].ToString();
            _member.DonorStatus = bool.Parse(_reader["DonorStatus"].ToString());
            _member.AccountStatus = bool.Parse(_reader["AccountStatus"].ToString());
            _member.RoleId = bool.Parse(_reader["RoleID"].ToString());
            _member.ProfilePicture = _reader["ProfilePicture"].ToString();
        }
        return _member;
    }

    //get users by Location and blood Group
    public static DataTable GetDonarByLocationAndBloodGroup(int LocationID, int BloodGroupID )
    {
        //List<MemberInfo> lstMembers = new List<MemberInfo>();
        String sp = "Usp_GetMemeberbyLocationBloodGroup";


        SqlConnection Con = ConnectionHelper.GetConnection();

        SqlCommand cmd = new SqlCommand(sp, Con);
        cmd.Parameters.Add(new SqlParameter("@Location", LocationID));
        cmd.Parameters.Add(new SqlParameter("@BloodGroup", BloodGroupID));
        cmd.CommandType = CommandType.StoredProcedure;

        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);

        /*
        using (SqlDataReader _reader = cmd.ExecuteReader())
        {
            while (_reader.Read())
            {
                lstMembers.Add(new MemberInfo
                {
                    MemberId = int.Parse(_reader["DonarID"].ToString()),
                    FirstName = _reader["FirstName"].ToString(),
                    LastName = _reader["LastName"].ToString(),
                    UserName = _reader["UserName"].ToString(),
                    PermanentAddress = _reader["PermanentAddress"].ToString(),
                    CurrentAddress = int.Parse(_reader["CurrentAddress"].ToString()),
                    DOB = Convert.ToDateTime(_reader["DOB"]),
                    BloodGroupId = int.Parse(_reader["BloodGroupID"].ToString()),
                    Gender = _reader["Gender"].ToString(),
                    LastDonationDate = Convert.ToDateTime(_reader["LastDonationDate"]),
                    BestTime = _reader["BestTime"].ToString(),
                    MobileNo = _reader["MobileNumber"].ToString(),
                    PhoneNo = _reader["PhoneNumber"].ToString(),
                    Email = _reader["Email"].ToString(),
                    BloodDonationCardSnapshot = _reader["BloodDonationCardSnapshots"].ToString(),
                    DonorStatus = bool.Parse(_reader["DonorStatus"].ToString()),
                    AccountStatus = bool.Parse(_reader["AccountStatus"].ToString()),
                    RoleId = bool.Parse(_reader["RoleID"].ToString()),
                    ProfilePicture = _reader["ProfilePicture"].ToString(),
                });
            }
        }*/
        return dt;
    }



}