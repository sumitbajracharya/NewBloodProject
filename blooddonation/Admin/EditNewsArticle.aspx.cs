using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditNewsArticle : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DataTable _all = new DataTable();
            if (_all.Rows.Count > 0)
            {
                gdvNewsArticle.DataSource= _all;
                gdvNewsArticle.DataBind();
            }
        }

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        NewsArticleInfo _news = new NewsArticleInfo();
        //_news.NewsId = txtNewsId.text;
        _news.Heading = txtNewsTitle.Text;
        _news.Description = txtNewsBody.Text;
        _news.ImageName = "news" + fupNewsImage.FileName;
        fupNewsImage.PostedFile.SaveAs(Server.MapPath("~/Assets/Imgae/NewsImage/" + _news.ImageName));

        try
        {
            int Result = BLLNewsArticle.UpdateNewsArticle(_news);
            if (Result == 1)
            {
                lblMessage.Text = "News has been successfully Updated ";
            }

        }
        catch (Exception ex)
        {

            lblMessage.Text = ex.Message;
        }
    }
    protected void gdvBloodGroup_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}