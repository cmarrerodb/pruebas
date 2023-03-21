@extends('layouts.master')
@section('title') @lang('translation.TransFile_admin') @endsection
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
                            @lang('translation.TransFile_created')
                        @elseif ($message == 'updated')
                            @lang('translation.TransFile_updated')
                        @elseif ($message == 'deleted')
                            @lang('translation.TransFile_deleted')
                        @endif
                    </div>
                @endif
            </div>
            <br/>
        @endif
        <div class="card card-header">
            @lang('translation.TransFile_admin')
        </div>
        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#fileModal"><i class="mdi mdi-plus me-1"></i>@lang('translation.TransFile_add')</button>
        <div class="table-responsive mt-4">
            <table class="table table-dark table-striped table-hover">
                <thead>
                    <td>ID</td>
                    <td>@lang('translation.TransFile_file')</td>
                    <td>@lang('translation.TransFile_description')</td>
                    <td>@lang('translation.Language_act')</td>
                    <td colspan="2">@lang('translation.Actions')</td>
                </thead>
                <tbody>
                    @foreach($archivos as $archivo)
                        <tr>
                            <td>{{ $archivo->id }}</td>
                            <td>{{ $archivo->archivo }}</td>
                            <td>{{ $archivo->descripcion }}</td>
                            <td><input type="checkbox" id ="activo_{{ $archivo->id }}" class="form-check-input" name="activo" {{ $archivo->activo==1?' checked ':'' }}></td>
                            <td><a href="{{ route('archivos.edit', $archivo->id)}}" class="btn btn-primary editar_archivo" id="archivo_{{ $archivo->id }}">@lang('translation.Actions_edit')</a></td>
                            <td>
                                <button class="btn btn-danger eliminar_archivo" type="submit" id="eliminar_{{ $archivo->id }}">@lang('translation.Actions_delete')</button>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {{-- INICIO MODAL --}}
    <div class="modal fade" id="fileModal" tabindex="-1" aria-labelledby="fileModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-xl modal-dialog-centered modal-fullscreen-sm-down">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="fileModalLabelAdd">@lang('translation.TransFile_add')</h5>
                    <h5 class="modal-title" id="fileModalLabelEdit">@lang('translation.TransFile_edit')</h5>
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
                    <form id="frmarchivo" method="post" action="{{ route('archivos.store') }}">
                        <div class="form-group">
                            @csrf
                            <label style="display:none;" id="idarchivo">ID: <span id="id_archivo"></span></label>
                        </div>
                        <div class="form-group">
                            @csrf
                            <label for="country_name">@lang('translation.TransFile_file')<span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="archivo" required/>
                        </div>
                        <div class="form-group">
                            <label for="cases">@lang('translation.TransFile_description')<span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="descripcion" required/>
                        </div>
                        <div class="form-group mb-4">
                            <label for="cases">@lang('translation.Language_act'):</label>
                            <input type="checkbox" class="form-control form-check-input" name="activo"/>
                        </div>

                        <button id="btn_edit"  style="display:none;" type="submit" class="btn btn-primary">@lang('translation.Actions_edit')</button>

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
    </script>
    <script src="{{ URL::asset('/assets/js/app.min.js') }}"></script>
    <script src="{{ URL::asset('assets/libs/sweetalert2/sweetalert2.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/js/pages/archivos/archivos.js') }}"></script>
@endsection
