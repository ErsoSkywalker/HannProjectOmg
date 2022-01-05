<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestionarRegiones.aspx.cs" Inherits="HannProjectOmg.AdministradorThings.GestionarRegiones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Gestionar Regiones :D</h2>

    <a href="/AdministradorThings/Region" class="btn btn-info btn-lg">Agregar</a>

    <asp:GridView ID="grdInspectores" runat="server" AutoGenerateColumns="false" CssClass="table" OnRowDeleting="grdInspectores_RowDeleting" DataKeyNames="idRegion"
                ShowHeaderWhenEmpty="true">
        <Columns>

            <asp:TemplateField HeaderText="idRegion">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("idRegion") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nombre">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("Nombre_Region") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    
                    <a href='/AdministradorThings/Region?idRegion=<%# Eval("idRegion") %>' class="btn btn-info btn-lg">Editar</a>
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-lg btn-danger" CommandName="Delete" ToolTip="Delete" />

                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>

</asp:Content>
