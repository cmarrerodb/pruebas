@extends('layouts.master')
{{-- @section('title') @lang('translation.Client_admin') @endsection --}}

@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>
<div class="card uper">
  <div class="card-header">
    @lang('translation.Client_add')
  </div>
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
      <form method="post" action="{{ route('clientes.store') }}">
          <div class="form-group">
              @csrf
              <label for="country_name">Rut:</label>
              <input type="text" class="form-control" name="rut"/>
          </div>
          <div class="form-group">
              <label for="cases">@lang('translation.Client_fantasy'):</label>
              <input type="text" class="form-control" name="nombre_fantasia"/>
          </div>
          <div class="form-group">
              <label for="cases">@lang('translation.Client_name'):</label>
              <input type="text" class="form-control" name="razon_social"/>
          </div>
          <div class="form-group">
              <label for="cases">@lang('translation.Client_address'):</label>
              <input type="text" class="form-control" name="direccion"/>
          </div>

          <button type="submit" class="btn btn-primary">@lang('translation.Actions_add')</button>
      </form>
  </div>
</div>
@endsection
