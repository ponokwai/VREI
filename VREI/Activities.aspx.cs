using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VREI
{
    public partial class Activities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (dbo_vreiEntities myEntities = new dbo_vreiEntities())
            {
                var myTxt = (from t in myEntities.pagecontents
                             where t.Id == 3
                             select t).SingleOrDefault();

                if (myTxt.PageText != null)
                {
                    Label1.Text = myTxt.PageText.ToString().Replace(Environment.NewLine, "<br />");
                }

                Image1.ImageUrl = myTxt.BannerUrl;

            }
        }
    }
}