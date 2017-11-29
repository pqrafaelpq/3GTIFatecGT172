<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastroProduto.aspx.cs" Inherits="Pages_Administrador_CadastroProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Cadastro de Produtos"></asp:Label>
        <br />
        <asp:ValidationSummary ID="vsCasdastro" runat="server" />
        <br />
        <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
        <br />
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Digite o nome." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Quantidade:"></asp:Label>
        <br />
        <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvQuantidade" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Digite a quantidade." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvQuantidade" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Digite apenas numeros." MaximumValue="999999" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Valor por Cento:"></asp:Label>
        <br />
        <asp:TextBox ID="txtValorCento" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvValorporCento" runat="server" ControlToValidate="txtValorCento" ErrorMessage="Digite o valor por cento." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvValorCento" runat="server" ControlToValidate="txtValorCento" ErrorMessage="Digite apenas numeros." MaximumValue="9999999" MinimumValue="1" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Descrição:"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDescricao" runat="server" ControlToValidate="txtDescricao" ErrorMessage="Digite a descrição." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Status"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlStatus" runat="server">
            <asp:ListItem>Selecione</asp:ListItem>
            <asp:ListItem Value="Ativo">Ativo</asp:ListItem>
            <asp:ListItem Value="Inativo">Inativo</asp:ListItem>
        </asp:DropDownList>
        <asp:CompareValidator ID="cvStatus" runat="server" ControlToValidate="ddlStatus" ErrorMessage="Selecione um status." SetFocusOnError="True" ValueToCompare="Selecione" Operator="NotEqual">*</asp:CompareValidator>
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
