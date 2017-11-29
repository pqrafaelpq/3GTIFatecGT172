﻿using kifome.Classes;
using kifome.Persistencia;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Administrador_MateriaPrima_SaidaMateriaPrima : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //carrega somente a primeira vez
        if (!Page.IsPostBack)
        {
            CarregaMateria();
            ddlMateria.Focus();

        }
    }

    private void CarregaMateria()
    {
        MateriaPrimaBD bd = new MateriaPrimaBD();
        DataSet ds = bd.SelectAll();
        ddlMateria.DataSource = ds.Tables[0].DefaultView;
        ddlMateria.DataTextField = "mat_nome";
        ddlMateria.DataValueField = "mat_codigo";
        ddlMateria.DataBind();
        ddlMateria.Items.Insert(0, new ListItem("Selecione", "0"));               
    }

    private void LimparCampos()
    {
        txtQuantidade.Text = "";        
        //remove seleção do ddl
        for (int i = 0; i < ddlMateria.Items.Count; i++)
        {
            ddlMateria.Items[i].Selected = false;
        }
        //coloca o "Selecione" selecionado
        ddlMateria.Items[0].Selected = true;
    }
    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        int codigo = Convert.ToInt32(Session["codigo"]);
        FuncionarioBD bdfun = new FuncionarioBD();
        Funcionario funcionario = bdfun.Select(codigo);

        SaidaMateria saidamateria = new SaidaMateria();
        saidamateria.Materia = ddlMateria.SelectedItem.Text;
        saidamateria.Quantidade = -Convert.ToInt32(txtQuantidade.Text);
        saidamateria.Data = DateTime.Now;
        saidamateria.Funcionario = funcionario.Nome;
        SaidaMateriaBD bd = new SaidaMateriaBD();

        string saidamateriaid = ddlMateria.SelectedItem.Value;
        MateriaPrimaBD materiaprimabd = new MateriaPrimaBD();
        MateriaPrima materiaprima = materiaprimabd.Select(Convert.ToInt32(saidamateriaid));
        materiaprima.Quantidade = materiaprima.Quantidade - Convert.ToInt32(txtQuantidade.Text);
        if (materiaprima.Quantidade >= 0)
        {
            if (bd.Insert(saidamateria))
            {
                materiaprimabd.Update(materiaprima);

                lblMensagem.Text = "Entrada cadastrada com sucesso";
                txtQuantidade.Text = "";
                txtQuantidade.Focus();
                LimparCampos();
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
        else
        {
            lblMensagem.Text = "Erro ao salvar. Materia Prima insulficiente.";
        }
    }

    protected void lbVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PaginaPrincipal.aspx");
    }
}