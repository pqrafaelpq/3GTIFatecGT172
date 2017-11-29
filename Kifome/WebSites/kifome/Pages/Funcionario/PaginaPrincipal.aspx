<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaginaPrincipal.aspx.cs" Inherits="Pages_Funcionario_PaginaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 238px">
    
        <asp:Label ID="lblTitulo" runat="server" Text="Bem Vindo,"></asp:Label>
&nbsp;<br />
        <br />
        <asp:LinkButton ID="lbMateria" runat="server" OnClick="lbMateria_Click">Entrada de Matéria Prima</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbPedido" runat="server" OnClick="lbPedido_Click">Fazer Pedido</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbListaPedido" runat="server" OnClick="lbListaPedido_Click">Lista de Pedidos</asp:LinkButton>
        <br />
        <br />
        <br />
        <asp:LinkButton ID="lbSair" runat="server" OnClick="lbSair_Click">Sair</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
