using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EmergencyBloodRequest
/// </summary>
public class EmergencyBloodRequest
{
	public EmergencyBloodRequest()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int RequestId { get; set; }
    public string FullName { get; set; }
    public int DistrictId { get; set; }
    public int LocationId { get; set; }
    public int BloodGroupId { get; set; }
    public int MobileNo { get; set; }
    public string Message { get; set; }
    public int Age { get; set; }
}