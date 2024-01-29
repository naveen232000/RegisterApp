using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterApp
{
    public partial class Validataion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userMsg.Visible = false;
            Page.UnobtrusiveValidationMode=UnobtrusiveValidationMode.None;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                userMsg.Visible = true;
                userMsg.Text = "User Name : " + UserName.Text;
                userMsg.Text += "<br>PassWord : " + PassWd.Text;
                userMsg.Text += "<br>Age : " + TexAge.Text;
                userMsg.Text += "<br>Email : " + EmailTxt.Text;
                userMsg.Text += "<br>Pin Code : " + Texpin.Text;
                userMsg.Text += "<br> Lucky Number : " + LuckyNum.Text;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int num=int.Parse(args.Value);
            args.IsValid = num % 2 == 1;
        }
    }
}