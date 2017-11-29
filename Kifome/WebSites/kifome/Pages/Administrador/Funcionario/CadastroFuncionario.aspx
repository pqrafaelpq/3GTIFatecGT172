<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastroFuncionario.aspx.cs" Inherits="Pages_Administrador_CadastroFuncionario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblTitulo" runat="server" Text="Cadastro de Funcionario"></asp:Label>
        <br />
        <asp:ValidationSummary ID="vsCadastro" runat="server" />
        <br />
        <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
        <br />
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Digite o Nome." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Digite o E-mail." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Senha:"></asp:Label>
        <br />
        <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvSenha" runat="server" ControlToValidate="txtSenha" ErrorMessage="Digite a Senha." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblConfirme" runat="server" Text="Confirme a Senha:"></asp:Label>
        <br />
        <asp:TextBox ID="txtConfirme" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvConfirme" runat="server" ControlToValidate="txtConfirme" ErrorMessage="Digite a confirmação de senha." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblSalario" runat="server" Text="Salario"></asp:Label>
        <br />
        <asp:TextBox ID="txtSalario" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvSalario" runat="server" ControlToValidate="txtSalario" ErrorMessage="Digite o Salario." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvSalario" runat="server" ControlToValidate="txtSalario" ErrorMessage="Use apenas numeros." MinimumValue="1" SetFocusOnError="True" Type="Double" MaximumValue="9999999">*</asp:RangeValidator>
        <br />
        <asp:Label ID="lblCracha" runat="server" Text="Cracha:"></asp:Label>
        <br />
        <asp:TextBox ID="txtCracha" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCracha" runat="server" ControlToValidate="txtCracha" ErrorMessage="Digite o Cracha." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvCracha" runat="server" ControlToValidate="txtCracha" ErrorMessage="Digite apenas numeros." MinimumValue="1" SetFocusOnError="True" Type="Double" MaximumValue="999999999999">*</asp:RangeValidator>
        <br />
        <asp:Label ID="lblTipo" runat="server" Text="Tipo:"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlTipo" runat="server" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged">
            <asp:ListItem Selected="True">Selecione</asp:ListItem>
            <asp:ListItem Value="0">Administrador</asp:ListItem>
            <asp:ListItem Value="1">Funcionario</asp:ListItem>
        </asp:DropDownList>
        <asp:CompareValidator ID="cvTipo" runat="server" ControlToValidate="ddlTipo" ErrorMessage="Escolha um Tipo." Operator="NotEqual" SetFocusOnError="True" ValueToCompare="Selecione">*</asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
        &nbsp;&nbsp;
        <asp:LinkButton ID="lbVoltar" runat="server" OnClick="lbVoltar_Click" CausesValidation="False">Voltar</asp:LinkButton>
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
