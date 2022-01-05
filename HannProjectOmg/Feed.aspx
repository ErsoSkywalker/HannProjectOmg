<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feed.aspx.cs" Inherits="HannProjectOmg.Feed" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <div class="col">
        <div class="row">
           <h1>Bienvenido Inspector</h1>
            <hr />
            <a href="" class="btn btn-primary">Reportes</a>
            <a href="" class="btn btn-primary">Generar Reportes</a>
        </div>
    </div>

    
    <div class="col">
        <div class="row">
            <asp:Label ID="lblSessionEquisDe" runat="server" Text=""></asp:Label>
            <asp:GridView ID="grdUsuarios" runat="server"></asp:GridView>
             <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </div>
    
</asp:Content>

