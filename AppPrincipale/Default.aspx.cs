﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPrincipale
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.IsInRole(@"WINDEV1610EVAL\ssh users"))
            {
                h1.InnerText = "le secret est 42";
            }

        }
    }
}