using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddNewsArticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
       
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
         NewsArticleInfo _news= new NewsArticleInfo();
        _news.Heading=txtNewsTitle.Text;
        _news.Description = txtNewsBody.Text;
        _news.ImageName = "news"+fupNewsImage.FileName;
        fupNewsImage.PostedFile.SaveAs(Server.MapPath("~/Assets/Images/NewsImage/"+ _news.ImageName));
       
        try
        {
            int Result = BLLNewsArticle.AddNewsArticle(_news);
            if (Result == 1)
            {
                lblMessage.Text ="News has been successfully added ";
            }

        }
        catch (Exception ex)
        {

            lblMessage.Text = ex.Message;
        }
    }
}