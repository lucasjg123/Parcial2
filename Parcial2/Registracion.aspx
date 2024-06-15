<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registracion.aspx.cs" Inherits="Parcial2.Registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="REGISTRACION"></asp:Label>
    <br>
    <asp:Label ID="Label2" runat="server" Text="Usuario:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br>
    <asp:Label ID="Label3" runat="server" Text="Mail:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br>
    <asp:Label ID="Label4" runat="server" Text="Edad:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br>
    <asp:Label ID="Label5" runat="server" Text="Constraseña:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br>
    <asp:Label ID="Label6" runat="server" Text="Repetir Constraseña:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br>
    <asp:Button ID="Button1" runat="server" Text="Registrar" />
</asp:Content>

