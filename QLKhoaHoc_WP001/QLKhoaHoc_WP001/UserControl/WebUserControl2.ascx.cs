using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace de1.UserControl
{
    public partial class WebUserControl2 : System.Web.UI.UserControl
    {
        protected void BindGridview()
        {
            QLKhoaHocEntities1  a = new QLKhoaHocEntities1();
            var v = (from p in a.Courses      select p).ToList<Courses>();
            GridViewProduct.DataSource = v;
            GridViewProduct.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridview();
                BindDropDownList();
            }
        }
        protected void BindDropDownList()
        {
            MyShopModelEntities1 context = new MyShopModelEntities1();
            DropDownList1.DataSource = (from c in context.Categories select c).ToList<Category>();
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
        }
    }
}