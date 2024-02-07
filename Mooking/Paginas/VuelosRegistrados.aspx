<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Site1.Master" AutoEventWireup="true" CodeBehind="VuelosRegistrados.aspx.cs" Inherits="Mooking.Paginas.VuelosRegistrados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
                <div class="container text-center">
            <h1 class="fw-bold text-start">Vuelos populares cerca de ti</h1>
            <p class="text-start">Encuentra ofertas en vuelos nacionales e internacionales</p>
            <div class="align-content-center d-flex justify-content-center">
                <div class="container mt-4">
                    <asp:GridView ID="MostrarVuelos" runat="server" CssClass="table table-striped table-hover table-bordered table-responsive table-success">
                    </asp:GridView>
                </div>
            </div>

        </div>
        <div class="container-fluid d-flex fondo mt-5">
            <div class="container d-flex">
                <div >
                    <img src="../imagenes/lupa.png"/>
                </div>
                <div>
                    <p class="fs-3 fw-bold">Busca una amplia selección</p>
                    <p class="fs-7">Compara fácilmente vuelos, aerolíneas y precios desde un sólo lugar.</p>
                </div>
            </div>
            <div class="container d-flex">
                <div>
                    <img src="../imagenes/money.png"/>
                </div>
                <div>
                    <p class="fs-3 fw-bold">Paga sin cargos ocultos</p>
                    <p class="fs-7">Verás un desglose claro del precio en cada paso del proceso en reserva</p>
                </div>
            </div>
            <div class="container d-flex">
                <div>
                    <img src="../imagenes/boleto.png"/>
                </div>
                <div>
                    <p class="fs-3 fw-bold">Obtén mayor flexibilidad</p>
                    <p class="fs-7">Cambia las fechas del viaje con la opción de boletos flexibles *</p>
                </div>
            </div>
        </div>

    </form>
</asp:Content>
