using kifome.Persistencia;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Administrador_Relatorios_ConsumoMedioProduto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        ItensPedidoBD bd = new ItensPedidoBD();

        DateTime inicio = Convert.ToDateTime(txtInicio.Text);
        DateTime final = Convert.ToDateTime(txtFinal.Text);

        DataSet itenspedidobd = bd.SelectData(inicio, final);

        //vincula dados ao componente GridView    
        gvItensPedido.DataSource = itenspedidobd.Tables[0].DefaultView;
        gvItensPedido.DataBind();

        int rowCount = gvItensPedido.Rows.Count;
        if (rowCount == 0)
        {
            lblMensagem.Text = "Nenhum Produto Encontrado Nesse Período";
        }
        else
        {

        }

    }

    protected void lbVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PaginaPrincipal.aspx");
    }
}