using kifome.Classes;
using kifome.Persistencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Administrador_Pedido_Cancelado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PedidoBD bd = new PedidoBD();
            Pedido pedido = bd.SelectGuid(Convert.ToInt32(Session["ID"]));
            lblGuid.Text = pedido.Produto;
        }
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        Cancelado cancelado = new Cancelado();
        cancelado.Motivo = txtMotivo.Text;
        cancelado.Pedido = lblGuid.Text;

        CanceladoBD bd = new CanceladoBD();
        if (bd.Insert(cancelado))
        {
            lblMensagem.Text = "Motivo de Cancelamento Salvo com Sucesso";
            txtMotivo.Text = "";
            txtMotivo.Focus();
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar.";
        }
    }

    protected void lbVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PaginaPrincipal.aspx");
    }
}