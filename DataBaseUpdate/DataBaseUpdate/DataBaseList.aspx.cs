using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Services;
namespace DataBaseUpdate
{
    public partial class DataBaseList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           


       }
            [WebMethod]
        public static  List<string> getDatabaseList(string sn,string uid,string ps)
        {
            string serverName =sn;
            string userid = uid;
            string password = ps;
            string database = "master";
            List<string> lst = new List<string>();
            SqlConnection con;
            using (con = new SqlConnection("server=" + serverName + ";uid=" + userid + ";pwd=" + password + ";database=" + database + ""))
            {
                SqlCommand cmd = new SqlCommand("select name from sys.databases", con);
                con.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        lst.Add(dr[0].ToString());
                       // lst.Items.Add(dr[0].ToString());
                    }
                }
               
            }
            DataBaseList dd = new DataBaseList();
            dd.DrpDatabaseList1(lst);
            return lst;
        }
        private void DrpDatabaseList1(List<string> lst)
        {
            DropDownList drp = new DropDownList();
            for (int i = 0; i < lst.Count; i++)
            {
                drp.Items.Add(i.ToString());
            }
           
            Controls.Add(drp);
        }
    }
    
}