using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kifome.Classes;
using kifome.Persistencia;
using System.Data;

public partial class Pages_Administrador_PaginaPrincipal : System.Web.UI.Page
{
    private bool IsAdministrador(int tipo)
    {
        bool retorno = false;
        if (tipo == 0)
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
        if (!IsAdministrador(funcionario.Tipo))
        {
            Response.Redirect("../Erro/AcessoNegado.aspx");
        }
        else
        {
            lblTitulo.Text = "Bem vindo, Administrador: " + funcionario.Nome;
        }

        ItensPedidoBD gridbd = new ItensPedidoBD();
        DataSet ds = gridbd.SelectGrafico();
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }

    protected void lbSair_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("../Login.aspx");
    }
    protected void lbCadastroFuncionario_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/Funcionario/CadastroFuncionario.aspx");
    }
    protected void lbMateria_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/MateriaPrima/CadastroMateriaPrima.aspx");
    }
    protected void lbProduto_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/Produto/CadastroProduto.aspx");
    }
    protected void lbEntradaMatéria_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/MateriaPrima/EntradaMateriaPrima.aspx");
    }

    protected void lbPedido_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/Pedido/Pedido.aspx");
    }

    protected void lbListadePedidos_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/Pedido/ListaPedidos.aspx");
    }

    protected void lbListadeProdutos_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/Produto/ListaProduto.aspx");
    }

    protected void lbSaidaMateria_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/MateriaPrima/SaidaMateriaPrima.aspx");
    }

    protected void lbListarMateriaPrima_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/MateriaPrima/ListarMateriaPrima.aspx");
    }

    protected void lbListaEntradaSaida_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/MateriaPrima/ListarEntrada.aspx");
    }

    protected void lbListaProdutosVendas_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Administrador/Pedido/ListaItensPedido.aspx");
    }
}