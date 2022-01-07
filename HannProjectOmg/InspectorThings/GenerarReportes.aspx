<%@ Page Title="Generar Reporte" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="GenerarReportes.aspx.cs" Inherits="HannProjectOmg.InspectorThings.GenerarReportes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<head>
 <link href="../Content/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">
      <div class="py-5 text-center">
        <h2>Generar Reporte</h2>
      </div>

    <!--Selección de Region y Complejo -->
      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Seleccionar Región</span>
          </h4>
          <ul class="list-group mb-3">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h5 class="mb-3 text-muted">Región</h5>
                <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                  <option value="Selecciona una ciudad">Selecciona una ciudad</option>
                </select>
              </div>
            </li>
               <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h5 class="mb-3 text-muted">Complejo</h5>
                <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                  <option value="Selecciona una ciudad">Selecciona una cine</option>
                </select>
              </div>
            </li>
        </div>

          <!--Estatus-->
        <div class="col-md-8 order-md-1">
          <form class="needs-validation" novalidate>
            <div class="row">
           

        <!--Instalaciones-->
            <div class="row">
              <div class="col-md-8 mb-3">
               <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Instalaciones</label>
                          <br>
                          <select class="form-control">
                          <option>Buen estado</option>
                          <option>Regular</option>
                          <option>Mal estado</option>
                        </select>
                     </div>
              </div>
            </div>


        <!--Salas-->
            <div class="row">
              <div class="col-md-8 mb-3">
               <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Salas</label>
                          <br>
                          <select class="form-control">
                          <option>Buen estado</option>
                          <option>Regular</option>
                          <option>Mal estado</option>
                        </select>
                     </div>
              </div>
            </div>

               <!--Personal-->
            <div class="row">
              <div class="col-md-8 mb-3">
               <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Personal</label>
                          <br>
                          <select class="form-control">
                          <option>Buen estado</option>
                          <option>Regular</option>
                          <option>Mal estado</option>
                        </select>
                     </div>
              </div>
            </div>
                
            <!--Servicio-->
            <div class="row">
              <div class="col-md-8 mb-3">
               <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Servicio</label>
                          <br>
                          <select class="form-control">
                          <option>Buen estado</option>
                          <option>Regular</option>
                          <option>Mal estado</option>
                        </select>
                     </div>
              </div>
            </div>

              <!--Insumos-->
            <div class="row">
              <div class="col-md-8 mb-3">
               <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Insumos</label>
                          <br>
                          <select class="form-control">
                          <option>Buen estado</option>
                          <option>Regular</option>
                          <option>Mal estado</option>
                        </select>
                     </div>
              </div>
            </div>

              <!--Dulceria-->
            <div class="row">
              <div class="col-md-8 mb-3">
               <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Dulceria</label>
                          <br>
                          <select class="form-control">
                          <option>Buen estado</option>
                          <option>Regular</option>
                          <option>Mal estado</option>
                        </select>
                     </div>
              </div>
            </div>


            <!--Servicio-->
            <div class="row">
              <div class="col-md-8 mb-3">
               <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Sanidad</label>
                          <br>
                          <select class="form-control">
                          <option>Buen estado</option>
                          <option>Regular</option>
                          <option>Mal estado</option>
                        </select>
                     </div>
              </div>
            </div>

             <!--Taquilla-->
            <div class="row">
              <div class="col-md-8 mb-3">
               <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Taquilla</label>
                          <br>
                          <select class="form-control">
                         <option>Buen estado</option>
                          <option>Regular</option>
                          <option>Mal estado</option>
                        </select>
                     </div>
              </div>
            </div>
              

                <!--Textarea
                 <div class="col-md-10 mb-1">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Observaciones</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                      </div>
              </div>-->

              
            <hr class="mb-4">

            <button class="btn btn-primary btn-lg btn-block" type="submit">Registrar</button>
          </form>
        </div>
      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
  </body>

</asp:Content>
