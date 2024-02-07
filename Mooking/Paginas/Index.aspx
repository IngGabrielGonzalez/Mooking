<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Mooking.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-4">
            </div>
            <div class="col-xl-4 col-mb-8">
                <form runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="container-fluid mb-5">
                                        <hr />
                                    </div>
                                    <div class="card mb-4">
                                        <img src='../imagenes/<%# Eval("imagen_vuelo") %>' class="card-img-top imagenes-card" />
                                        <div class="card-body text-center">
                                            <h5 class="card-title">Origen: <%# Eval("origen_vuelo") %></h5>
                                            <p class="card-text">Destino: <%# Eval("destino_vuelo") %></p>
                                            
                                            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#<%# Eval("clave") %>">Ver más detalles</button>
                                        </div>
                                    </div>
                                    <div class="modal fade" id="<%# Eval("clave") %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Comprar boletos</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body text-center">
                                                    <img src='../imagenes/<%# Eval("imagen_vuelo") %>' class="card-img-top imagenes-card" />
                                                    <p class="fw-bold"><%# Eval("destino_vuelo") %></p>
                                                    <p>Boletos disponibles: <%# Eval("cantidad_boletos") %> </p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
                                                    <button type="button" class="btn btn-primary">Comprar boletos</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </form>
            </div>
            <div class="col-4">
            </div>
        </div>


    </div>
</asp:Content>
