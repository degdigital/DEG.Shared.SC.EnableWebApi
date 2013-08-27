using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace $rootNamespace$.Controllers
{
    public class TestController : ApiController
    {
        //
        // GET /api/Test/1
        
        public string GetTestById(int id)
        {
            return string.Format("Hello WebApi {0}!", id);
        }
    }
}
