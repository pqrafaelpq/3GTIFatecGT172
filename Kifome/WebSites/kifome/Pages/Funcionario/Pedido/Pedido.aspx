<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pedido.aspx.cs" Inherits="Pages_Administrador_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblTitulo" runat="server" Text="Pedido"></asp:Label>
    
        <br />
        <asp:ValidationSummary ID="vsPedido" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Nome do Cliente:"></asp:Label>
        <asp:TextBox ID="txtNomeCliente" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNomeCliente" runat="server" ControlToValidate="txtNomeCliente" ErrorMessage="Digite o nome do cliente." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Tel.:"></asp:Label>
        <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvContatoCliente" runat="server" ControlToValidate="txtTel" ErrorMessage="Digite o contato do cliente." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvContatoCliente" runat="server" ControlToValidate="txtTel" ErrorMessage="Digite apenas numeros." MaximumValue="99999999999" MinimumValue="1" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
        <br />
        <asp:Label ID="lblProduto" runat="server" Text="Produto:"></asp:Label>
        <asp:DropDownList ID="ddlProduto" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProduto_SelectedIndexChanged1">
            <asp:ListItem>Selecione</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Valor:"></asp:Label>
&nbsp;<asp:Label ID="lblValor" runat="server"></asp:Label>
        &nbsp;<br />
        <asp:Label ID="lblQuantidade" runat="server" Text="Quantidade:"></asp:Label>
        <asp:TextBox ID="txtQuantidade" runat="server" Width="65px"></asp:TextBox>
        <asp:RangeValidator ID="rvQuantidade" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Digite apenas numeros." MaximumValue="99999" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
        <br />
        <asp:Button ID="btnIncluir" runat="server" OnClick="btnIncluir_Click" Text="Incluir" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting1">
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
        <asp:Label ID="lblQuantidadeTotal" runat="server" Text="Quantidade Total:"></asp:Label>
&nbsp;<asp:Label ID="lblQuantidadeTotal2" runat="server" Text="0"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblDataEntrada" runat="server" Text="Data Atual:"></asp:Label>
        &nbsp;<asp:Label ID="lblData" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblValorTotal" runat="server" Text="Valor Total:"></asp:Label>
&nbsp;<asp:Label ID="lblValorTotal2" runat="server" Text="0"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblDataPrevista" runat="server" Text="Data Prevista:"></asp:Label>
        <asp:TextBox ID="txtDataPrevista" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar Pedido" />
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbCancelar" runat="server" CausesValidation="False" OnClick="lbCancelar_Click">Cancelar</asp:LinkButton>
        <br />
        <asp:Label ID="lblMensagem2" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
