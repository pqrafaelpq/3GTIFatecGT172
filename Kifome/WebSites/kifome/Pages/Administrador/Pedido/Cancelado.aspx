<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cancelado.aspx.cs" Inherits="Pages_Administrador_Pedido_Cancelado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Cancelado"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Motivo do Cancelamento:"></asp:Label>
&nbsp;<br />
        <asp:TextBox ID="txtMotivo" runat="server" Height="54px" Width="421px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbVoltar" runat="server" OnClick="lbVoltar_Click">Voltar</asp:LinkButton>
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblGuid" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
