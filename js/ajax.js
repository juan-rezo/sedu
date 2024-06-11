$(function(){//espera que documento este cargado y empieza a ejecutar funcioens

 // console.log("echox")
//$("#task-result").hide() //oculta id html
fetchtask();
  $("#search").keyup(()=>{
    if ($("#search").val()){
        let search = $("#search").val();
       // console.log(search);
        $.ajax({
          url:"php/buscar-tarea.php",
          data: {search},
          type: "POST",
          success: function (response){
            if(!response.error){
              let tasks = JSON.parse(response);
              let template = ` `;
              tasks.forEach(task => {
                template = 
                      ` <tr>
                            <td scope="row">${task.archivistica}</td>
                            <td>${task.empresa}</td>
                            <td>${task.delegacion}</td>
                            <td>${task.municipio}</td>
                            <td>${task.denuncia}</td>
                            <td>${task.fecha}</td>
                            <td>
                                <button type="button" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                  <img class="rounded float-left"id="icono" src="./icon/pngegg.png" alt="" height= "16px">
                                </button>
                            </td>
                            <td>
                          <button type="button" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                            <img class="rounded float-right"id="icono" src="./icon/editar.png" alt="" height="16px" >
                          </button>
                          <td></tr>`
                        $("#rowtable").html(template);
              });
              //$("#task-result").show();
              $("#rowtable").html(template);
              console.log(tasks);
            }
          }
        })

    }
  })

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

  function fetchtask(){ //obtener tareas
    $.ajax({
      url: "php/listar-tareas.php",
      type: "GET",
      success: function(response){
      const tasks = JSON.parse(response);
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
        console.log(template);
        $("#tasks").html(template);
      },
      error:function(jqXHR,status,error){
        alert('disculpe');
      }/*,
      complete:function(jqXHR,status){
        alert('peticion realiada');
      }*/
    })
  }


})
