<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EntradaMateriaPrima.aspx.cs" Inherits="Pages_Administrador_EntradaMateriaPrima" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblTitulo" runat="server" Text="Entrada de Matéria Prima"></asp:Label>
        <br />
        <asp:ValidationSummary ID="vsEntrada" runat="server" />
        <br />
        <asp:Label ID="lblNome" runat="server" Text="Nome da Matéria Prima:"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlMateria" runat="server" Height="18px" Width="150px">
        </asp:DropDownList>
        <asp:CompareValidator ID="cvNome" runat="server" ControlToValidate="ddlMateria" ErrorMessage="Selecione uma matéria prima." SetFocusOnError="True" ValueToCompare="Selecione" Operator="NotEqual">*</asp:CompareValidator>
        <br />
        <asp:Label ID="lblQuantidade" runat="server" Text="Quantidade:"></asp:Label>
        <br />
        <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvQuantidade" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Digite a quantidade." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvQuantidade" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Digite apenas numeros." MaximumValue="99999" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
        <br />
        <asp:Label ID="lblValor" runat="server" Text="Valor:"></asp:Label>
        <br />
        <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvValor" runat="server" ControlToValidate="txtValor" ErrorMessage="Digite o valor." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvValor" runat="server" ControlToValidate="txtValor" ErrorMessage="Digite apenas numeros." MaximumValue="99999999999" MinimumValue="1" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
        <br />
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição:"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDescricao" runat="server" ControlToValidate="txtDescricao" ErrorMessage="Digite a descrição." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
        &nbsp;&nbsp;
        <asp:LinkButton ID="lbCadastrar" runat="server" OnClick="lbCadastrar_Click" CausesValidation="False">Cadastrar Nova Matéria Prima</asp:LinkButton>
&nbsp;&nbsp;
        <asp:LinkButton ID="lbVoltar" runat="server" OnClick="lbVoltar_Click" CausesValidation="False">Voltar</asp:LinkButton>
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
