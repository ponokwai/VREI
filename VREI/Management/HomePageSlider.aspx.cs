using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VREI.Manager
{
    public partial class HomePageSlider : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EntityDataSource1_Inserting(object sender, EntityDataSourceChangingEventArgs e)
        {
            //Upload image file and save edited by and datetime edited
            homepageslider myHomePageSlider = (homepageslider)e.Entity;
            

            //image upload via fileupload control (insert item)
            FileUpload FileUploadInsertItem = (FileUpload)ListView1.InsertItem.FindControl("FileUploadInsertItem");
            string virtualFolder = "~/Images/SiteBuild/";
            string physicalFolder = Server.MapPath(virtualFolder);
            string fileName = Guid.NewGuid().ToString();
            string extension = System.IO.Path.GetExtension(FileUploadInsertItem.FileName);

            FileUploadInsertItem.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension)); //save image file
            myHomePageSlider.ImageUrl = virtualFolder + fileName + extension;


            myHomePageSlider.EditedBy = User.Identity.Name;
            myHomePageSlider.DateTimeEdited = DateTime.Now;
        }

        protected void EntityDataSource1_Deleted(object sender, EntityDataSourceChangedEventArgs e)
        {
            //Delete image file
            homepageslider myHomePageSlider = (homepageslider)e.Entity;
            string imgFile = Server.MapPath(myHomePageSlider.ImageUrl);
            System.IO.File.Delete(imgFile);
        }

        protected void EntityDataSource1_Updating(object sender, EntityDataSourceChangingEventArgs e)
        {
            //Upload image file (if new file exist first delete old file) and save edited by and datetime edited
            homepageslider myHomePageSlider = (homepageslider)e.Entity;

            FileUpload FileUploadEditItem = (FileUpload)ListView1.EditItem.FindControl("FileUploadEditItem");
            if (FileUploadEditItem.HasFile)
            {
                //Delete old file
                string imgFile = Server.MapPath(myHomePageSlider.ImageUrl);
                System.IO.File.Delete(imgFile);

                //Upload new file
                string virtualFolder = "~/Images/SiteBuild/";
                string physicalFolder = Server.MapPath(virtualFolder);
                string fileName = Guid.NewGuid().ToString();
                string extension = System.IO.Path.GetExtension(FileUploadEditItem.FileName);

                FileUploadEditItem.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension)); //save image file
                myHomePageSlider.ImageUrl = virtualFolder + fileName + extension;

            }

            myHomePageSlider.EditedBy = User.Identity.Name;
            myHomePageSlider.DateTimeEdited = DateTime.Now;
        }
    }
}