<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registracion.aspx.cs" Inherits="Parcial2.Registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="REGISTRACION"></asp:Label>
    <br>
    <!-- TODOS REQUERIDOS: RequiredFieldValidator-->

    <asp:Label ID="Label2" runat="server" Text="Usuario:"></asp:Label>
    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Debe ingresar un nombre de usuario" ForeColor="#FF3300" Display="None">Debe ingresar un nombre de usuario</asp:RequiredFieldValidator>
    <br>
    <asp:Label ID="Label3" runat="server" Text="Mail:"></asp:Label>
    <asp:TextBox ID="txtMail" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="Debe ingresar un mail" ForeColor="#FF3300" Display="None">Debe ingresar un mail</asp:RequiredFieldValidator>
    <br>
    <asp:Label ID="Label4" runat="server" Text="Edad:"></asp:Label>
    <asp:TextBox ID="txtEdad" runat="server" TextMode="Number"></asp:TextBox> <!-- mayor o igual a 15: RangeValidator-->
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEdad" ErrorMessage="Debe ingresar una edad" ForeColor="#FF3300" Display="None">Debe ingresar una edad</asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtEdad" ErrorMessage="Debe ser mayor a 15 años" MinimumValue="15" MaximumValue="99" Display="None" Type="Integer">Debe ser mayor a 15 años</asp:RangeValidator>
    <br>
    <asp:Label ID="Label5" runat="server" Text="Constraseña:"></asp:Label> 
    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Debe ingresar una constraseña" ForeColor="#FF3300" Display="None">Debe ingresar una constraseña</asp:RequiredFieldValidator>
    <br>
    <asp:Label ID="Label6" runat="server" Text="Repetir Constraseña:"></asp:Label> <!-- CompareValidator-->
    <asp:TextBox ID="txtContraseña2" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContraseña2" ErrorMessage="Debe repetir la constraseña" ForeColor="#FF3300" Display="None">Debe repetir la constraseña</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtContraseña2" ErrorMessage="Las contraseñas no coinciden" Display="None">Las contraseñas no coinciden</asp:CompareValidator>
    <br>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
    <asp:Button ID="Button1" runat="server" Text="Registrar" />
</asp:Content>

