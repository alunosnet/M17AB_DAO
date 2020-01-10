using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace M17AB_DAO
{
    /// <summary>
    /// Summary description for Servico
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Servico : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public string Conta(int de, int a)
        {
            string resultado = "";
            for (int i = de; i <= a; i++)
                resultado += i.ToString();

            return resultado;
        }

        public class aluno
        {
            public int numero { get; set; }
            public string nome { get; set; }
        }

        [WebMethod]
        public List<aluno> ListaAlunos()
        {
            List<aluno> Lista = new List<aluno>()
            {
                new aluno(){numero=1,nome="Joaquim" },
                new aluno(){numero=2,nome="Maria"}
            };
            return Lista;
        }

    }
}
