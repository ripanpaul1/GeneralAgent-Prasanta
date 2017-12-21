using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuoteHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IsValidUser"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void ibtnEdit_Click(object sender, ImageClickEventArgs e)
    {
        long Id = Convert.ToInt64(((ImageButton)sender).CommandArgument);
        Session["QuoteMode"] = "EDIT";
        Session["QuoteID"] = Id;
        Response.Redirect("CreateQuote.aspx");
    }

    protected void ibtnDetails_Click(object sender, ImageClickEventArgs e)
    {
        
    }

    protected void btnCreateQuote_Click(object sender, EventArgs e)
    {
        Session["QuoteMode"] = "ADD";
        Response.Redirect("CreateQuote.aspx");
    }
}