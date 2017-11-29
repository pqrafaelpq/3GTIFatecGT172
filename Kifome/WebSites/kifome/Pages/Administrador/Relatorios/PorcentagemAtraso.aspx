<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PorcentagemAtraso.aspx.cs" Inherits="Pages_Administrador_Relatorios_Porcentagem_de_Atraso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Porcentagem de Atraso"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Inicio:"></asp:Label>
        <br />
        <asp:TextBox ID="txtInicio" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Final:"></asp:Label>
        <br />
        <asp:TextBox ID="txtFinal" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="buscar" />
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="gvPedidosAtrasados" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="pea_nomecliente" HeaderText="Nome Cliente" />
                <asp:BoundField DataField="pea_quantidadetotal" HeaderText="Quantidade Total" />
                <asp:BoundField DataField="pea_valortotal" HeaderText="Valor Total" />
                <asp:BoundField DataField="pea_dataentrada" HeaderText="Data Entrada" />
                <asp:BoundField DataField="pea_dataprevista" HeaderText="Data Prevista" />
                <asp:BoundField DataField="pea_datapronto" HeaderText="Data Pronto" />
                <asp:BoundField DataField="pea_qtddias" HeaderText="Qtd de Dias" />
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
&nbsp;<asp:Label ID="lblTotalPedidos" runat="server"></asp:Label>
        <br />
&nbsp;<asp:Label ID="lblPorcentagemAtrasos" runat="server"></asp:Label>
        <br />
&nbsp;<asp:Label ID="lblTempoMedio" runat="server"></asp:Label>
        <br />
        <br />
        <asp:LinkButton ID="lbVoltar" runat="server" OnClick="lbVoltar_Click">Voltar</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
