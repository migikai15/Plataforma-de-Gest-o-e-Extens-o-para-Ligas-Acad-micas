using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Services;

namespace SistemaLiga
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        public static object HelloWorld()
        {
            string statusConexaoBD = "Não conectado.";

            string connectionString = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    statusConexaoBD = "Conectado com sucesso à base de dados CONTFLOW!";
                }
            }
            catch (Exception ex)
            {
                // Se a base de dados SQLEXPRESS não estiver a correr ou a password estiver errada, devolve o erro
                statusConexaoBD = "Erro ao ligar à BD: " + ex.Message;
            }

            // Devolve o objeto que o ASP.NET converterá automaticamente para JSON
            return new
            {
                Status = "Sucesso",
                Mensagem = "Hello World! A comunicação entre o Frontend (JS) e o Backend (C#) está a funcionar!",
                BancoDeDados = statusConexaoBD
            };
        }
    }
}