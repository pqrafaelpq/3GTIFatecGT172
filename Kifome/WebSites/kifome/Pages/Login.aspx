﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblTitulo" runat="server" Text="Login"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblSenha" runat="server" Text="Senha"></asp:Label>
        <br />
        <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar" />
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
