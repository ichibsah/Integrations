using System;
using System.Web;
using System.Data;

namespace ScoreTable
{
    public partial class ScoreTable : System.Web.UI.UserControl
    {
        private string _DataXmlPath;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.DataXmlPath) != true)
            {
                string FilePath = Server.MapPath(this.DataXmlPath);

                DataSet DS = new DataSet();
                DS.ReadXml(FilePath);

                this.TableGridView.DataSource = DS.Tables[0];
                this.TableGridView.DataBind();
            }
        }

        public string DataXmlPath
        {
            get { return _DataXmlPath; }

            set { _DataXmlPath = value; }
        }
    }
}