using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VREI.Management
{
    public partial class Activities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EntityDataSource1_Inserting(object sender, EntityDataSourceChangingEventArgs e)
        {
            //Update created by and date-time created
            activity myActivity = (activity)e.Entity;

            myActivity.CreatedBy = User.Identity.Name;
            myActivity.DateTimeCreated = DateTime.Now;
            myActivity.LastModifiedDateTime = myActivity.DateTimeCreated;
        }

        protected void EntityDataSource1_Updating(object sender, EntityDataSourceChangingEventArgs e)
        {
            //Update modified by and date-time modified
            activity myActivity = (activity)e.Entity;

            myActivity.LastModifiedBy = User.Identity.Name;
            myActivity.LastModifiedDateTime = DateTime.Now;
        }

        protected void EntityDataSource1_Deleting(object sender, EntityDataSourceChangingEventArgs e)
        {
            //delete all picture files in dependent table
            activity myActivity = (activity)e.Entity;

            int ActId = Convert.ToInt32(myActivity.Id);
            using (dbo_vreiEntities myEntities = new dbo_vreiEntities())
            {
                var ActPics = from a in myEntities.activitypics
                              where a.ActivityId == ActId
                              select a;
                if (ActPics.Any())
                {
                    foreach (var pic in ActPics)
                    {
                        //REMOVE PICTURE
                        string filePath = Server.MapPath(pic.ImageUrl);
                        File.Delete(filePath);
                        //REMOVE DBO FIELDS
                        myEntities.activitypics.Remove(pic);
                    }
                    myEntities.SaveChanges();
                }
            }
        }
    }
}