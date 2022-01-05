<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Region.aspx.cs" Inherits="HannProjectOmg.AdministradorThings.Region" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Gestiona Region</h1>

    <asp:Label ID="lblRegion" runat="server" Text="Region" ></asp:Label>
    <asp:TextBox ID="txtRegion" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    <asp:Button ID="btnUpdate" runat="server" Text="Actualizar" OnClick="btnUpdate_Click" />
    <asp:Button ID="btnInsert" runat="server" Text="Agregar" OnClick="btnInsert_Click" />

</asp:Content>
