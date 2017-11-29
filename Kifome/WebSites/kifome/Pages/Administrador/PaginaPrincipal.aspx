<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaginaPrincipal.aspx.cs" Inherits="Pages_Administrador_PaginaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 558px">
    
        <asp:Label ID="lblTitulo" runat="server" Text="Bem Vindo,"></asp:Label>
        <br />
        <br />
        <asp:LinkButton ID="lbCadastroFuncionario" runat="server" OnClick="lbCadastroFuncionario_Click">Cadastrar Novo Funcionario</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="lbMateria" runat="server" OnClick="lbMateria_Click">Cadastrar Nova Matéria Prima</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbListarMateriaPrima" runat="server" OnClick="lbListarMateriaPrima_Click">Lista Matéria Prima</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="lbEntradaMatéria" runat="server" OnClick="lbEntradaMatéria_Click">Entrada de Matéria Prima</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbSaidaMateria" runat="server" OnClick="lbSaidaMateria_Click">Saida de Matéria Prima</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbListaEntradaSaida" runat="server" OnClick="lbListaEntradaSaida_Click">Lista Entrada/Saida</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="lbProduto" runat="server" OnClick="lbProduto_Click">Cadastrar Novo Produto</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbListadeProdutos" runat="server" OnClick="lbListadeProdutos_Click">Lista de Produtos</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="lbPedido" runat="server" OnClick="lbPedido_Click">Pedido</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbListadePedidos" runat="server" OnClick="lbListadePedidos_Click">Lista de Pedidos</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbListaProdutosVendas" runat="server" OnClick="lbListaProdutosVendas_Click">Lista de Produtos Vendidos</asp:LinkButton>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <br />
        <asp:LinkButton ID="lbSair" runat="server" OnClick="lbSair_Click">Sair</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
