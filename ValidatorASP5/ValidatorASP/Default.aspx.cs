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
            /*if (Page.IsValid)
            {
                Response.Write("Чувак, тебе " + Request.Form["textBox1"] + " лет! Пойди и найди работу!");
            }*/
        }

        protected void Unnamed_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int value = 0;
            if (Int32.TryParse(args.Value, out value))
            {
                if (value % 2 != 0)
                {
                    args.IsValid = true;
                }
                else
                {
                    (source as Label).Text = "Ошибка!";
                    args.IsValid = false;
                }
            }
            else {
                (source as Label).Text = "Число ввести надо!";
                args.IsValid = false;
            }
        }
    }
}