<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SaidaMateriaPrima.aspx.cs" Inherits="Pages_Administrador_MateriaPrima_SaidaMateriaPrima" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Saída de Materia Prima"></asp:Label>
        <br />
        <asp:ValidationSummary ID="vsSaida" runat="server" />
        <br />
        <asp:Label ID="lblProduto" runat="server" Text="Matéria Prima:"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlMateria" runat="server">
        </asp:DropDownList>
        <asp:CompareValidator ID="cvMateria" runat="server" ControlToValidate="ddlMateria" ErrorMessage="Selecione Matéria Prima." Operator="NotEqual" SetFocusOnError="True" ValueToCompare="0">*</asp:CompareValidator>
        <br />
        <asp:Label ID="lblQuantidade" runat="server" Text="Quantidade:"></asp:Label>
        <br />
        <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvQuantidade" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Digite a Quantidade." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvQuantidade" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Digite Apenas números." MaximumValue="99999" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbVoltar" runat="server" OnClick="lbVoltar_Click" CausesValidation="False">Voltar</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
