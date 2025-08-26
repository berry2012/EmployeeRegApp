using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace EmployeeRegApp
{
    public partial class ApplyLeave : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtEmployeeName.Text.Trim();
            string leaveType = ddlLeaveType.SelectedValue;
            string startDate = txtStartDate.Text;
            string endDate = txtEndDate.Text;
            string reason = txtReason.Text.Trim();

            // Basic validation
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(leaveType) ||
                string.IsNullOrEmpty(startDate) || string.IsNullOrEmpty(endDate))
            {
                // Show error message
                Response.Write("<script>alert('Please fill all required fields.');</script>");
                return;
            }

            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["EmployeeDb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "INSERT INTO LeaveApplications (EmployeeName, LeaveType, StartDate, EndDate, Reason) VALUES (@EmployeeName, @LeaveType, @StartDate, @EndDate, @Reason)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@EmployeeName", name);
                    cmd.Parameters.AddWithValue("@LeaveType", leaveType);
                    cmd.Parameters.AddWithValue("@StartDate", DateTime.Parse(startDate));
                    cmd.Parameters.AddWithValue("@EndDate", DateTime.Parse(endDate));
                    cmd.Parameters.AddWithValue("@Reason", reason);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            // Show success message
            Response.Write("<script>alert('Leave application submitted successfully!');</script>");

            // Clear the form
            txtEmployeeName.Text = "";
            ddlLeaveType.SelectedIndex = 0;
            txtStartDate.Text = "";
            txtEndDate.Text = "";
            txtReason.Text = "";
        }
    }
}