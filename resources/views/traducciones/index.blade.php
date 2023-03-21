@extends('layouts.master')
@section('title') @lang('translation.Translation_admin') @endsection
@section('css')
    <link href="{{ URL::asset('assets/libs/sweetalert2/sweetalert2.min.css') }}" rel="stylesheet">
@endsection
@section('content')
    <meta name="_token" content="{{ csrf_token() }}">
    <style>
        .uper {
            margin-top: 40px;
        }
    </style>
    <div class="uper">
        @if(session()->get('success'))
            <div class="alert alert-success">
                @if ($message = Session::get('success'))
                    <div class="alert alert-success">
                        @if ($message == 'created')
                            @lang('translation.Translation_created')
                        @elseif ($message == 'updated')
                            @lang('translation.Translation_updated')
                        @elseif ($message == 'deleted')
                            @lang('translation.Translation_deleted')
                        @endif
                    </div>
                @endif
            </div>
            <br/>
        @endif
        <div class="card card-header">
            @lang('translation.Translation_admin')
        </div>
        <div class="d-grid gap-2 d-md-block">
            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#translationModal"><i class="mdi mdi-plus me-1"></i>@lang('translation.Translation_add')</button>
            <button id="generar" type="button" class="btn btn-dark btn-block" ><i class="mdi mdi-comment-flash me-1"></i>@lang('translation.Translation_generate')</button>
        </div>
        <div>
            <form method="post" enctype="multipart/form-data" action = "{{ url('/importar_excel') }}">
                @csrf
                <label>@lang('translation.Select_import')</label>
                <input type="file" name="select_file" />
                <button type="submit" class="btn btn-primary" name="upload" title="@lang('translation.TransFile_upload')"><i class="fas fa-upload"></i></button>
            </form>
            @if(count($errors) > 0)
                <div class="alert alert-danger">
                    Error de validación de archivo<br/><br/>
                    <ul>
                        @foreach($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>

                </div>
            @endif
            @if($message = Session::get('success'))
                <div class="alert alert-success alert-block">
                    <strong>{{ $message }}</strong>
                </div>
            @endif
        </div>
        <div class="table-responsive mt-4">
            <table class="table table-dark table-striped table-hover" id="tbl_traducciones">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>@lang('translation.Language_full')</th>
                        <th>@lang('translation.Translation_file')</th>
                        <th>@lang('translation.Translation_expression')</th>
                        <th>@lang('translation.Translation_traduction')</th>
                        <th>@lang('translation.Language_act')</th>
                        <th>@lang('translation.Actions')</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($traducciones as $traduccion)
                        <tr>
                            <td>{{ $traduccion->id }}</td>
                            <td>{{ $traduccion->idioma }}</td>
                            <td>{{ $traduccion->archivo }}</td>
                            <td>{{ $traduccion->expresion }}</td>
                            <td>{{ $traduccion->traduccion }}</td>
                            <td><input type="checkbox" id ="activo_{{ $traduccion->id }}" class="form-check-input" name="activo" {{ $traduccion->activo==1?' checked ':'' }}></td>
                            <td><button class="btn btn-primary btn-sm editar_traduccion" id="traduccion_{{ $traduccion->id }}"><i class="fas fa-pencil"></i></button>
                            <button class="btn btn-danger btn-sm eliminar_traduccion" type="submit" id="eliminar_{{ $traduccion->id }}"><i class="fas fa-trash"></i></button></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {{-- INICIO MODAL --}}
    <div class="modal fade" id="translationModal" tabindex="-1" aria-labelledby="traduccionModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-xl modal-dialog-centered modal-fullscreen-sm-down">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="traduccionModalLabelAdd">@lang('translation.Translation_add')</h5>
                    <h5 class="modal-title" id="traduccionModalLabelEdit">@lang('translation.Translation_edit')</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="card-body">
                        @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div><br />
                        @endif
                    {{-- form --}}
                    <form id="frmTraduccion" method="post" action="{{ route('traducciones.store') }}">
                        <div class="form-group">
                            @csrf
                            <label style="display:none;" id="idTraduccion">ID: <span id="id_traduccion"></span></label>
                        </div>
                        <div class="form-group">
                            @csrf
                            <label for="country_name">@lang('translation.Language_full')<span class="req">*</span>:</label>
                            <select class="form-select" id="id_idioma" name="id_idioma"></select>
                        </div>
                        <div class="form-group">
                            @csrf
                            <label for="country_name">@lang('translation.TransFile_file')<span class="req">*</span>:</label>
                            <select class="form-select" id="id_archivo" name="id_archivo"></select>
                        </div>
                        <div class="form-group">
                            @csrf
                            <label for="country_name">@lang('translation.Translation_expression')<span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="expresion" required/>
                        </div>
                        <div class="form-group">
                            @csrf
                            <label for="country_name">@lang('translation.Translation_traduction')<span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="traduccion" required/>
                        </div>
                        <div class="form-group mb-4">
                            <label for="cases">@lang('translation.Language_act'):</label>
                            <input type="checkbox" class="form-control form-check-input" name="activo" id="activo"/>
                        </div>
                        <button id="btn_edit"  style="display:none;" type="submit" class="btn btn-primary">@lang('translation.Actions_update')</button>
                        <button id="btn_add" type="submit" class="btn btn-primary">@lang('translation.Actions_add')</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    {{-- FIN MODAL --}}
@endsection
@section('script')
    <script>
        var base = "{{ url('/') }}";
        var Confirm_delete_title = "@lang('translation.Confirm_delete_title')";
        var Confirm_delete_text = "@lang('translation.Confirm_delete_text')";
        var Confirm_delete_button = "@lang('translation.Confirm_delete_button')";
        var Confirm_cancel_button = "@lang('translation.Confirm_cancel_button')";
        var Show_confirm_deleted_title = "@lang('translation.Show_confirm_deleted_title')";
        var Show_Confirm_deleted_text = "@lang('translation.Show_Confirm_deleted_text')";
        var Translation_file_generated_title = "@lang('translation.Translation_file_generated_title')";
        var Translation_file_generated_text = "@lang('translation.Translation_file_generated_text')";

    </script>
    <script src="{{ URL::asset('/assets/js/app.min.js') }}"></script>
    <script src="{{ URL::asset('assets/libs/sweetalert2/sweetalert2.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/js/pages/traducciones/traducciones.js') }}"></script>
@endsection
