using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OurReview
{
    public partial class SearchUser : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["db_webnc"].ConnectionString;
        string keywordSearch;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["user_id"] == 0)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                keywordSearch = Convert.ToString(Request["keyword"]);

                using (SqlConnection cnn = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = cnn.CreateCommand())
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.CommandText = "sp_tblUser_searchAccount";
                        cmd.Parameters.AddWithValue("@userName", keywordSearch);
                        cnn.Open();
                        using (SqlDataReader rd = cmd.ExecuteReader())
                        {
                            if (rd.HasRows)
                            {
                                RptSearch.DataSource = rd;
                                RptSearch.DataBind();

                            }
                            else
                            {
                                lbMessage.Text = "fail";
                            }
                           ;

                            //changeNameGr.Visible = false;
                        }
                        int count = RptSearch.Items.Count;
                        if (count != 0)
                        {
                            lbMessage.Text = count.ToString();
                        }
                        lbMessage.Text = "(" + count.ToString() + " kết quả)";
                        cnn.Close();
                    }
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = cnn.CreateCommand())
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.CommandText = "sp_tblUser_searchAccount";
                    cmd.Parameters.AddWithValue("@userName", keywordSearch);
                    cnn.Open();
                    using (SqlDataReader rd = cmd.ExecuteReader())
                    {
                        if (rd.HasRows)
                        {
                            RptSearch.DataSource = rd;
                            RptSearch.DataBind();

                        }
                        else
                        {
                            lbMessage.Text = "fail";
                        }
                       ;

                        //changeNameGr.Visible = false;
                    }
                    int count = RptSearch.Items.Count;
                    if (count != 0)
                    {
                        lbMessage.Text = count.ToString();
                    }
                    lbMessage.Text = "(" + count.ToString() + " kết quả)";
                    cnn.Close();
                }
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}