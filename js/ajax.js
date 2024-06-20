
$(function(){
 
     //espera que documento este cargado y empieza a ejecutar funcioens

   console.log("echox");
  $("#task-result").hide(); //oculta id html
  //fetchtask();
  /*************funcion buscar en tiempo real******************* */
  $("#search").keyup(()=>{ //al pulsaar tecla
    if ($("#search").val()){ // si existe algun valor en txtbox
        let search = $("#search").val();//pasa cada valor a variable search
       // console.log(search);
        $.ajax({
          url:"php/buscar-tarea.php",
          data: {search},
          type: "POST",
          success: function (response){
            if(!response.error){
              let tasks = JSON.parse(response);
              let template = ``;
              tasks.forEach(task => {
                template +=
                      ` <tr>
                            <td>${task.archivistica}</td>
                            <td>${task.empresa}</td>
                            <td>${task.delegacion}</td>
                            <td>${task.municipio}</td>
                            <td>${task.denuncia}</td>
                            <td>${task.fecha}</td>
                            <td>
                                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                  Asignar
                                </button>
                            </td>
                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"style="text-align:center;">
                                  Editar
                                </button>
                            </td>
                            <td>
                              <button type="submit" name="eliminar"  class="btn btn-danger">eliminar</button>
                            </td>
                        </tr>`
                        //$("#tasks").html(template);
                        //console.log(template);
              });
             // $("#task-result").show();
              $("#tasks").html(template);
             //console.log(tasks);
            }
          }
        })

    }
  })
/*})*/
/******************** fin buscar****************************** */
/************************funcion Agregar ***********************/
  $("#task-form").submit(e => {
    e.preventDefault();
    const posData = {
                      archivistica: $("#archivistica").val(),
                      empresa: $("#empresa").val(),
                      direccion: $("#direccion").val(),
                      latitud: $("#latitud").val(),
                      longitud: $("#longitud").val(),
                      s_delegacion: $("#s_delegacion").val(),
                      s_municipio: $("#s_municipio").val(),
                      s_denuncia: $("#s_denuncia").val(),
                      fechaorden: $("#fechaorden").val(),
    }
    $.ajax({
      url:"php/agregar-tarea.php",
      data: posData,
      type: "POST",
      success: function (response){
        if(!response.error){
          alert("Guardado con exito");
          $("#task-form").trigger("reset")
          alert("Guardado con exito");
          console.log(response);
        }
      }
    })
  })
  /***********end funcion agregar******************************************** */
  /*********************funcion listar*******************************************/
  function fetchtask(){ //obtener tareas
    $.ajax({
      url: "php/listar-tareas.php",
      type: "GET",
      success: function(response){
      const tasks = JSON.parse(response);
      console.log(response);
      let template = ` `;
      //console.log(tasks);
        tasks.forEach(task =>
          {
            template += `
            <tr>
              <td>${task.archivistica}</td>
              <td>${task.empresa}</td>
              <td>${task.delegacion}</td>
              <td>${task.municipio}</td>
              <td>${task.denuncia}</td>
              <td>${task.fecha}</td>
            </tr>  `;
             // console.log(template);
            }
        )
       // console.log("flag");
        console.log("tasks");
        $("#tasks").html(template);
      },
      error:function(jqXHR,status,error){
        alert('disculpe');
      },
      complete:function(jqXHR,status){
        alert('peticion realiada');
      }
    })
  }
  /****end listar*****/



})
