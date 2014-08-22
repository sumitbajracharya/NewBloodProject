using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BloodCenterInfo
/// </summary>
public class BloodCenterInfo
{
	public BloodCenterInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int CenterId { get; set; }
    public string Name { get; set; }
    public int LocationId { get; set; }
    public int PhoneNumber { get; set; }
    public string MapCoordinates { get; set; }
    public string Image { get; set; }
    public string Details { get; set; }
}