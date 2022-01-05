<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Supervisor.aspx.cs" Inherits="HannProjectOmg.AdministradorThings.Supervisor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Gestiona al Supervisor</h1>

    <asp:Label ID="lblUser" runat="server" Text="Usuario" ></asp:Label>
    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    <asp:Button ID="btnUpdate" runat="server" Text="Actualizar" OnClick="btnUpdate_Click" />
    <asp:Button ID="btnInsert" runat="server" Text="Agregar" OnClick="btnInsert_Click" />

</asp:Content>
