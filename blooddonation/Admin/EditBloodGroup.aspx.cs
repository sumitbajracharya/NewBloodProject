using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditBloodGroup : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string BloodGroup;
       BloodGroup = txtBloodGroup.Text;
       try
       {
           int Result = BLLBloodGroup.CreateBloodGroup(BloodGroup);
           if (Result==1)
           {
               lblMessage.Text = txtBloodGroup.Text + " has been successfully added to blood group";
           }
           
       }
       catch (Exception ex)
       {

           lblMessage.Text = ex.Message;
       }
      
       
    }
}