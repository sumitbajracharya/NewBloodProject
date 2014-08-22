using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AdminInfo
/// </summary>
public class AdminInfo
{
	public AdminInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AdminId { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string UserName { get; set; }
    public string Password { get; set; }
    public string Email { get; set; }

}