using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageSwitch
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Page_PreInit(object sender, EventArgs e)
        {
            #if RELEASE
                this.MasterPageFile = "tutorial3.master";
            #endif
        }
    }
}