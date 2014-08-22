using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EventInfo
/// </summary>
public class EventInfo
{
	public EventInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int EventId { get; set; }
    public string EventTitle { get; set; }
    public DateTime Date { get; set; }
    public DateTime StartingTime { get; set; }
    public DateTime EndingTime { get; set; }
    public string Venue { get; set; }
    public string PostedBy { get; set; }
    public string Description { get; set; }
    public bool Status { get; set; }
    public string Image { get; set; }
    public DateTime IssueDate { get; set; }
}