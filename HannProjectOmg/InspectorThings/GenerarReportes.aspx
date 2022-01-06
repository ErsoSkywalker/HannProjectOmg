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
              <div class="col-md-8 mb-3">
                <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Estatus</label>
                 <br>
                   <div class="col-lg-6">
                    <ul class="list-group">
                      <li class="list-group-item">
                        <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                        Inspeccionado
                      </li>
                      <li class="list-group-item">
                        <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                        En Proceso
                      </li>
                      <li class="list-group-item">
                        <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                        No Inspeccionado 
                      </li>
                    </ul>
                  </div><!-- /.col-lg-6 -->
              </div>

                <!--Instalaciones-->
                <div class="col-md-6 order-md-1">
                     <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Instalaciones</label>
                          <br>
                          <select class="form-control">
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                     </div>
                </div>

                <!--Salas-->
                 <div class="col-md-8 mb-3">
                    <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Salas</label>
                    <br>
                       <div class="col-lg-6">
                        <ul class="list-group">
                          <li class="list-group-item">
                            <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                            Bien
                          </li>
                          <li class="list-group-item">
                            <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                            Regular
                          </li>
                          <li class="list-group-item">
                            <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                            Mal 
                          </li>
                        </ul>
                      </div><!-- /.col-lg-6 -->
              </div>

                
                <!--Personal-->
                <div class="col-md-8 mb-3">
                    <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Personal</label>
                    <br>
                       <div class="col-lg-6">
                        <ul class="list-group">
                          <li class="list-group-item">
                            <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                            Suficiente
                          </li>
                          <li class="list-group-item">
                            <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                            Regular
                          </li>
                          <li class="list-group-item">
                            <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                            Insuficiente 
                          </li>
                        </ul>
                      </div><!-- /.col-lg-6 -->
              </div>

                <!--Servicio-->
                 <div class="col-md-8 mb-3">
                    <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Servicio</label>
                    <br>
                   <div class="col-lg-6">
                    <ul class="list-group">
                      <li class="list-group-item">
                        <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                        Suficiente
                      </li>
                      <li class="list-group-item">
                        <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                        Regular
                      </li>
                      <li class="list-group-item">
                        <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                        Insuficiente 
                      </li>
                    </ul>
                  </div><!-- /.col-lg-6 -->
              </div>

                <!--Sanidad-->
                 <div class="col-md-8 mb-3">
                    <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Sanidad</label>
                    <br>
                   <div class="col-lg-6">
                    <ul class="list-group">
                      <li class="list-group-item">
                        <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                        Suficiente
                      </li>
                      <li class="list-group-item">
                        <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                        Regular
                      </li>
                      <li class="list-group-item">
                        <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
                        Insuficiente 
                      </li>
                    </ul>
                  </div><!-- /.col-lg-6 -->
              </div>

                 <!--Taquilla-->
               <div class="col-md-6 order-md-1">
                     <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Taquilla</label>
                          <br>
                          <select class="form-control">
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                     </div>

                   <!--Fecha-->
                    <div class="col-md-8 mb-3">
                         <label for="firstName" style="padding-left:1.5rem; margin-top:1rem">Fecha</label>
                          <br>
                          <select class="form-control">
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                     </div>
                </div>

              

                <!-- Textarea-->
                 <div class="col-md-10 mb-1">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Observaciones</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                      </div>
                  <!-- /.col-md-10 mb-3 -->
              </div>

              

            <h4 class="mb-3">Payment</h4>

            <div class="d-block my-3">
              <div class="custom-control custom-radio">
                <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                <label class="custom-control-label" for="credit">Credit card</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="debit">Debit card</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="paypal">Paypal</label>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="cc-name">Name on card</label>
                <input type="text" class="form-control" id="cc-name" placeholder="" required>
                <small class="text-muted">Full name as displayed on card</small>
                <div class="invalid-feedback">
                  Name on card is required
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="cc-number">Credit card number</label>
                <input type="text" class="form-control" id="cc-number" placeholder="" required>
                <div class="invalid-feedback">
                  Credit card number is required
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-3 mb-3">
                <label for="cc-expiration">Expiration</label>
                <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                <div class="invalid-feedback">
                  Expiration date required
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="cc-expiration">CVV</label>
                <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                <div class="invalid-feedback">
                  Security code required
                </div>
              </div>
            </div>
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
