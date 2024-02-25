using System;

namespace YourNamespace
{
    public partial class Login : System.Web.UI.Page
    {
        private object txtUsername;
        private object txtPassword;

        protected void Page_Load(object sender, EventArgs e)
        {
            // You can add any code that needs to run when the page loads here
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // This method will be triggered when the login button is clicked
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // You can add authentication logic here, for example:
            if (username == "admin" && password == "password")
            {
                // Redirect to a different page upon successful login
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                // Display an error message or perform other actions for failed login
            }
        }
    }
}
