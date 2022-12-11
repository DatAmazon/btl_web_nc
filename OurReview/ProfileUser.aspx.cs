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
    public partial class ProfileUser : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["db_webnc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            int idProfile = Convert.ToInt32(Request["ProfileID1"]);

            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = cnn.CreateCommand())
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.CommandText = "sp_showProfile";
                    //muốn  hover vào account vào đc profile bản thân thì thay idProfile thành Session["user_id"]
                    cmd.Parameters.AddWithValue("@userid", (int)idProfile);
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

                        };
                    }
                }
            }
        }
    }
}