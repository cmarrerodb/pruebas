@extends('layouts.master')
@section('title') @lang('translation.Client_admin') @endsection
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
                            @lang('translation.Client_created')
                        @elseif ($message == 'updated')
                            @lang('translation.Client_updated')
                        @elseif ($message == 'deleted')
                            @lang('translation.Client_deleted')
                        @endif
                    </div>
                @endif
            </div>
            <br/>
        @endif
        <div class="card card-header">
            @lang('translation.Client_admin')
        </div>
        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#clientModal"><i class="mdi mdi-plus me-1"></i>@lang('translation.Client_add')</button>
        <div class="table-responsive mt-4">
            <table class="table table-dark table-striped table-hover">
                <thead>
                    <td>ID</td>
                    <td>Rut</td>
                    <td>@lang('translation.Client_fantasy')</td>
                    <td>@lang('translation.Client_name')</td>
                    <td>@lang('translation.Client_address')</td>
                    <td colspan="2">@lang('translation.Actions')</td>
                </thead>
                <tbody>
                    @foreach($clientes as $cliente)
                        <tr>
                            <td>{{ $cliente->id }}</td>
                            <td>{{ $cliente->rut }}</td>
                            <td>{{ $cliente->nombre_fantasia }}</td>
                            <td>{{ $cliente->razon_social }}</td>
                            <td>{{ $cliente->direccion }}</td>

                            <td><a href="{{ route('clientes.edit', $cliente->id)}}" class="btn btn-primary editar_cliente" id="cliente_{{ $cliente->id }}">@lang('translation.Actions_edit')</a></td>

                            <td>
                                {{-- <form action ="{{ route('clientes.destroy',$cliente->id) }}" method="post">
                                    @csrf
                                    @method('DELETE') --}}
                                    <button class="btn btn-danger eliminar_cliente" type="submit" id="eliminar_{{ $cliente->id }}">@lang('translation.Actions_delete')</button>
                                {{-- </form> --}}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {{-- INICIO MODAL --}}
    <div class="modal fade" id="clientModal" tabindex="-1" aria-labelledby="clientModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-xl modal-dialog-centered modal-fullscreen-sm-down">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="clientModalLabelAdd">@lang('translation.Client_add')</h5>
                    <h5 class="modal-title" id="clientModalLabelEdit">@lang('translation.Client_edit')</h5>
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
                    <form id="frmCliente" method="post" action="{{ route('clientes.store') }}">
                        <div class="form-group">
                            @csrf
                            <label style="display:none;" id="idCliente">ID: <span id="id_cliente"></span></label>
                        </div>
                        <div class="form-group">
                            @csrf
                            <label for="country_name">Rut<span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="rut" required/>
                        </div>
                        <div class="form-group">
                            <label for="cases">@lang('translation.Client_fantasy')<span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="nombre_fantasia" required/>
                        </div>
                        <div class="form-group">
                            <label for="cases">@lang('translation.Client_name')<span class="req" style="color:red !important;">*</span>:</label>
                            <input type="text" class="form-control" name="razon_social" required/>
                        </div>
                        <div class="form-group">
                            <label for="cases">@lang('translation.Client_address')<span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="direccion" required/>
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
    <script src="{{ URL::asset('/assets/js/pages/clientes/clientes.js') }}"></script>
@endsection
