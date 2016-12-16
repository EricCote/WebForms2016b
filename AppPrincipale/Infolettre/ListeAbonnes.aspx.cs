using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPrincipale
{
    public partial class ListeAbonnes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.
                      ConnectionStrings["Infolettre"].
                           ConnectionString;

            SqlCommand cmd = new SqlCommand("SELECT * FROM Abonnements", conn);
            using (conn)
            { 
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                grdAbonnes.DataSource = dr;
                grdAbonnes.DataBind();

            }



        }
    }
}