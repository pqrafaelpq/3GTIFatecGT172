using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kifome.Classes;
using kifome.Persistencia;
using System.Data;

public partial class Pages_Administrador_ListaPedidos : System.Web.UI.Page
{
    private void Carrega()
    {
        PedidoBD bd = new PedidoBD();
        DataSet ds = bd.SelectAll();
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }    

    protected void Page_Load(object sender, EventArgs e)
    {
        Carrega();
    }
    
    protected void lbVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PaginaPrincipal.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string codigo = null;
        switch (e.CommandName)
        {
            case "detalhes":
                
                codigo = Convert.ToString(e.CommandArgument);
                ItensPedidoBD bd = new ItensPedidoBD();
                DataSet ds = bd.SelectAllItensPedido(codigo);
                   
                GridView2.DataSource = ds.Tables[0].DefaultView;
                GridView2.DataBind();
                
                break;
            case "Status":

                break;
            default:
                break;
        }

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
