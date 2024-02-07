<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Site1.Master" AutoEventWireup="true" CodeBehind="VuelosRegistrados.aspx.cs" Inherits="Mooking.Paginas.VuelosRegistrados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div class="container">
            <h3 class="text-start">Ofertas</h3>
            <p>Promociones, descuentos y ofertas especiales para ti</p>
        </div>
        <div class="container justify-content-between d-flex">
            <div class="carta">
                <div class="row">
                    <div class="col-8">
                        <p class="fs-4 fw-bold">Vuela al destino de tus sueños</p>
                        <p class="fs-5">Inspírate, compara vuelos y reserva con más flexibilidad</p>
                        <button class="btn btn-primary">Buscar vuelos</button>
                    </div>
                    <div class="col-4 text-center">
                        <image class="imagen-avion" src="../imagenes/avion.png"/>
                    </div>
                </div>
                
            </div>
            <div class="carta">
                <p class="fs-3 fw-bold">Vuela al destino de tus sueños</p>
                <p class="fs-5">Inspírate, compara vuelos y reserva con más flexibilidad</p>
            </div>
        </div>

        <div class="container text-center">
            <h1>Vuelos disponibles</h1>
            <div class="align-content-center d-flex justify-content-center">
                <div class="container mt-4">
                    <asp:GridView ID="MostrarVuelos" runat="server" CssClass="table table-striped table-hover table-bordered table-responsive table-success">
                    </asp:GridView>
                </div>
            </div>

        </div>
        <div class="container text-center">
        </div>
    </form>
</asp:Content>
