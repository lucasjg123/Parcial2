using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2
{
    public partial class GestionDeArchivos : System.Web.UI.Page
    {
        string path;

        protected void Page_Load(object sender, EventArgs e)
        {
            //validar si se registro el usuario
            if (Session["username"] == null)
            {
                lblMsj.Text = "Primero debe registrarse";
                lblMsj.Visible = true;
                return;
            }

            

            //habilitamos componentes
            Panel1.Visible = true;

            MostrarArchivos();
        }

        

        // carga archivos del usuario en la grilla
        private void MostrarArchivos()
        {
            string nombreUsuario = Session["username"].ToString(); // obtenemos el nombre de usuario
            path = $@"{Server.MapPath(".")}\{nombreUsuario}"; // establecemos la carpeta del mismo

            if (!Directory.Exists(path)) return; // validamos q exista la carpeta

            string[] files = Directory.GetFiles(path);
            List<Archivo> fileList = new List<Archivo>();

            foreach (string file in files)
            {
                var fileNew = new Archivo(Path.GetFileName(file), file);
                fileList.Add(fileNew);
            }
            GridView1.DataSource = fileList;
            GridView1.DataBind();
        }
        

        protected void btnSubir_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile)
            {
                lblRes.Text = "No se adjuntó ningún archivo.";
                return;
            }

            if(!Directory.Exists(path)) // si no existe la carpeta la creamos
                Directory.CreateDirectory(path);

            if (File.Exists($@"{path}\{FileUpload1.FileName}")) // validamos si ya existe el archivo
            {
                lblRes.Text = "Ya existe un archivo con dicho nombre en el servidor";
                return;
            }

            FileUpload1.SaveAs($@"{path}\{FileUpload1.FileName}");
            lblRes.Text = "El archivo se subio correctamente";
            MostrarArchivos();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "Descargar") return;

            GridViewRow registro = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
            string filePath = registro.Cells[2].Text;

            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.TransmitFile(filePath);
            Response.End();
        }
    }
}