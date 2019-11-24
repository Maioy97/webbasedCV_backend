using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace webapi.Models
{
  public class Project
  {
    int pr_ID { set; get; }
    string pr_name { set; get; }
    string  pr_desc { set; get; }
    string pr_link { set; get; }
    string pr_catname { set; get; }
    string tl_name { set; get; }
    string tl_iconlink{ set; get; }

    public void fill(DataRow row)
    {
      this.pr_ID = Convert.ToInt32( row["pr_ID"]);
      this.pr_name = Convert.ToString(row["pr_name"]);
      this.pr_desc = Convert.ToString(row["pr_desc"]);
      this.pr_link = Convert.ToString(row["pr_link"]);
      this.pr_catname = Convert.ToString(row["pr_catname"]);
      this.tl_name = Convert.ToString(row["tl_name"]);
      this.tl_iconlink = Convert.ToString(row["tl_iconlink"]);
    }

  }
}
