using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17AB_DAO
{
    public partial class adicionarRecluso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            FileUpload fotografia = FormView1.FindControl("FileUpload1")
                as FileUpload;

            if (fotografia.HasFile)
                e.Values["fotografia"] = fotografia.FileBytes;
            else
                e.Values["fotografia"] = DBNull.Value;
        }
    }
}