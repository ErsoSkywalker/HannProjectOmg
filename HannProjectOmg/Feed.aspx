<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feed.aspx.cs" Inherits="HannProjectOmg.Feed" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Bienvenido al Himalaya</h1>


    <asp:Label ID="lblSessionEquisDe" runat="server" Text=""></asp:Label>
    
    
    <asp:GridView ID="grdUsuarios" runat="server"></asp:GridView>


</asp:Content>

