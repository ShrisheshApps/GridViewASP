using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridViewWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grdProduct_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Double ListPrice = Double.Parse(e.Row.Cells[2].Text);
                if (ListPrice > 1000)
                {
                    e.Row.BackColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}