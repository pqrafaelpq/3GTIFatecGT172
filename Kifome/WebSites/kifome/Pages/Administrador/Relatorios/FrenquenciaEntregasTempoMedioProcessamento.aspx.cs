using kifome.Persistencia;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Administrador_Relatorios_Frenquencia_de_Entregas : System.Web.UI.Page
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
            lblFrequencia.Text = " ";
            lblTempoMedio.Text = " ";
            lblTotalPedidos.Text = " ";
            lblTotaldeDias.Text = " ";
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

            //Soma os dias da coluna qtd de dias
            double totaldias =  Convert.ToDouble(pedidobd.Tables[0].Compute("Sum(ped_qtddias)", "").ToString());

            TimeSpan qtddias = final - inicio;
            if (qtddias.Days == 0)
            {
                lblTotaldeDias.Text = "Total de Dias: " + Convert.ToString(qtddias.Days + 1) + " Dia";
            }
            else
            {
                lblTotaldeDias.Text = "Total de Dias: " + Convert.ToString(qtddias.Days + 1) + " Dias";
            }

            lblFrequencia.Text = "Frequência de Entrega: " + (totalpedidos / (qtddias.Days + 1)).ToString("N2");

            double tempomedio = totaldias / totalpedidos;
            if (tempomedio == 1)
            {

                lblTempoMedio.Text = "Tempo Médio de Processamento: " + tempomedio.ToString("N2") + " Dia";
            }
            else
            {
                lblTempoMedio.Text = "Tempo Médio de Processamento: " + tempomedio.ToString("N2") + " Dias";
            }
        }
    }

    protected void lbVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PaginaPrincipal.aspx");
    }
}