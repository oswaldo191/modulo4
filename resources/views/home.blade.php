@extends('layouts.app')

@section('content')

<div class="jumbotron">
  <div class="container">
    <h3>Listado de asignaturas</h3>
    <button class="btn btn-primary" data-toggle="modal" data-target="#myModal"> Agregar asignaturas </button>
  </div>
</div>

<div class="container">
    <table class="table table-hover">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Asignatura</th>
          <th scope="col">Profesor</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>

        @foreach($asignatura as $asignaturas)
            <tr>
              <td scope="row">{{  $asignaturas->id }}</td>
              <td>{{  $asignaturas->nombre }}</td>
              <td>
                @if(! empty($asignaturas->profesor->nombre))
                {{ $asignaturas->profesor->nombre }}
                @endif
                </td>              
              <td>
                 <button class="btn btn-warning" data-toggle="modal" data-target="#edit-asignatura{{ $asignaturas->id }}">
                     Editar
                 </button>
              </td>
              <td>
                 <button class="btn btn-primary" data-toggle="modal" data-target="#lista-estudiante{{ $asignaturas->id }}">
                     Ver estudiantes
                 </button>
              </td>
            </tr>
        @endforeach
      </tbody>
    </table>
</div>
@foreach($asignatura as $asignaturas)
 @include('recurso.edit-asignatura')
@endforeach


@foreach($asignatura as $asignaturas)
     @include('recurso.list-estudiante')
@endforeach

 @include('recurso.crear-asignatura')
@endsection
