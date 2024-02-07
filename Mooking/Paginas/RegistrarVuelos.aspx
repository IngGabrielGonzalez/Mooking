<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrarVuelos.aspx.cs" Inherits="Mooking.Paginas.RegistrarVuelos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <h1>Registrar vuelos</h1>
        <div class="form-control mb-3">
            <form runat="server">
            <asp:TextBox ID="CLaveVuelo" runat="server" CssClass="form-control mb-3 text-center" PlaceHolder="Clave de Vuelo"></asp:TextBox>
            <asp:DropDownList ID="OrigenDelVuelo" runat="server" CssClass="form-control mb-3 text-center"></asp:DropDownList>
            <asp:DropDownList ID="DestinoDelVuelo" runat="server" CssClass="form-control mb-3 text-center"></asp:DropDownList>
            <div class="container text-center d-flex flex-column mb-5">
                <h4>Seleccionar fecha</h4>
                <asp:Calendar runat="server" CssClass="" ID="FechaVuelo" SelectedDayStyle-BorderStyle="None" TitleFormat="MonthYear" BorderStyle="None" NextPrevStyle-BackColor="White"  SelectedDayStyle-ForeColor="White" TitleStyle-BackColor="White"  SelectedDayStyle-BackColor="#124DA5" DayHeaderStyle-BackColor="#124DA5" DayHeaderStyle-ForeColor="White" DayHeaderStyle-BorderColor="White"></asp:Calendar>
            </div>
            <asp:TextBox ID="PrecioVuelo" runat="server" CssClass="form-control mb-3"></asp:TextBox>
            <asp:FileUpload ID="ImagenVuelo" runat="server" CssClass="form-control mb-3" />
            <asp:TextBox ID="CantidadVuelos" runat="server" CssClass="form-control mb-3" ></asp:TextBox>
            <asp:Button runat="server" Text="Registrar Vuelo" CssClass="btn btn-success mb-5"/>
            </form>
        </div>
    </div>
</asp:Content>
