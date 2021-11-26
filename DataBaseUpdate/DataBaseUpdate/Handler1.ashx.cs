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
using DataBaseUpdate.Modals;
namespace DataBaseUpdate
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");
        }
        [WebMethod]
        public static List<DatabaseName> getDatabaseList(string sn, string uid, string ps)
        {
            int dbid = 1;
            string serverName = sn;
            string userid = uid;
            string password = ps;
            string database = "master";
            List<DatabaseName> lst = new List<DatabaseName>();

            SqlConnection con;
            using (con = new SqlConnection("server=" + serverName + ";uid=" + userid + ";pwd=" + password + ";database=" + database + ""))
            {
                SqlCommand cmd = new SqlCommand("select name from sys.databases", con);
                con.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        lst.Add(new DatabaseName() { DbId = dbid, DbName = dr[0].ToString() });
                        dbid++;
                        // lst.Items.Add(dr[0].ToString());
                    }
                }

            }

            return lst;
        }
        [WebMethod]
        public static string getColumnsList(string databaseName, string sn, string uid, string ps)
        {
            int dbid = 1;
            string serverName = sn;
            string userid = uid;
            string password = ps;
            string totalTables = "";
            List<DatabaseName> lst = new List<DatabaseName>();

            SqlConnection con;
            using (con = new SqlConnection("server=" + serverName + ";uid=" + userid + ";pwd=" + password + ";database=" + databaseName + ""))
            {
                SqlCommand cmd = new SqlCommand("select  count(distinct TABLE_NAME) as [TotalTable] from INFORMATION_SCHEMA.COLUMNS where TABLE_CATALOG='" + databaseName + "'", con);
                con.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        totalTables = dr[0].ToString();
                        dbid++;
                        // lst.Items.Add(dr[0].ToString());
                    }
                }

            }

            return totalTables;
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}