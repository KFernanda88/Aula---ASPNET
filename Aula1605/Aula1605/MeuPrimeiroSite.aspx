<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MeuPrimeiroSite.aspx.cs" Inherits="Aula1605.MeuPrimeiroSite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       
<h1>Meu Primeiro Form</h1>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
    <div class = "row">
        <asp:Label ID="lablNome" runat ="server" Text ="Nome"></asp:Label>
           <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <asp:Label ID="lablDescricao" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
            </div>
    <div class ="row">
        <asp:Label ID="lblAtivo" runat="server" Text="Ativo"></asp:Label>
        <asp:CheckBox ID="chkAtivo" runat="server" />
    </div>
    <div class ="row">
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" /> 
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
    </div>
          </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
