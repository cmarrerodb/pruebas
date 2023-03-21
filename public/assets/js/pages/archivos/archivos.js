/******/ (function() { // webpackBootstrap
var __webpack_exports__ = {};
$(function() {
    $.ajaxSetup({
        headers: {'X-CSRF-Token': $('meta[name="_token"]').attr('content')}
    });
    $("#fileModalLabelAdd").show();
    $("#fileModalLabelEdit").hide();
    $("#frmIdioma").validate();
    $(".editar_idioma").on("click",function(e) {
        e.preventDefault();
        let id_archivo = parseInt($(this).attr('id').replace("archivo_",""));
        let url = base+"/archivos/"+id_archivo+"/edit";
        $.get(url,function(res) {
            $("#idArchivo").show();
            $("#id_archivo").html(res.id);
            $("[name='archivo']").val(res.archivo);
            $("[name='descripcion']").val(res.descripcion);
            res.activo==1 ? $("[name='activo']").attr('checked',true):$("[name='activo']").attr('checked',false);
            $("#btn_edit").show();
            $("#btn_add").hide()
            $("#fileModalLabelAdd").hide();
            $("#fileModalLabelEdit").show();
            $("#fileModal").modal("show");
        });
    });
    $("#btn_edit").on("click",function(e) {
        e.preventDefault();
        let id = $("#id_idioma").html();
        let url = base+"/idiomas/"+id;
        $.ajax({
            url: url,
            type: 'post',
            data: {
                id:id,
                archivo : $("[name='archivo']").val(),
                descripcion : $("[name='descripcion']").val(),
                activo : $("[name='activo']").is(':checked') ? 1 : 0,
                _method: 'patch'
            },
            success: function (res) {
                location.reload();
            }
        });
    })
    $(".eliminar_archivo").on("click",function(e) {
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
                let url = base+"/archivos/"+id;
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
    $('#fileModal').on('hidden.bs.modal', function () {
        $("#fileModalLabelAdd").show();
        $("#fileModalLabelEdit").hide();
        $("#frmIdioma")[0].reset();
    })
    $('#translationModal').on('shown.bs.modal', function () {
        $("#frmTraduccion")[0].reset();
    })
});
/******/ })()
;
