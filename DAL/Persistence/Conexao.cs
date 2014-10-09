using System;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace DAL.Persistence
{
    public class Conexao
    {
        protected MySqlConnection Con;
        protected MySqlCommand Cmd;
        protected MySqlDataReader Dr;

        //Método para Abrir Conexão:
        protected void AbrirConexao()
        {
            try
            {
                Con = new MySqlConnection(ConfigurationManager.ConnectionStrings["Banco"].ConnectionString);
                Con.Open();
            }
            catch (Exception ex)
            {
                throw new Exception("\tErro ao conectar com o Banco da Dados " + ex.Message);
            }
            
        }

        //Método para Fechar Conexão:
        protected void FecharConexao()
        {
            try
            {
                if (Con != null)
                    Con.Close();
            }
            catch (Exception ex)
            {
                throw new Exception("\tErro ao desconectar o Banco de Dados " + ex.Message);
            }
        }
    }
}
