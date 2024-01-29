using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterApp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            outtxt.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            outtxt.Visible = true;
            string hob = "";
            foreach (ListItem li in HobLis.Items)
            {
                if(li.Selected)
                {
                    hob += li.Text + ", ";
                }
            }
            outtxt.Text = "Welcome";
            outtxt.Text += "<br>Name : " + empName.Text;
            outtxt.Text += "<br>Gender : " + GenLis.SelectedItem.Text;
            outtxt.Text += "<br>Date of Joining : " + Doj.SelectedDate.ToShortDateString();
            outtxt.Text += "<br>Hobbies :" + hob;
            outtxt.Text += "<br>Password : " + Pwd.Text;
            outtxt.Text += "<br>About : " + AbtText.Text;
        }
    }
}