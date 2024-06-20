
<?php
    include ("header.php");
    include("modal_asignar.php");
   
?>
<div class="container my-5">
      <div class="row p-4">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body">
              <!--INICIA FORMULARIO-->
              <!--<form class="row g-3" action="view/prueba.php" method="POST">-->
              <form class="row g-3" id="task-form">
                <div class="col-md-6">
                  <label for="archivistica" class="form-label">ARCHIVISTICA</label>
                  <input type="text" class="form-control" id="archivistica" name="archivistica">
                </div>
                <div class="col-6">
                  <label for="inputAddress2" class="form-label"></label>
                </div>
                <hr width="75%" />
                <div class="col-6">
                  <label for="empresa" class="form-label">EMPRESA</label>
                  <input type="text" class="form-control" id="empresa" placeholder="" name="empresa">
                </div>
                <div class="col-md-6">
                  <label for="direccion" class="form-label">DIRECCIÒN</label>
                  <input type="text" class="form-control" id="direccion" name="direccion">
                </div>
                <div class="col-md-3">
                  <label for="latitud" class="form-label">LATITUD</label>
                  <input type="text" class="form-control" id="latitud" name="latitud">
                </div>
                <div class="col-md-3">
                  <label for="longitud" class="form-label">LONGITUD</label>
                  <input type="text" class="form-control" id="longitud" name="longitud">
                </div>
                <div class="col-md-3">
                  <label for="delegacion" class="form-label">DELEGACION</label>
                  <select id="s_delegacion" class="form-select" name="s_delegacion">
                    <option selected>Chihuahua</option>
                    <option value="1">Delicias</option>
                    <option value="2">Juárez</option>
                    <option value="3">N. Casas Grandes</option>
                    <option value="4">Parral</option>
                  </select>
                </div>
                <div class="col-md-3">
                  <label for="municipio" class="form-label">MUNICIPIO</label>
                  <select id="s_municipio" class="form-select" name="s_municipio">
                    <option selected>Batopilas de Manuel Gomez Morin</option>
                    <option value="1">Delicias</option>
                    <option value="2">Juárez</option>
                    <option value="3">N. Casas Grandes</option>
                    <option value="4">Parral</option>
                  </select>
                </div>
                
                <div class="col-md-3">
                  <label for="denuncia" class="form-label">DENUNCIA</label>
                  <select id="s_denuncia" class="form-select" name="s_denuncia">
                    <option selected>SELECCIONAR..</option>
                    <option value="1">NO</option>
                    <option value="2">SI</option>
                  </select>
                </div>

            

                <div class="col-md-2">
                  <label for="fechaorden" class="form-label">FECHA DE ORDEN </label>
                  <input type="date" class="form-control" id="fechaorden" name="fechaorden">
                </div>


                <div class="col-12">
                  <button type="submit" class="btn btn-primary">REGISTRAR</button>
                </div>
              </form>
            </div>
          </div>
        </div>
        
      </div>
    </div>
<!----------------------------------------------------------------->
    <div class="container">
          <div class="card my-4" id="task-result">
            <div class="card-body">
              <div class="alert alert alert-primary" id="alert">
                  <strong id="res"></strong>
              </div>
              <ul id="container-fluid"></ul>
            </div>

          </div>
          <table class="table  table-bordered">
            <!--<thead class="thead-dark">-->
          <thead> 
              <tr>
                <th scope="col" class="text-center">ARCHI</th>
                <th scope= "col" class="text-center">EMPRESA</th>
                <th scope= "col" class="text-center">DELEGACION</th>
                <th scope= "col" class="text-center">MUNICIPIO</th>
                <th scope= "col" class="text-center">DENUNCIA</th>
                <th scope= "col" class="text-center">FECHA ORDEN</th>
                <th  colspan="5" scope= "col" class="text-center">ACCIONES</th>
              </tr>
          </thead>
            <tbody id="tasks">
             
            </tbody>
          </table>
    </div>
    
<?php
 include ("footer.php");
?>
    