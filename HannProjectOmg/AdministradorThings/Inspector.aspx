<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inspector.aspx.cs" Inherits="HannProjectOmg.AdministradorThings.Inspector" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <h1>Gestionar Inspector</h1>

  
    <asp:Label ID="lblUser" runat="server" CssClass="control-label">User</asp:Label>
    <asp:TextBox runat="server" ID="txtUser"  CssClass="form-control" />
    <br />
    <asp:Label ID="lblPassword" runat="server" CssClass="control-label" Text="Password">Contraseña</asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" />
    <br />
    <asp:Label ID="lblNombre" runat="server" CssClass="control-label" Text="Nombre"></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Label ID="lblApellido" runat="server" CssClass="control-label" Text="Apellido"></asp:Label>
    <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server"></asp:TextBox>
    <br />


    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    <asp:Button ID="btnUpdate" CssClass="btn btn-primary" runat="server" Text="Actualizar" OnClick="btnUpdate_Click" />
    <asp:Button ID="btnInsert" CssClass="btn btn-primary" runat="server" Text="Agregar" OnClick="btnInsert_Click" />

    

</asp:Content>
