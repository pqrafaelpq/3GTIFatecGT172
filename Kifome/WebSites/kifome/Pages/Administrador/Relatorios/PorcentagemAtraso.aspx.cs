using kifome.Persistencia;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Administrador_Relatorios_Porcentagem_de_Atraso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        PedidoAtrasadoBD bd = new PedidoAtrasadoBD();

        DateTime inicio = Convert.ToDateTime(txtInicio.Text);
        DateTime final = Convert.ToDateTime(txtFinal.Text);

        DataSet pedidoAtrasadobd = bd.SelectData(inicio, final);

        //vincula dados ao componente GridView    
        gvPedidosAtrasados.DataSource = pedidoAtrasadobd.Tables[0].DefaultView;
        gvPedidosAtrasados.DataBind();

        int rowCount = gvPedidosAtrasados.Rows.Count;
        if (rowCount == 0)
        {
            lblMensagem.Text = "Nenhum Pedido Encontrado Nesse Período";
            lblPorcentagemAtrasos.Text = " ";
            lblTempoMedio.Text = " ";
            lblTotalPedidos.Text = " ";
        }
        else
        {
            //conta as linha do grid
            double totalpedidosatrasados = Convert.ToDouble(gvPedidosAtrasados.Rows.Count.ToString());
            if (totalpedidosatrasados == 1)
            {
                lblTotalPedidos.Text = "Total de Pedidos: " + Convert.ToString(totalpedidosatrasados) + " Pedido";
            }
            else
            {
                lblTotalPedidos.Text = "Total de Pedidos: " + Convert.ToString(totalpedidosatrasados) + " Pedidos";
            }

            //Soma os dias da coluna qtd de dias
            double totaldias = Convert.ToDouble(pedidoAtrasadobd.Tables[0].Compute("Sum(pea_qtddias)", "").ToString());

            PedidoBD bd2 = new PedidoBD();
            DataSet pedidobd = bd2.SelectData(inicio, final);
            double totalpedidos = Convert.ToDouble(pedidobd.Tables[0].Rows.Count.ToString());


            lblPorcentagemAtrasos.Text = "Porcentagem de Atraso: " +  ((totalpedidosatrasados / totalpedidos) * 100).ToString("N2") + " %";
            double tempomedio = totaldias / totalpedidosatrasados;
            if (tempomedio == 1)
            {
                lblTempoMedio.Text = "Tempo Médio de Atraso: " + tempomedio.ToString("N2") + " Dia";
            }
            else
            {
                lblTempoMedio.Text = "Tempo Médio de Atraso: " + tempomedio.ToString("N2") + " Dias";
            }
        }
    }

    protected void lbVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PaginaPrincipal.aspx");
    }
}