using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for ConnectionHelper
/// </summary>
public class ConnectionHelper
{
	public ConnectionHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["BloodDonorConnectionString"].ConnectionString;
    }

    public static SqlConnection GetConnection()
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = GetConnectionString();
        con.Open();
        return con;
    }
    public static int ExecuteProcedure(string sql, SqlParameter[] param)
    {
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {

            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.CommandType = CommandType.Text;

                if (param!= null)
                {
                    cmd.Parameters.AddRange(param);
                }
             return  cmd.ExecuteNonQuery();
            }

        }
    }
    public static DataTable GetTable(string sql, SqlParameter[] param)
    {
        DataTable dt = null;
        using (SqlConnection con = ConnectionHelper.GetConnection())
        {

            using (SqlCommand cmd = con.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.CommandType = CommandType.Text;

                if (param != null)
                {
                    cmd.Parameters.AddRange(param);
                }
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    dt = new DataTable();
                    da.Fill(dt);
                }
                return dt;
            }

        }
    }
}