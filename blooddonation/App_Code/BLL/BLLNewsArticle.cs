using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NewsArticle
/// </summary>
public class BLLNewsArticle
{
	public BLLNewsArticle()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static DataTable GetAllNewsArticle()
    {
        DataTable dtc;
        try
        {
            using (SqlConnection con =ConnectionHelper.GetConnection())
            {
                using(SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "Usp_NewsArticle_GetAll";
                    cmd.CommandType = CommandType.StoredProcedure;

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        dtc = new DataTable();
                        da.Fill(dtc);

                        return dtc;
                    }

                }
            }
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
       
    }
  
    public static int AddNewsArticle(NewsArticleInfo _NewsArticle)
    {
        try
        {
            using (SqlConnection con = ConnectionHelper.GetConnection())
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "Usp_NewsArticle_Add";
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@heading", _NewsArticle.Heading);
                    cmd.Parameters.AddWithValue("@description", _NewsArticle.Description);
                    cmd.Parameters.AddWithValue("@imagename", _NewsArticle.ImageName);

                    return cmd.ExecuteNonQuery();
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public static int UpdateNewsArticle(NewsArticleInfo _NewsArticle)
    {
        try
        {
            using (SqlConnection con = ConnectionHelper.GetConnection())
            {
                using(SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandText = "Usp_NewsArticle_Update";//storedprocedure not made yet
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@newsid", _NewsArticle.NewsId);//how to get newsid??
                    cmd.Parameters.AddWithValue("@heading", _NewsArticle.Heading);
                    cmd.Parameters.AddWithValue("@description", _NewsArticle.Description);
                    cmd.Parameters.AddWithValue("@imagename", _NewsArticle.ImageName);

                    return cmd.ExecuteNonQuery();
                }
            }

        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }

    public static int DeleteNewsArticle(NewsArticleInfo _NewsArticle)
    { 
        try
        {
            using (SqlConnection con = ConnectionHelper.GetConnection())
            {
                using(SqlCommand cmd=con.CreateCommand())
                {
                    cmd.CommandText = "Usp.NewsArticle_Delete";
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@newsid", _NewsArticle.NewsId);//how to get newsid??

                    return cmd.ExecuteNonQuery();
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    
    }
}