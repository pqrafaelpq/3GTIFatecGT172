<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastroMateriaPrima.aspx.cs" Inherits="Pages_Administrador_CadastroMateriaPrima" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblTitulo" runat="server" Text="Cadastro de Materia Prima"></asp:Label>
        <br />
        <asp:ValidationSummary ID="vsCadastro" runat="server" />
        <br />
        <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
        <br />
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Digite o Nome da Matéria Prima." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblQuantidade" runat="server" Text="Quantidade:"></asp:Label>
        <br />
        <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvQuantidade" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Digite a quantidade." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvQuantidade" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Digite apenas numeros." MaximumValue="999999" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
        <br />
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição:"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDescricao" runat="server" ControlToValidate="txtDescricao" ErrorMessage="Digite a descrição" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlStatus" runat="server" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
            <asp:ListItem Selected="True">Selecione</asp:ListItem>
            <asp:ListItem Value="Ativo">Ativo</asp:ListItem>
            <asp:ListItem Value="Inativo">Inativo</asp:ListItem>
        </asp:DropDownList>
        <asp:CompareValidator ID="cvStatus" runat="server" ControlToValidate="ddlStatus" ErrorMessage="Selecione um status." Operator="NotEqual" SetFocusOnError="True" ValueToCompare="Selecione">*</asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbVoltar" runat="server" OnClick="lbVoltar_Click" CausesValidation="False">Voltar</asp:LinkButton>
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
