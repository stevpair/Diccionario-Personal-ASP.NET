using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiccionarioV2.vistas
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null )
            {
                bienvnida.InnerText = "Bienvenido " + Session["Nombre"].ToString();

            }
            else
            {
                Session.Abandon();
                Session.Clear();
                Response.Redirect("/vistas/Acceso_Denegado.aspx");
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            
        }
    }
}