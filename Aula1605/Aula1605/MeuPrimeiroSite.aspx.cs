using Aula1605.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1605
{
    public partial class MeuPrimeiroSite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            txtDescricao.Text=string.Empty
            chkAtivo.Checked = false;

            if(ViewState["controle"]==null)
            ViewState.Add("controle", "i");
            else
            { int quantidadeClique = (int)ViewState["controle"];
                quantidadeClique++;
                ViewState["controle"] = quantidadeClique;
            }
               
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Projeto proj = new Projeto();
            proj.Nome = txtNome.Text;
            proj.Ativo = chkAtivo.Checked;
            
        }
    }
}