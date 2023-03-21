@extends('layouts.master')
{{-- @section('title') @lang('translation.Client_admin') @endsection --}}


@section('content')
    <style>
        .uper{
            margin-top:40px;
        }
    </style>
    <div class="card uper">
        <div class="card-header">
            @lang('translation.Client_edit')
        </div>
    </div>
    <div class="card-body">
        @if($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div><br/>
        @endif
        <form method="post" action="{{ route('clientes.update',$cliente->id) }}">
            <div class="form-group">
                @csrf
                @method('PATCH')
                <label for="rut">Rut</label>
                <input type="text" class="form-control" name="rut" value="{{ $cliente->rut }}"/>
            </div>

            <div class="form-group">
                <label for="nombre_fantasia">@lang('translation.Client_fantasy')</label>
                <input type="text" class="form-control" name="nombre_fantasia" value="{{ $cliente->nombre_fantasia }}"/>
            </div>

            <div class="form-group">
                <label for="razon_social">@lang('translation.Client_name')</label>
                <input type="text" class="form-control" name="razon_social" value="{{ $cliente->razon_social }}"/>
            </div>

            <div class="form-group">
                <label for="direccion">@lang('translation.Client_address')</label>
                <input type="text" class="form-control" name="direccion" value="{{ $cliente->direccion }}"/>
            </div>
            <button type="submit" class="btn btn-primary">@lang('translation.Actions_edit')</button>
        </form>
    </div>
@endsection
