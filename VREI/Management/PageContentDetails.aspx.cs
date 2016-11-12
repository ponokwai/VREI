using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VREI.Manager
{
    public partial class PageContentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EntityDataSource1_Updating(object sender, EntityDataSourceChangingEventArgs e)
        {
            pagecontent myPage = (pagecontent)e.Entity;

            //Upload banner if fileupload has file
            FileUpload FileUploadPageBanner = (FileUpload)ListView1.EditItem.FindControl("FileUploadPageBanner");
            if (FileUploadPageBanner.HasFile)
            {
                //Delete previous file
                string virtualPath = myPage.BannerUrl;
                if (!string.IsNullOrEmpty(virtualPath))
                {
                    string filePath = Server.MapPath(virtualPath);
                    File.Delete(filePath);

                }

                //Upload new photo file
                string virtualFolder = "~/Images/SiteBuild/";
                string physicalFolder = Server.MapPath(virtualFolder);
                string newFileName = Guid.NewGuid().ToString();
                string extension = System.IO.Path.GetExtension(FileUploadPageBanner.FileName);

                FileUploadPageBanner.SaveAs(System.IO.Path.Combine(physicalFolder, newFileName + extension));
                myPage.BannerUrl = virtualFolder + newFileName + extension;
            }

            //Update Edited By and DateTime Edited fields
            myPage.EditedBy = User.Identity.Name;
            myPage.DateTimeEdited = DateTime.Now;
        }
    }
}