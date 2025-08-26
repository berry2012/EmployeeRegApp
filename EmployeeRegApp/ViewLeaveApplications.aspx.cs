using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace EmployeeRegApp
{
    public partial class ViewLeaveApplications : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["EmployeeDb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "SELECT EmployeeName, LeaveType, StartDate, EndDate, Reason FROM LeaveApplications";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        gvLeaveApplications.DataSource = dt;
                        gvLeaveApplications.DataBind();
                    }
                }
            }
        }
    }
}