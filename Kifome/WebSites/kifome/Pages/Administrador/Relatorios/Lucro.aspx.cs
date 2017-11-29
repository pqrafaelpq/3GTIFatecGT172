using kifome.Persistencia;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Administrador_Relatorios_Lucro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }    

    protected void btnBuscar_Click(object sender, EventArgs e)
    {      
        DateTime inicio = Convert.ToDateTime(txtInicio.Text);
        DateTime final = Convert.ToDateTime(txtFinal.Text);

        EntradaBD entradabd = new EntradaBD();
        DataSet Entradabd = entradabd.SelectAllEntrada(inicio, final);

        PedidoBD pedidobd = new PedidoBD();
        DataSet PedidosProntosbd = pedidobd.SelectData(inicio, final);

        //vincula dados ao componente GridView EntradaMateria  
        gvEntradaMateria.DataSource = Entradabd.Tables[0].DefaultView;
        gvEntradaMateria.DataBind();

        //vincula dados ao componente GridView Pedidos Prontos
        gvPedidosProntos.DataSource = PedidosProntosbd.Tables[0].DefaultView;
        gvPedidosProntos.DataBind();

        int rowCount = gvEntradaMateria.Rows.Count;
        int rowCount2 = gvPedidosProntos.Rows.Count;
        if (rowCount == 0)
        {
            if (rowCount2 == 0)
            {
                lblMensagem.Text = "Nenhuma Entrada de Matéria Prima ou Pedido Encontrado Nesse Período.";
                lblGastos.Text = "";
                lblLucro.Text = "";
                lblVendas.Text = "";
            }
            else
            {
                lblMensagem.Text = "Nenhuma Entrada de Matéria Prima Encontrada Nesse Período.";
                lblGastos.Text = "Total de Gastos: " + "R$" + 0.ToString("N2");

                double totalvendas = Convert.ToDouble(PedidosProntosbd.Tables[0].Compute("Sum(ped_valortotal)", "").ToString());
                lblVendas.Text = "Total de Vendas: " + "R$" + totalvendas.ToString("N2");

                lblLucro.Text = "Lucro: " + "R$" + (totalvendas - 0).ToString("N2");               
            }
        }
        else
        {
            if (rowCount2 == 0)
            {
                double totalgastos = Convert.ToDouble(Entradabd.Tables[0].Compute("Sum(ent_valor)", "").ToString());
                lblGastos.Text = "Total de Gastos: " + "R$" + totalgastos.ToString("N2");

                double totalvendas2 = 0;
                lblVendas.Text = "Total de Vendas: " + "R$" + totalvendas2.ToString("N2");

                lblLucro.Text = "Lucro: " + "R$" + (totalvendas2 - totalgastos).ToString("N2");
            }
            else
            {
                double totalgastos = Convert.ToDouble(Entradabd.Tables[0].Compute("Sum(ent_valor)", "").ToString());
                lblGastos.Text = "Total de Gastos: " + "R$" + totalgastos.ToString("N2");

                double totalvendas2 = Convert.ToDouble(PedidosProntosbd.Tables[0].Compute("Sum(ped_valortotal)", "").ToString());
                lblVendas.Text = "Total de Vendas: " + "R$" + totalvendas2.ToString("N2");

                lblLucro.Text = "Lucro: " + "R$" + (totalvendas2 - totalgastos).ToString("N2");
            }
        }
    }

    protected void lbVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PaginaPrincipal.aspx");
    }
}