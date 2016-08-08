using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebLogin : System.Web.UI.Page
{
    private string dbinstance = "users-db-instance.cjvisujm06g1.us-west-2.rds.amazonaws.com";
    private string userid = "mfweird";
    private string password = "weird007";
    private string database = "userdb";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {

        string username = ((TextBox)this.FindControl("userBox")).Text;
        string password = ((TextBox)this.FindControl("passwordBox")).Text;
        if (CheckLogin(username,password))
        {
            Server.Transfer("ManagementPage.aspx", true);
        }
    }

    private Boolean CheckLogin(string name, string password)
    {
        string cnstr = "server=";
        cnstr += dbinstance + ";User Id=";
        cnstr += userid + ";password=";
        cnstr += password + ";database=";
        cnstr += database;
        Boolean found = false;

        string query = "SELECT password FROM USERS WHERE name = "+'\''+name+'\'';

        MySqlConnection conn = new MySqlConnection(cnstr);

        MySqlCommand cmd = new MySqlCommand(query, conn);
        try
        {
            conn.Open();
            string pwMatch = string.Empty;
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                pwMatch = reader.GetString("password");
            }

            if (pwMatch.Equals(password))
            {
                found = true;
            }
        }
        catch (System.Exception ex)
        {

        }
        
        
        return found;
        
    }
}