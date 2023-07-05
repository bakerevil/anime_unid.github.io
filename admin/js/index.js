const checkboxes = document.querySelectorAll(".checkboxes")
const tabla = document.querySelector('#cuerpo');
        let opciones = {
            method :'POST'
            }
            let formdata = new FormData() 

            function get_data(){
            formdata.append("funcion", "get_data")
            opciones.body = formdata
        fetch('class.php',opciones)
            .then(respuesta => respuesta.json())
            .then(resultado =>{
            let template =  ``
                resultado.forEach(elemento => {
                
                template +=  `
                            <tr>
                                <th>
                                    <input type="checkbox" class="checkboxes">
                                </th>
                                <td>${elemento.correo}</td>
                                <td>${elemento.password}</td>
                                <td>${elemento.usuario}</td>
                                <td>${elemento.rol}</td>
                                <td>${elemento.status}</td>
                                
                            </tr>
                            
                    `
                });
                tabla.innerHTML=template
            });
}
get_data()
btnNew.addEventListener("click", (event) => {
event.preventDefault()
if(data.style.display != "none"){
    data.style.display = "none"
    insert_data.style.display = "block"
}

})
btnSave.addEventListener("click", (event) => {
    event.preventDefault()
    if( usuario.value != "" &&  password.value != "" && rol.value != "" && status.value != "" && correo.value != "" ){
        let formdata = new FormData(form) 
        formdata.append("funcion", "insert_data")
        opciones.body = formdata 
        fetch('class.php',opciones)
        .then(respuesta => respuesta.json())
        .then(resultado =>{
            alert(resultado.text)
            if (resultado.status=="success") {
                data.style.display = "block"
                form.reset()
                insert_data.style.display = "none"
                get_data()
            }else if (resultado.status == 'error') {
                alert('Error al insertar el registro: ' + resultado.text);
            }
        })       
    }
    else {
        alert('Todos los campos son obligatorios');
    }
})
console.log(checkboxes)
checkboxes.forEach(checkbox => {
    checkbox.addEventListener("change", element => {
        console.log("entro")
    })
})
SelectAll.addEventListener("change", checkbox => {
    const checkboxes = document.querySelectorAll(".checkboxes")
    checkboxes.forEach(element => {
        element.checked = false
    })
    if (SelectAll.checked) {
        checkboxes.forEach(element => {
            element.checked = true
        })
    }
})