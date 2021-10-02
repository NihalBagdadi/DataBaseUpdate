using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace DataBaseUpdate
{
    public partial class DataBaseList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string serverName = @"(LocalDB)\MSSQLLocalDB";
            string userid = "";
            string password = "";
            string database = "master";
            SqlConnection con; 
            using (con = new SqlConnection("server=" + serverName + ";uid=" + userid + ";pwd=" + password + ";database=" + database + ""))
            {
                SqlCommand cmd = new SqlCommand("select name from sys.database",con);
                con.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        drpDataBaseList1.Items.Add(dr[0].ToString());
                    }
                }
               
            }

        }
    }
}