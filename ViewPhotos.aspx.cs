using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewPhotos : System.Web.UI.Page
{
    public string PhotoGalleryBaseUrl = "http://s3-us-west-2.amazonaws.com/";
    private const string ImageBucketName = "mfweirdphotosbucket";

    private string dbinstance = "weirdphoto-instance.cjvisujm06g1.us-west-2.rds.amazonaws.com";
    private string userid = "mfweird";
    private string password = "weird007";
    private string database = "weirdphotosdb";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void DisplayRecords()
    {
        DataTable dt = new DataTable();

        // Load data table from RDS, in order that existing code requires fewer modifications
        dt = DataTableFromRDS(dt);

        for (Int16 i = 0; i < dt.Rows.Count; i++)
        {
            Response.Write("<div class=\"float\">\n");
            Response.Write("<a href=\"" + PhotoGalleryBaseUrl + ImageBucketName + "/" + dt.Rows[i]["image_file_name"].ToString() + "\">");
            Response.Write("<img src=\"" + PhotoGalleryBaseUrl + ImageBucketName + "/" + dt.Rows[i]["image_thumb_name"].ToString() + "\" />");
            Response.Write("</a><br />\n");
            Response.Write(dt.Rows[i]["image_file_name"].ToString() + "<br />\n");
            Response.Write("Image Size: " + dt.Rows[i]["image_size"].ToString() + "<br />\n");
            Response.Write("</div>\n");
        }
    }

    private DataTable DataTableFromRDS(DataTable dt)
    {
        string cnstr = "server=";
        cnstr += dbinstance + ";User Id=";
        cnstr += userid + ";password=";
        cnstr += password + ";database=";
        cnstr += database;

        // create the database query
        string query = "SELECT * FROM images";

        MySqlConnection conn = new MySqlConnection(cnstr);

        MySqlDataAdapter dAdapter = new MySqlDataAdapter(query, conn);
        MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(dAdapter);
        dAdapter.Fill(dt);
        return dt;
    }
}