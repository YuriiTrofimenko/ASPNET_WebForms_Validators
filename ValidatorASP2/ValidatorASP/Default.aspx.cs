using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidatorASP
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendButton_Click(object sender, EventArgs e)
        {
            //Валидация на сервере
            if (Page.IsValid)
            {
                Response.Write("Чувак, тебе " + Request.Form["textBox1"] + " лет! Пойди и найди работу!");
            }
        }
    }
}