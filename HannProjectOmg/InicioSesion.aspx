<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HannProjectOmg._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Iniciar Sesión</h1>


    Usuario:    <asp:TextBox ID="txtUser" runat="server" ></asp:TextBox>
    <br />
    Password:   <asp:TextBox ID="txtPassword" runat="server" >Hola mundo uwu</asp:TextBox>
    <br />
    <asp:Button ID="InicioSesion" runat="server" Text="Iniciar Sesión" OnClick="InicioSesionButton" />

    

    <asp:Label ID="lblSalida" runat="server"></asp:Label>

</asp:Content>

