using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AdvanceRequestInfo
/// </summary>
public class AdvanceRequestInfo
{
	public AdvanceRequestInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int RequestId { get; set; }
    public string SeekerName { get; set; }
    public string MobileNo { get; set; }
    public string PatientName { get; set; }
    public int LocationId { get; set; }
    public int BloodGroupId { get; set; }
    public int Quantity { get; set; }
    public string HospitalName { get; set; }
    public string HospitalPaper { get; set; }
    public DateTime Date { get; set; }
    public DateTime Time { get; set; }
    public int Age { get; set; }
    public string Purpose { get; set; }
   
    public string Message { get; set; }

    //public int District { get; set; }
}