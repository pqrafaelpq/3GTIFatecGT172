<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlterarProduto.aspx.cs" Inherits="Pages_Administrador_Produto_AlterarProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Alterar Produto"></asp:Label>
        <br />
        <asp:ValidationSummary ID="vsAlterar" runat="server" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Produto:"></asp:Label>
        <br />
        <asp:Label ID="lblNome" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Quantidade:"></asp:Label>
        <br />
        <asp:Label ID="lblQuantidade" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Valor por Cento:"></asp:Label>
        <br />
        <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvValorporCento" runat="server" ControlToValidate="txtValor" ErrorMessage="Digite o valor por cento." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvValorCento" runat="server" ControlToValidate="txtValor" ErrorMessage="Digite apenas numeros." MaximumValue="9999999" MinimumValue="1" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Descrição:"></asp:Label>
        <br />
        <asp:Label ID="lblDescricao" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Status:"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlStatus" runat="server">
            <asp:ListItem>Selecione</asp:ListItem>
            <asp:ListItem>Ativo</asp:ListItem>
            <asp:ListItem>Inativo</asp:ListItem>
        </asp:DropDownList>
        <asp:CompareValidator ID="cvStatus" runat="server" ControlToValidate="ddlStatus" ErrorMessage="Selecione um status." SetFocusOnError="True" ValueToCompare="Selecione" Operator="NotEqual">*</asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbVoltar" runat="server" OnClick="lbVoltar_Click">Voltar</asp:LinkButton>
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
