using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NewsArticleInfo
/// </summary>
public class NewsArticleInfo
{
	public NewsArticleInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int NewsId { get; set; }
    public string Heading { get; set; }
    public string Description { get; set; }
    public string ImageName { get; set; }
}