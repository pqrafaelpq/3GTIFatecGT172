using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kifome.Classes;
using kifome.Persistencia;

public partial class Pages_Funcionario_PaginaPrincipal : System.Web.UI.Page
{
    private bool IsCliente(int tipo)
    {
        bool retorno = false;
        if (tipo == 1)
        {
            retorno = true;
        }
        return retorno;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        int codigo = Convert.ToInt32(Session["codigo"]);
        FuncionarioBD bd = new FuncionarioBD();
        Funcionario funcionario = bd.Select(codigo);
        if (!IsCliente(funcionario.Tipo))
        {
            Response.Redirect("../Erro/AcessoNegado.aspx");
        }
        else
        {
            lblTitulo.Text = "Bem vindo: " + funcionario.Nome;
        }
    }

    protected void lbSair_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("../Login.aspx");
    }
    protected void lbMateria_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Funcionario/MateriaPrima/EntradaMateriaPrima.aspx");
    }

    protected void lbPedido_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Funcionario/Pedido/Pedido.aspx");
    }

    protected void lbListaPedido_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Funcionario/Pedido/ListaPedidos.aspx");
    }
}