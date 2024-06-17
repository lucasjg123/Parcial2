using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2
{
    public partial class Registracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (!IsValid) // verificar si los validadores dan true
                return;


            // cargar cookie y sesion
            //cookio: contraseña
            HttpCookie cookie1 = new HttpCookie("contraseña", txtContraseña.Text.Trim());
            Response.Cookies.Add(cookie1);

            //sesion: username
            Session["username"] = txtUsuario.Text.Trim();

            // redireccionamos a gestion de archivos
            Response.Redirect("GestionDeArchivos.aspx");
        }
    }
}