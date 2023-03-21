@extends('layouts.master')
@section('title') @lang('translation.Language_admin') @endsection
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
                            @lang('translation.Language_created')
                        @elseif ($message == 'updated')
                            @lang('translation.Language_updated')
                        @elseif ($message == 'deleted')
                            @lang('translation.Language_deleted')
                        @endif
                    </div>
                @endif
            </div>
            <br/>
        @endif
        <div class="card card-header">
            @lang('translation.Language_admin')
        </div>
        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#languageModal"><i class="mdi mdi-plus me-1"></i>@lang('translation.Language_add')</button>
        <div class="table-responsive mt-4">
            <table class="table table-dark table-striped table-hover">
                <thead>
                    <td>ID</td>
                    <td>@lang('translation.Language_full')</td>
                    <td>@lang('translation.Language_abbr')</td>
                    <td>@lang('translation.Language_act')</td>
                    <td colspan="2">@lang('translation.Actions')</td>
                </thead>
                <tbody>
                    @foreach($idiomas as $idioma)
                        <tr>
                            <td>{{ $idioma->id }}</td>
                            <td>{{ $idioma->idioma }}</td>
                            <td>{{ $idioma->abreviatura }}</td>
                            <td><input type="checkbox" id ="activo_{{ $idioma->id }}" class="form-check-input" name="activo" {{ $idioma->activo==1?' checked ':'' }}></td>
                            <td><a href="{{ route('idiomas.edit', $idioma->id)}}" class="btn btn-primary editar_idioma" id="idioma_{{ $idioma->id }}">@lang('translation.Actions_edit')</a></td>
                            <td>
                                {{-- <form action ="{{ route('idiomas.destroy',$idioma->id) }}" method="post">
                                    @csrf
                                    @method('DELETE') --}}
                                    <button class="btn btn-danger eliminar_idioma" type="submit" id="eliminar_{{ $idioma->id }}">@lang('translation.Actions_delete')</button>
                                {{-- </form> --}}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {{-- INICIO MODAL --}}
    <div class="modal fade" id="languageModal" tabindex="-1" aria-labelledby="languageModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-xl modal-dialog-centered modal-fullscreen-sm-down">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="languageModalLabelAdd">@lang('translation.Language_add')</h5>
                    <h5 class="modal-title" id="languageModalLabelEdit">@lang('translation.Language_edit')</h5>
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
                    <form id="frmIdioma" method="post" action="{{ route('idiomas.store') }}">
                        <div class="form-group">
                            @csrf
                            <label style="display:none;" id="idIdioma">ID: <span id="id_idioma"></span></label>
                        </div>
                        <div class="form-group">
                            @csrf
                            <label for="country_name">@lang('translation.Language_full')<span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="idioma" required/>
                        </div>
                        <div class="form-group">
                            <label for="cases">@lang('translation.Language_abbr')<span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="abreviatura" minlength="2" maxlength="2" required/>
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
    <script src="{{ URL::asset('/assets/js/pages/idiomas/idiomas.js') }}"></script>
@endsection
