using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kifome.Classes;
using kifome.Persistencia;
using System.Data;

public partial class Pages_Administrador_Relatorios_Tamanho_Médio_Por_Pedido : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        PedidoBD bd = new PedidoBD();

        DateTime inicio = Convert.ToDateTime(txtInicio.Text);
        DateTime final = Convert.ToDateTime(txtFinal.Text);

        DataSet pedidobd = bd.SelectData(inicio, final);

        //vincula dados ao componente GridView    
        gvPedidos.DataSource = pedidobd.Tables[0].DefaultView;
        gvPedidos.DataBind();

        int rowCount = gvPedidos.Rows.Count;
        if (rowCount == 0)
        {
            lblMensagem.Text = "Nenhum Pedido Encontrado Nesse Período";
            lblTotalPedidos.Text = " ";
            lblTamanhoMedio.Text = " ";
        }
        else
        {
            //conta as linha do grid
            double totalpedidos = Convert.ToDouble(gvPedidos.Rows.Count.ToString());
            if (totalpedidos == 1)
            {
                lblTotalPedidos.Text = "Total de Pedidos: " + Convert.ToString(totalpedidos) + " Pedido";
            }
            else
            {
                lblTotalPedidos.Text = "Total de Pedidos: " + Convert.ToString(totalpedidos) + " Pedidos";
            }

            double qtdtotal = Convert.ToDouble(pedidobd.Tables[0].Compute("Sum(ped_quantidadetotal)", "").ToString());

            lblTamanhoMedio.Text = "Tamanho Médio: " + Convert.ToString(qtdtotal / totalpedidos);
        }
    }
    protected void lbVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PaginaPrincipal.aspx");
    }
}