using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    public class Produto
    {
        public int Codigo { get; set; }
        public string NomeProduto { get; set; }
        public decimal PrecoProduto { get; set; }
        public DateTime DataCompra { get; set; }
        public string Garantia { get; set; }
        public string Entrega { get; set; }
        public string InfoAdicionais { get; set; }
    }
}
