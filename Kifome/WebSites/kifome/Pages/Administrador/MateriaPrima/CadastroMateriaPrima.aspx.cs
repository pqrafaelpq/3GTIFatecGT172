using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using kifome.Classes;
using kifome.Persistencia;
using kifome;

public partial class Pages_Administrador_CadastroMateriaPrima : System.Web.UI.Page
{
    private void LimparCampos()
    {
        //remove seleção do ddl
        for (int i = 0; i < ddlStatus.Items.Count; i++)
        {
            ddlStatus.Items[i].Selected = false;
        }
        //coloca o "Selecione" selecionado
        ddlStatus.Items[0].Selected = true;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        //variavel verificar falso verdadeiro
        bool iscadastrar = false;

        //WebSite1.Classes.Login login = new WebSite1.Classes.Login();
        MateriaPrima materia = new MateriaPrima();
        materia.Nome = txtNome.Text;
        materia.Quantidade = Convert.ToDouble(txtQuantidade.Text);
        materia.Descricao = txtDescricao.Text;
        materia.Status = ddlStatus.Text;
        MateriaPrimaBD bd = new MateriaPrimaBD();

        //buscando email do BD
        System.Data.IDbConnection objConexao;
        System.Data.IDbCommand objCommand;
        System.Data.IDataReader objDataReader;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT mat_nome FROM mat_materiaprima ", objConexao);
        objDataReader = objCommand.ExecuteReader();

        //laço repetição
        while (objDataReader.Read())
        {
            //se o campo for igual do BD 
            if (txtNome.Text == objDataReader["mat_nome"].ToString())
            {
                lblMensagem.Text = "Matéria Prima já existente";
                iscadastrar = true;
                break;
            }
        }

        if (iscadastrar == false)
        {
            if (bd.Insert(materia))
            {
                lblMensagem.Text = "Matéria Prima cadastrada com sucesso";
                txtNome.Text = "";
                txtQuantidade.Text = "";
                txtDescricao.Text = "";
                txtNome.Focus();
                LimparCampos();
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }

    protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void lbVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PaginaPrincipal.aspx");
    }
}