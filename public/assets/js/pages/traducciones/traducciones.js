/******/ (function() { // webpackBootstrap
var __webpack_exports__ = {};
$(function() {
    $.ajaxSetup({
        headers: {'X-CSRF-Token': $('meta[name="_token"]').attr('content')}
    });
    let table = $('#tbl_traducciones').DataTable({
        order: [[1, 'desc']],
        initComplete: function () {
            this.api()
            .columns()
            .every(function () {
                let column = this;
                if (this[0][0]==1 || this[0][0]==2) {
                    let select = $('<select><option value=""></option></select>')
                    .appendTo($(column.header()).empty())
                    .on('change', function () {
                        let val = $.fn.dataTable.util.escapeRegex($(this).val());
                        column.search(val ? '^' + val + '$' : '', true, false).draw();
                    });
                    column
                    .data()
                    .unique()
                    .sort()
                    .each(function (d, j) {
                        select.append('<option value="' + d + '">' + d + '</option>');
                    });
                }
            });
        }
    });
    let url = base+"/traducciones/"+0;
    $.get(url,function(res){
        $.each(res.idiomas,function(k,v){
            $("#id_idioma").append('<option value="' + v.id + '">' + v.idioma + '</option>')
        });
        $.each(res.archivos,function(k,v){
            $("#id_archivo").append('<option value="' + v.id + '">' + v.archivo + '</option>')
        });
    });


    $("#traduccionModalLabelAdd").show();
    $("#traduccionModalLabelEdit").hide();
    $("#frmTraduccion").validate();
    $('#tbl_traducciones').on('click', '.editar_traduccion', function() {
        let id_traduccion = parseInt($(this).attr('id').replace("traduccion_",""));
        let url = base+"/traducciones/"+id_traduccion+"/edit";
        $.get(url,function(res) {
            $("#frmTraduccion")[0].reset();
            $("#idTraduccion").show();
            $("#id_traduccion").html(res.id);
            $("#id_idioma").val(res.id_idioma);
            $("[name='expresion']").val(res.expresion);
            $("[name='traduccion']").val(res.traduccion);
            res.activo==1 ? $("[name='activo']").attr('checked',true):$("[name='activo']").attr('checked',false);
            $("#btn_edit").show();
            $("#btn_add").hide()
            $("#traduccionModalLabelAdd").hide();
            $("#traduccionModalLabelEdit").show();
            $("#translationModal").modal("show");
        });
    });
    $("#btn_edit").on("click",function(e) {
        e.preventDefault();
        let id = $("#id_traduccion").html();
        let url = base+"/traducciones/"+id;
        $.post(url,{
            id:id,
            id_idioma : $("[name='id_idioma']").val(),
            expresion : $("[name='expresion']").val(),
            traduccion : $("[name='traduccion']").val(),
            activo : $("[name='activo']").is(':checked') ? 1 : 0,
            _method: 'patch'
        },function(res) {
            location.reload();
        });
    })
    $('#tbl_traducciones').on('click', '.eliminar_traduccion', function() {
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
                let url = base+"/traducciones/"+id;
                $.ajax({
                    url: url,
                    type: 'post',
                    data: {
                        _method: 'delete'
                    },
                    success: function (res) {
                        Swal.fire(Show_confirm_deleted_title, Show_Confirm_deleted_text, "success").then(function () {
                            location.reload(true);
                        });
                    }
                });
                /////////////////////
            }
        });
    });
    $('#translationModal').on('hidden.bs.modal', function () {
        $("#traduccionModalLabelAdd").show();
        $("#traduccionModalLabelEdit").hide();
        $("#frmTraduccion")[0].reset();
    })
    $("#generar").on("click",function(){
        let url = base+"/generar";
        $.get(url,function(res){
            if (res==200) {
                Swal.fire(Translation_file_generated_title, Translation_file_generated_text, "success")
                    .then(function () {
                        location.reload(true);
                    });
            } else {
                toastr.error(res);
            }
        });
    });
});
/******/ })()
;
