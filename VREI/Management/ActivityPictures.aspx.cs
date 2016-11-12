using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VREI.Management
{
    public partial class ActivityPictures : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get title activity name
            int actId = Convert.ToInt32(Request.QueryString.Get("ActId"));

            using (dbo_vreiEntities myEntities = new dbo_vreiEntities())
            {
                var actTitle = (from a in myEntities.activities
                                where a.Id == actId
                                select a.Title).SingleOrDefault();
                if (!string.IsNullOrEmpty(actTitle))
                {
                    ltlTitle.Text = actTitle.ToString();
                }
            }

        }

        protected void EntityDataSource1_Inserting(object sender, EntityDataSourceChangingEventArgs e)
        {
            //Upload image file and update audit info
            activitypic myPic = (activitypic)e.Entity;
            int actId = Convert.ToInt32(Request.QueryString.Get("ActId"));

            FileUpload FileUploadInsertItem = (FileUpload)ListView1.InsertItem.FindControl("FileUploadInsertItem");
            if (FileUploadInsertItem.HasFile)
            {
                //Upload new file
                string virtualFolder = "~/Images/Activities/";
                string physicalFolder = Server.MapPath(virtualFolder);
                string fileName = Guid.NewGuid().ToString();
                string extension = System.IO.Path.GetExtension(FileUploadInsertItem.FileName);

                FileUploadInsertItem.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension)); //save image file
                myPic.ImageUrl = virtualFolder + fileName + extension;
            }
            //Update audit
            myPic.ActivityId = actId;
            myPic.EditedBy = User.Identity.Name;
            myPic.DateTimeEdited = DateTime.Now;
        }

        protected void EntityDataSource1_Deleted(object sender, EntityDataSourceChangedEventArgs e)
        {
            //Delete Pic file
            activitypic myPic = (activitypic)e.Entity;
            string imgVirPath = myPic.ImageUrl;
            if (!string.IsNullOrEmpty(imgVirPath))
            {
                string filePath = Server.MapPath(imgVirPath);
                File.Delete(filePath);
            }

        }

        protected void EntityDataSource1_Updating(object sender, EntityDataSourceChangingEventArgs e)
        {
            //if new file exist, delete old pic file and upload new file, then update created by details
            //Upload image file and update audit info
            activitypic myPic = (activitypic)e.Entity;
            int actId = Convert.ToInt32(Request.QueryString.Get("ActId"));

            FileUpload FileUploadEditItem = (FileUpload)ListView1.EditItem.FindControl("FileUploadEditItem");
            if (FileUploadEditItem.HasFile)
            {
                //Delete old file
                string imgVirPath = myPic.ImageUrl;
                if (!string.IsNullOrEmpty(imgVirPath))
                {
                    string filePath = Server.MapPath(imgVirPath);
                    File.Delete(filePath);
                }

                //Upload new file
                string virtualFolder = "~/Images/Activities/";
                string physicalFolder = Server.MapPath(virtualFolder);
                string fileName = Guid.NewGuid().ToString();
                string extension = Path.GetExtension(FileUploadEditItem.FileName);

                FileUploadEditItem.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension)); //save image file
                myPic.ImageUrl = virtualFolder + fileName + extension;

            }
            //Update audit
            myPic.EditedBy = User.Identity.Name;
            myPic.DateTimeEdited = DateTime.Now;
        }
    }
}