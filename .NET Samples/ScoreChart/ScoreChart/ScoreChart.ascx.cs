using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreChart
{
    public partial class ScoreChart : System.Web.UI.UserControl
    {
        private string _ChartTitle = "";
        private string _DataXmlPath;

        protected void Page_Load(object sender, EventArgs e)
        {
            BasicChart.Titles.Add(this.ChartTitle);

            if (string.IsNullOrEmpty(this.DataXmlPath) != true)
            {
                BasicChart.Serializer.Load(Server.MapPath(this.DataXmlPath));
            }
        }

        public string ChartTitle
        {
            get { return _ChartTitle; }

            set { _ChartTitle = value; }
        }

        public string DataXmlPath
        {
            get { return _DataXmlPath; }

            set { _DataXmlPath = value; }
        }
    }
}