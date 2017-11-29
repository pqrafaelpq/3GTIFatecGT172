<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaginaPrincipal.aspx.cs" Inherits="Pages_Erro_PaginaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 123px">
    
        <asp:Label ID="lblTitulo" runat="server" Text="Acesso Negado"></asp:Label>
        <br />
        <asp:LinkButton ID="lbSair" runat="server" OnClick="lbSair_Click">Voltar para tela de login</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
