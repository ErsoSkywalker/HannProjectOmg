using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HannProjectOmg.InspectorThings
{
    public partial class GenerarReportes : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HannApp.mdf;Integrated Security=True");
        // class="" aria-label=".form-select-sm example"
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                drpRegion.Items.Add(new ListItem("Selecciona una región", "0"));
                drpComplejo.Items.Add(new ListItem("Selecciona un cine", "0"));
                drpComplejo.Enabled = false;
                displayComboData();
                displayCombos();
                displayTextBoxes();
            }
        }

        public void displayTextBoxes()
        {
            txtInstalaciones.TextMode = TextBoxMode.MultiLine;
            txtInstalaciones.Visible = false;

            txtSalas.TextMode = TextBoxMode.MultiLine;
            txtSalas.Visible = false;

            txtPersonal.TextMode = TextBoxMode.MultiLine;
            txtPersonal.Visible = false;

            txtServicio.TextMode = TextBoxMode.MultiLine;
            txtServicio.Visible = false;

            txtInsumos.TextMode = TextBoxMode.MultiLine;
            txtInsumos.Visible = false;

            txtDulceria.TextMode = TextBoxMode.MultiLine;
            txtDulceria.Visible = false;

            txtSanidad.TextMode = TextBoxMode.MultiLine;
            txtSanidad.Visible = false;

            txtTaquilla.TextMode = TextBoxMode.MultiLine;
            txtTaquilla.Visible = false;

        }

        public void displayCombos()
        {
            drpInstalaciones.Items.Add(new ListItem("Buen Estado", "1"));
            drpInstalaciones.Items.Add(new ListItem("Regular", "2"));
            drpInstalaciones.Items.Add(new ListItem("Mal Estado", "3"));

            drpSalas.Items.Add(new ListItem("Buen Estado", "1"));
            drpSalas.Items.Add(new ListItem("Regular", "2"));
            drpSalas.Items.Add(new ListItem("Mal Estado", "3"));

            drpPersonal.Items.Add(new ListItem("Buen Estado", "1"));
            drpPersonal.Items.Add(new ListItem("Regular", "2"));
            drpPersonal.Items.Add(new ListItem("Mal Estado", "3"));

            drpServicio.Items.Add(new ListItem("Buen Estado", "1"));
            drpServicio.Items.Add(new ListItem("Regular", "2"));
            drpServicio.Items.Add(new ListItem("Mal Estado", "3"));

            drpInsumos.Items.Add(new ListItem("Buen Estado", "1"));
            drpInsumos.Items.Add(new ListItem("Regular", "2"));
            drpInsumos.Items.Add(new ListItem("Mal Estado", "3"));

            drpDulceria.Items.Add(new ListItem("Buen Estado", "1"));
            drpDulceria.Items.Add(new ListItem("Regular", "2"));
            drpDulceria.Items.Add(new ListItem("Mal Estado", "3"));

            drpSanidad.Items.Add(new ListItem("Buen Estado", "1"));
            drpSanidad.Items.Add(new ListItem("Regular", "2"));
            drpSanidad.Items.Add(new ListItem("Mal Estado", "3"));

            drpTaquilla.Items.Add(new ListItem("Buen Estado", "1"));
            drpTaquilla.Items.Add(new ListItem("Regular", "2"));
            drpTaquilla.Items.Add(new ListItem("Mal Estado", "3"));
        }

        public void displayComboData()
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
            cmd.CommandText = "Select idRegion, Nombre_region from Regiones where estatus = 1;";

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {

                    drpRegion.Items.Add(new ListItem(reader.GetString(1), Convert.ToString(reader.GetInt32(0))));

                }
            }
            else
            {
                Response.Redirect("/InspectorThings/Feed");
            }

            con.Close();

        }

        protected void drpRegion_SelectedIndexChanged(object sender, EventArgs e)
        {
            drpComplejo.Enabled = true;
            drpComplejo.Items.Clear();
            
            if(drpRegion.SelectedValue.Equals("0"))
            {
                drpComplejo.Enabled = false;
                drpComplejo.Items.Add(new ListItem("Selecciona un cine", "0"));
            }
            else
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
                cmd.CommandText = "Select idComplejo, Complejo from Complejos where estatus = 1 AND idregion = " + drpRegion.SelectedValue + ";";

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        drpComplejo.Items.Add(new ListItem(reader.GetString(1), Convert.ToString(reader.GetInt32(0))));

                    }
                }
                else
                {
                    drpComplejo.Items.Add(new ListItem("Selecciona un cine", "0"));
                    drpComplejo.Enabled = false;
                }

                con.Close();
            }
            
        }

        protected void drpInstalaciones_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!drpInstalaciones.SelectedValue.Equals("1"))
            {
                txtInstalaciones.Visible = true;
            }
            else
            {
                txtInstalaciones.Text = "";
                txtInstalaciones.Visible = false;
            }
        }

        protected void drpSalas_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!drpSalas.SelectedValue.Equals("1"))
            {
                txtSalas.Visible = true;
            }
            else
            {
                txtSalas.Text = "";
                txtSalas.Visible = false;
            }
        }

        protected void drpPersonal_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!drpPersonal.SelectedValue.Equals("1"))
            {
                txtPersonal.Visible = true;
            }
            else
            {
                txtPersonal.Text = "";
                txtPersonal.Visible = false;
            }
        }

        protected void drpServicio_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!drpServicio.SelectedValue.Equals("1"))
            {
                txtServicio.Visible = true;
            }
            else
            {
                txtServicio.Text = "";
                txtServicio.Visible = false;
            }
        }

        protected void drpInsumos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!drpInsumos.SelectedValue.Equals("1"))
            {
                txtInsumos.Visible = true;
            }
            else
            {
                txtInsumos.Text = "";
                txtInsumos.Visible = false;
            }
        }

        protected void drpDulceria_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!drpDulceria.SelectedValue.Equals("1"))
            {
                txtDulceria.Visible = true;
            }
            else
            {
                txtDulceria.Text = "";
                txtDulceria.Visible = false;
            }
        }

        protected void drpSanidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!drpSanidad.SelectedValue.Equals("1"))
            {
                txtSanidad.Visible = true;
            }
            else
            {
                txtSanidad.Text = "";
                txtSanidad.Visible = false;
            }
        }

        protected void drpTaquilla_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!drpTaquilla.SelectedValue.Equals("1"))
            {
                txtTaquilla.Visible = true;
            }
            else
            {
                txtTaquilla.Text = "";
                txtTaquilla.Visible = false;
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            lblError.Text = "";
            if(drpComplejo.SelectedValue.Equals("0") || drpComplejo.SelectedValue.Equals("0"))
            {
                lblError.Text = "Debes seleccionar un Cine / Región correctos";
            }
            else
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "EXEC [spInsertReport] " + Session["idUsuario"] + ", " + drpRegion.SelectedValue + ", "
                        + drpComplejo.SelectedValue + ", "
                        + drpInstalaciones.SelectedValue + ", '" 
                        + txtInstalaciones.Text.Trim() + "', " 
                        + drpSalas.SelectedValue + ", '"
                        + txtSalas.Text.Trim() + "', "
                        + drpPersonal.SelectedValue + ", '"
                        + txtPersonal.Text.Trim() + "', "
                        + drpServicio.SelectedValue + ", '"
                        + txtServicio.Text.Trim() + "', "
                        + drpInsumos.SelectedValue + ", '"
                        + txtInsumos.Text.Trim() + "', "
                        + drpDulceria.SelectedValue + ", '"
                        + txtDulceria.Text.Trim() + "', "
                        + drpSanidad.SelectedValue + ", '"
                        + txtSanidad.Text.Trim() + "', "
                        + drpTaquilla.SelectedValue + ", '"
                        + txtTaquilla.Text.Trim() + "';";
                    cmd.ExecuteNonQuery();

                    con.Close();
                    Response.Redirect("/InspectorThings/Feed");
                }
                catch (Exception ex)
                {
                    lblError.Text = ex.Message;
                }
            }
            
        }
    }

 }
