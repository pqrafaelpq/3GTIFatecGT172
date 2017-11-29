<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pronto.aspx.cs" Inherits="Pages_Administrador_Pedido_Pronto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Perdas"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Produto:"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlProduto" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Quantidade:"></asp:Label>
        <br />
        <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Motivo:"></asp:Label>
        <br />
        <asp:TextBox ID="txtMotivo" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnIncluir" runat="server" OnClick="btnIncluir_Click1" Text="Incluir" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
            <Columns> 
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Delete"
                            CommandArgument=''>Excluir</asp:LinkButton>                        
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
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
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbVoltar" runat="server" OnClick="lbVoltar_Click">Voltar</asp:LinkButton>
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblGuid" runat="server" Visible="False"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
