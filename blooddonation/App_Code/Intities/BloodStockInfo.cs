using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BloodStockInfo
/// </summary>
public class BloodStockInfo
{
	public BloodStockInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int StockId { get; set; }
    public string CenterId { get; set; }
    public int BloodGroupId { get; set; }
    public int Quantity { get; set; }
    public string BloodType { get; set; }
}