using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace HannProjectOmg
{
    public partial class Feed : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HannApp.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e){

            ContentPlaceHolder Formulario = (ContentPlaceHolder)this.Master.FindControl("MainContent");

            ((Label)Formulario.FindControl("lblSessionEquisDe")).Text = Session["idUsuario"].ToString();

            displayData();

        }

        public void displayData()
        {

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Usuarios;";
            cmd.ExecuteNonQuery();
            DataTable tbl = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(tbl);
            grdUsuarios.DataSource = tbl;
            grdUsuarios.DataBind();

            con.Close();

        }

    }
}