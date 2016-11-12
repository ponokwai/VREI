using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VREI
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sliders
            using (dbo_vreiEntities myEntities = new dbo_vreiEntities())
            {
                var mySliders = from s in myEntities.homepagesliders
                                select s;

                Repeater1.DataSource = mySliders.ToList();
                Repeater1.DataBind();
            }

            //Page text
            using (dbo_vreiEntities myEntities = new dbo_vreiEntities())
            {
                var pgText = (from p in myEntities.pagecontents
                              where p.Id == 1
                              select p.PageText).SingleOrDefault();
                if (!string.IsNullOrEmpty(pgText))
                {
                    lblText.Text = pgText.ToString().Replace(Environment.NewLine, "<br />");
                }
            }
        }
    }
}