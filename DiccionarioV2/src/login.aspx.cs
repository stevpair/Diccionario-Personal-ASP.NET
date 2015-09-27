
using DiccionarioV2.persistencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiccionarioV2.src
{
    public partial class login : System.Web.UI.Page
    {
private  string t;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            DictionaryEntities db = new DictionaryEntities();

            string correo = txtUsuario.Text;
            string pass = txtPassword.Text;

            var q = (from f in db.Usuario
                     where f.Correo.Equals(correo) && f.Contraseña.Equals(pass)
                     select f).SingleOrDefault();

            if (q != null)
            {
                mensaje.InnerText = "";
                Session.Add("Nombre", q.Nombre);
                Session.Add("Usuario", q.Correo);
                Response.Redirect("/vistas/inicio.aspx");
            }
            else
            {
                mensaje.InnerText = "Usuario o contraseña incorreta";
            }           
        }
    }
}