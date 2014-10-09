using System;
using MySql.Data.MySqlClient;
using DAL.Model;
using System.Data;

namespace DAL.Persistence
{
    public class ProdutoDal : Conexao
    {
        //Método Insert:
        public void Insert(Produto p)
        {
            try
            {
                AbrirConexao();

                Cmd = new MySqlCommand("sp_inserir_produto", Con);
                Cmd.CommandType = CommandType.StoredProcedure; 

                Cmd.Parameters.AddWithValue("p_nome_produto", p.NomeProduto);
                Cmd.Parameters.AddWithValue("p_preco_produto", p.PrecoProduto);
                Cmd.Parameters.AddWithValue("p_data_compra", p.DataCompra.ToString("yyyy-MM-dd"));
                Cmd.Parameters.AddWithValue("p_garantia", p.Garantia);
                Cmd.Parameters.AddWithValue("p_entrega", p.Entrega);
                Cmd.Parameters.AddWithValue("p_info_adicionais", p.InfoAdicionais);

                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw new Exception("\tErro ao inserir o produto. " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
