using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VREI
{
    public partial class ActivityPhotos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString.Get("ActId")))
            {
                int actId = Convert.ToInt32(Request.QueryString.Get("ActId"));
                
                //Title name
                using (dbo_vreiEntities myEntities = new dbo_vreiEntities())
                {
                    var actTitle = (from a in myEntities.activities
                                    where a.Id == actId
                                    select a.Title).SingleOrDefault();
                    if (!string.IsNullOrEmpty(actTitle))
                    {
                        ltlTitle.Text = actTitle;
                    }
                }

                //Photos
                using (dbo_vreiEntities myConexts = new dbo_vreiEntities())
                {
                    var actPics = from a in myConexts.activitypics
                                  where a.ActivityId == actId
                                  select a;
                    if (actPics.Any())
                    {
                        Repeater1.DataSource = actPics.ToList();
                        Repeater1.DataBind();

                    }
                }
                 
            }
            
        }
    }
}