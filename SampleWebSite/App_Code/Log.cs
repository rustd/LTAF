﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

public class LogController : ApiController
{
    // GET api/<controller>
    public string Get()
    {
        return System.IO.File.ReadAllText(System.Web.Hosting.HostingEnvironment.ApplicationPhysicalPath + "Test\\TestLog.txt");
    }

    // GET api/<controller>/5
    public string Get(int id)
    {
        return "value";
    }

    // POST api/<controller>
    public void Post([FromBody]string value)
    {
    }

    // PUT api/<controller>/5
    public void Put(int id, [FromBody]string value)
    {
    }

    // DELETE api/<controller>/5
    public void Delete(int id)
    {
    }
}
