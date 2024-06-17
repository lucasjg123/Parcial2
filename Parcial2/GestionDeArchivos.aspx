<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestionDeArchivos.aspx.cs" Inherits="Parcial2.GestionDeArchivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="GESTION DE ARCHIVOS"></asp:Label>
    <br>
    <asp:Label ID="lblMsj" runat="server" Text="Label" ForeColor="#FF3300" Visible="False"></asp:Label>
    <br><br>
    
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <asp:Label ID="Label2" runat="server" Text="Subir nuevo archivo" Font-Bold="True"></asp:Label><br>
        <asp:FileUpload ID="FileUpload1" runat="server" /><br>
        <asp:Button ID="btnSubir" runat="server" Text="Subir" OnClick="btnSubir_Click" />
        <asp:Label ID="lblRes" runat="server" Text="El archivo se subió correctamente"></asp:Label>
        <br><br>
        <asp:Label ID="Label3" runat="server" Text="Archivos subidos" Font-Bold="True"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Descargar" Text="Descargar" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>
