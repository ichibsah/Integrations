using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;

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
                XmlReaderSettings settings = new XmlReaderSettings();
                settings.XmlResolver = null;
                settings.DtdProcessing = DtdProcessing.Parse;
                settings.ProhibitDtd = false;
                XmlReader reader = XmlReader.Create(Server.MapPath(this.DataXmlPath), settings);
                BasicChart.Serializer.Load(reader);
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