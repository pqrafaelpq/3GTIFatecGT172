<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlterarStatus.aspx.cs" Inherits="Pages_Administrador_Pedido_AlterarStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Alterar Status"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nome:"></asp:Label>
&nbsp;<asp:Label ID="lblNomeCliente" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label4" runat="server" Text="Contato:"></asp:Label>
&nbsp;<asp:Label ID="lblContatoCliente" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="gvItensPedido" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="ite_produto" HeaderText="Produto" />
                <asp:BoundField DataField="ite_quantidade" HeaderText="Quantidade" />
            </Columns>
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
        <asp:Label ID="Label6" runat="server" Text="Quantidade Total:"></asp:Label>
&nbsp;<asp:Label ID="lblQuantidadeTotal" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Valor Total:"></asp:Label>
&nbsp;<asp:Label ID="lblValorTotal" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Status:"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlStatus" runat="server">
            <asp:ListItem>Aguardando</asp:ListItem>
            <asp:ListItem>Pronto</asp:ListItem>
            <asp:ListItem>Cancelado</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Data de Entrada:"></asp:Label>
&nbsp;<asp:Label ID="lblDataEntrada" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Data Prevista:"></asp:Label>
&nbsp;<asp:Label ID="lblDataPrevista" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbVoltar" runat="server" OnClick="lbVoltar_Click">Voltar</asp:LinkButton>
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblGuid" runat="server" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
