using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HannProjectOmg.AdministradorThings
{
    public partial class Inspector : System.Web.UI.Page
    {
        

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HannApp.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                displayData();
            }
            
        }

        public void displayData()
        {

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            con.Open();

            ContentPlaceHolder Formulario = (ContentPlaceHolder)this.Master.FindControl("MainContent");
            SqlCommand cmd = con.CreateCommand();

            cmd.CommandType = CommandType.Text;
            //Request.QueryString["idUsuario"]
            cmd.CommandText = "Select [User], [Password], Nombre, Apellido from Usuarios where idUsuario = "+ Request.QueryString["idUsuario"] +";";

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {

                    txtUser.Text = reader.GetString(0);
                    txtPassword.Text = reader.GetString(1);
                    txtNombre.Text = reader.GetString(2);
                    txtApellido.Text = reader.GetString(3);

                }
            }
            else
            {
                Response.Redirect("/AdministradorThings/GestionarInspectores");
            }

            con.Close();

        }

        

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "EXEC spUpdateUserData " + Request.QueryString["idUsuario"] + ", '" + txtUser.Text.Trim() + "', '"+ txtPassword.Text.Trim()+"', '"+ txtNombre.Text.Trim() +"', '"+ txtApellido.Text.Trim() +"' ;";
                cmd.ExecuteNonQuery();

                con.Close();
                Response.Redirect("/AdministradorThings/GestionarInspectores");
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
            
        }
    }
}