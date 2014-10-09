<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Site.Pages.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro - Loja XYZ</title>
    <link href="../css/ui-lightness/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />
    
    <script src="../js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="../js/jquery-ui-1.10.4.custom.js" type="text/javascript"></script>
    
    <!-- Bloco de Script JQuery -->
    <script type="text/javascript">
        $(document).ready(
            function() {
                $("#janela").dialog
                    ({
                        modal: true,
                        autoOpen: false,
                        width: 800
                    });

                $(".botao").button();

                $("#btnJanela").click(
                    function ()
                    {
                        $("#janela").dialog("open");
                    });
                $("#txtDataCompra").datepicker({
                    dateFormat: 'dd/mm/yy',
                    dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'],
                    dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
                    dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
                    monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
                    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
                    changeMonth: true,
                    changeYear: true,
                    yearRange: 'c-100:c'
                });
            });
    </script>
</head>
<body>
    <input type="button" id="btnJanela" class="botao" value="Cadastrar Produtos" />
    <span style="font-family:Verdana; font-size:14pt; margin:10px;">
        <asp:Label ID="lblMensagem" runat="server"/>
    </span>
    <div id="janela" title="Cadastro de Produtos">
        
    <!-- Área do formulário -->
    <form id="formulario" runat="server">
        
        Nome do Produto:<br />
        <asp:TextBox ID="txtNome" runat="server" Width="65%"/>
        <br /><br />
        
        Preço do Produto:<br />
        <asp:TextBox ID="txtPreco" runat="server" Width="30%"/>
        <br /><br />
        
        Data da Compra:<br />
        <asp:TextBox ID="txtDataCompra" runat="server" Width="15%"/>
        <br /><br />
        
        Garantia:<br />
        <asp:RadioButtonList ID="rblGarantia" runat="server">
            <asp:ListItem Value="0" Text="Sem Garantia" />
            <asp:ListItem Value="30" Text="30 dias" />
            <asp:ListItem Value="60" Text="60 dias" />
            <asp:ListItem Value="90" Text="90 dias" />
        </asp:RadioButtonList>
        <br /><br />
        
        Deseja Entrega? <br />
        <asp:RadioButtonList ID="rblEntrega" runat="server">
            <asp:ListItem Value="S" Text="Sim" />
            <asp:ListItem Value="N" Text="Não" />
        </asp:RadioButtonList>
        <br /><br />

        Informações Adicionais:<br />
        <asp:TextBox ID="txtAdicionais" runat="server" TextMode="MultiLine" Width="500" Height="100"/>
        <br /><br />
        
        <asp:Button ID="btnCadastro" runat="server" CssClass="botao" Text="Cadastrar" OnClick="Btn_CadastrarProduto"/>
    </form>
    </div>    
</body>
</html>
