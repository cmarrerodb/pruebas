/******/ (function() { // webpackBootstrap
var __webpack_exports__ = {};
$(function() {
    $.ajaxSetup({
        headers: {'X-CSRF-Token': $('meta[name="_token"]').attr('content')}
    });
    $("#frmCliente").validate();
    $(".editar_cliente").on("click",function(e) {
        e.preventDefault();
        let id_cliente = parseInt($(this).attr('id').replace("cliente_",""));
        let url = base+"/clientes/"+id_cliente+"/edit";
        $.get(url,function(res) {
            $("#idCliente").show();
            $("#id_cliente").html(res.id);
            $("[name='rut']").val(res.rut);
            $("[name='nombre_fantasia']").val(res.nombre_fantasia);
            $("[name='razon_social']").val(res.razon_social);
            $("[name='direccion']").val(res.direccion);
            $("#btn_edit").show();
            $("#btn_add").hide()
            $("#clientModal").modal("show");
        });
    });
    $("#btn_edit").on("click",function(e) {
        e.preventDefault();
        let id = $("#id_cliente").html();
        let url = base+"/clientes/"+id;
        $.ajax({
            url: url,
            type: 'post',
            data: {
                id:id,
                rut : $("[name='rut']").val(),
                nombre_fantasia : $("[name='nombre_fantasia']").val(),
                razon_social : $("[name='razon_social']").val(),
                direccion : $("[name='direccion']").val(),
                _method: 'patch'
            },
            success: function (res) {
                location.reload();
            }
        });
    })
    $(".eliminar_cliente").on("click",function(e) {
        e.preventDefault();
        let id = parseInt($(this).attr('id').replace("eliminar_",""));
        Swal.fire({
            title: Confirm_delete_title,
            text: Confirm_delete_text,
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#51d28c",
            cancelButtonColor: "#f34e4e",
            confirmButtonText: Confirm_delete_button,
            cancelButtonText: Confirm_cancel_button
        }).then(function (result) {
            if (result.value) {
                /////////////////////
                let url = base+"/clientes/"+id;
                $.ajax({
                    url: url,
                    type: 'post',
                    data: {
                        _method: 'delete'
                    },
                    success: function (res) {
                        Swal.fire(Show_confirm_deleted_title, Show_Confirm_deleted_text, "success");
                        location.reload();
                    }
                });
                /////////////////////
            }
        });
    });
        $('#clientModal').on('hidden.bs.modal', function () {
        $("#frmCliente")[0].reset();
    })
});
/******/ })()
;
