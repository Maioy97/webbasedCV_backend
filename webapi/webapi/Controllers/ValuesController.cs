using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data.SqlClient;
using System.Data;
using System.Web.Script.Serialization;
using webapi.Models;

namespace webapi.Controllers
{
    public class ValuesController : ApiController
    {
        // GET api/values
        string conn_string;
        string procedurename;
        SqlDataAdapter SQlda;
        SqlConnection conn;

        public IEnumerable<Project> Get()
        {
            //JavaScriptSerializer serializer = new JavaScriptSerializer();
            //var providerName = "System.Data.SqlClient";
            conn_string = "Data Source=servername ;Initial Catalog=Dbname;Integrated Security=True";
            procedurename = "spGetProjectsdetailslist;";
            DataSet projectsDT = new DataSet();
            var projectlist = new List<Project>();
            Project row_current;

            conn = new SqlConnection(conn_string);
            conn.Open();
            SQlda = new SqlDataAdapter(procedurename, conn);
            SQlda.Fill(projectsDT);
            conn.Close();
      
            foreach (DataRow row in projectsDT.Tables[0].Rows)
            {
              row_current = new Project();
              row_current.fill(row);
              projectlist.Append<Project>(row_current);    
            }
            // return a json with the return of the database
            return projectlist;
            
        }

        // GET api/values/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/values
        public void Post([FromBody]string value)
        {
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
}
