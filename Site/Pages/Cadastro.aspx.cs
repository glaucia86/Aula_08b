using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Persistence;
using DAL.Model;

namespace Site.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_CadastrarProduto(object sender, EventArgs e)
        {
            var p = new Produto()
            {
                NomeProduto     = txtNome.Text,
                PrecoProduto    = Convert.ToDecimal(txtPreco.Text),
                DataCompra      = Convert.ToDateTime(txtDataCompra.Text),
                Garantia        = rblGarantia.SelectedValue,
                Entrega         = rblEntrega.SelectedValue,
                InfoAdicionais  = txtAdicionais.Text               
            };

            var d = new ProdutoDal();
            d.Insert(p);
            d.Insert(p);

            lblMensagem.Text = "Produto - " + p.NomeProduto + " - Cadastrado com Sucesso!";

            LimparCampos();
        }

        private void LimparCampos()
        {
            txtNome.Text                = string.Empty;
            txtPreco.Text               = string.Empty;
            txtAdicionais.Text          = string.Empty;
            rblEntrega.SelectedIndex    = -1;
            rblGarantia.SelectedIndex   = -1;
            txtDataCompra.Text          = string.Empty;
        }
    }
}