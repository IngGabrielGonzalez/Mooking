<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Site1.Master" AutoEventWireup="true" CodeBehind="BuscarPorId.aspx.cs" Inherits="Mooking.Paginas.BuscarPorId" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">

            <h3 class="text-start mx-5 fw-bold">Ofertas</h3>
            <p class="text-start mx-5">Promociones, descuentos y ofertas especiales para ti</p>

        <div class="container justify-content-around d-flex">
            <div class="carta">
                <div class="row">
                    <div class="col-lg-8 col-md-12 text-start">
                        <p class="fs-5 fw-bold mx-4">Vuela al destino de tus sueños</p>
                        <p class="fs-6 mx-4">Inspírate, compara vuelos y reserva con más flexibilidad.</p>
                        <button class="btn btn-primary mx-4 mb-2">Buscar vuelos</button>
                    </div>
                    <div class="col-lg-4 col-sm-12 p-3">
                        <image class="imagen-avion" src="../imagenes/avion.png"/>
                    </div>
                </div>
                
            </div>
            <div class="cartaDos text-start">
                <p class="fs-4 fw-bold text-light text-start mx-4">Vuela al destino de tus sueños</p>
                <p class="fs-6 text-light text-start mx-4">Inspírate, compara vuelos y reserva con más flexibilidad</p>
                <button class="btn btn-primary mx-4">Ver Ofertas de Inicio de 2024</button>
            </div>
        </div>
        <form runat="server" class="mt-4">
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
