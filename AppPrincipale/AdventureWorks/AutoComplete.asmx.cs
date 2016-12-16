using AppPrincipale.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace AppPrincipale.AdventureWorks
{
    /// <summary>
    /// Summary description for AutoComplete
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [ScriptService]
    public class AutoComplete : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod]
        public string[] GetProduits(string prefixText, int count) 
        {
            using (AwContext db = new AwContext())
            {
                IQueryable<string> results = 
                                  from p in db.Products
                                  where p.Name.StartsWith(prefixText)
                                  orderby p.Name
                                  select p.Name;

                return results.Take(count).ToArray();
            }   
        }
    }
}
