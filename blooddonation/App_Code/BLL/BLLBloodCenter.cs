using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BLLBloodCenter
/// </summary>
public class BLLBloodCenter
{
	public BLLBloodCenter()
	{
		//
		// TODO: Add constructor logic here
		//
	}
   
    public static DataTable GetCenter_ByCenterId(int CenterId)
    {
        SqlParameter[] param = new SqlParameter[]
        {
            new SqlParameter("@centerId", CenterId)
        };

        return ConnectionHelper.GetTable("SELECT TblLocation.LocationName, TblBloodCenter.* FROM  TblBloodCenter INNER JOIN TblLocation ON TblBloodCenter.LocationID = TblLocation.LocationID where CenterId=@centerId", param);
    }

  


    public static int CreateBloodCenter(BloodCenterInfo _BloodCenter)
    {

        SqlParameter[] param = new SqlParameter[]
     {
         new SqlParameter("@name",_BloodCenter.Name),
         new SqlParameter("@locationid",_BloodCenter.LocationId ),
         new SqlParameter("@phonenumber",_BloodCenter.PhoneNumber),
         new SqlParameter("@mapcoordinates",_BloodCenter.MapCoordinates),
         new SqlParameter("@image",_BloodCenter.Image),
         new SqlParameter("@details",_BloodCenter.Details)
     };
        return ConnectionHelper.ExecuteProcedure("insert into TblBloodCenter values (@name,@locationid,@phonenumber,@mapcoordinates,@image,@details)", param);

    }

    public DataTable GetBloodCenterList()
    {
        return ConnectionHelper.GetTable("SELECT TblBloodCenter.Name, TblLocation.LocationName, TblBloodCenter.CenterID FROM TblLocation INNER JOIN TblBloodCenter ON TblLocation.LocationID = TblBloodCenter.LocationID order by CenterID", null);
    }
    
    public int UpdateBloodCenter(int CenterID, string Name, string LocationID, string PhoneNumber, string MapCoordinates, string Image, string Details)
    {
        SqlParameter[] param = new SqlParameter[]
        {
             new SqlParameter("@CenterID",CenterID),
              new SqlParameter("@Name",Name),
               new SqlParameter("@LocationID",LocationID),
                new SqlParameter("@PhoneNumber",PhoneNumber),
                 new SqlParameter("@MapCoordinates",MapCoordinates),

            new SqlParameter("@Image",Image),
            new SqlParameter("@Details",Details)
            
            

        };
        return ConnectionHelper.ExecuteProcedure("Update TblBloodCenter set Name=@Name, LocationID=@LocationID, PhoneNumber=@PhoneNumber, MapCoordinates=@MapCoordinates, Image=@Image, Details=@Details Where CenterID=@CenterId", param);
    }
}