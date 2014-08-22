﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MemberInfo
/// </summary>
public class MemberInfo
{
	public MemberInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int MemberId { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string UserName { get; set; }
    public string PermanentAddress { get; set; }
    public int CurrentAddress { get; set; }
    public DateTime DOB { get; set; }
    public int BloodGroupId { get; set; }
    public string Gender { get; set; }
    public DateTime LastDonationDate { get; set; }
    public string BestTime { get; set; }
    public string MobileNo { get; set; }
    public string PhoneNo { get; set; }
    public string Email { get; set; }
    public string BloodDonationCardSnapshot { get; set; }
    public bool DonorStatus { get; set; }
    public bool AccountStatus { get; set; }
    public bool RoleId { get; set; }
    public string ProfilePicture { get; set; }
}