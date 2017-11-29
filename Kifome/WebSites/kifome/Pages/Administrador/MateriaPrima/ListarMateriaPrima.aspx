﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListarMateriaPrima.aspx.cs" Inherits="Pages_Administrador_MateriaPrima_ListarMateriaPrima" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblTitulo" runat="server" Text="Matéria Prima"></asp:Label>
        <br />
        <asp:GridView ID="gvMateria" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="mat_nome" HeaderText="Nome" />
                <asp:BoundField DataField="mat_quantidade" HeaderText="Quantidade" />
                <asp:BoundField DataField="mat_descricao" HeaderText="Descrição" />
                <asp:BoundField DataField="mat_status" HeaderText="Status" />
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
        <asp:LinkButton ID="lbVoltar" runat="server" OnClick="lbVoltar_Click">Voltar</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
