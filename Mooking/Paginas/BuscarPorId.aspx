<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Site1.Master" AutoEventWireup="true" CodeBehind="BuscarPorId.aspx.cs" Inherits="Mooking.Paginas.BuscarPorId" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <form runat="server">
            <h1>Buscar vuelo por ID</h1>
            <div class="container text-center">
                <asp:DropDownList ID="DropdownIdVuelos" runat="server" OnSelectedIndexChanged="DropdownIdVuelos_SelectedIndexChanged" CssClass="form-select-lg"></asp:DropDownList>
            </div>
            <div class="container text-center mt-4">
                <asp:GridView ID="MostrarGridNuevo" runat="server" CssClass="table table-striped table-hover, table-bordered table-success"></asp:GridView>
            </div>
        </form>
    </div>
</asp:Content>
