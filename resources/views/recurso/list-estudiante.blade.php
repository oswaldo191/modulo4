<div class="modal fade" id="lista-estudiante{{ $asignaturas->id }}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
       <h4 class="modal-title" id="lista-estudiante{{ $asignaturas->id }}">Listado de estudiantes</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
           <table class="table table-hover">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Nombre</th>
          <th scope="col">Padre</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        @foreach($asignaturas->estudiante as $estudiantes)
          <tr>
              <td scope="row">{{  $estudiantes->id }}</td>
              <td>{{  $estudiantes->nombre }}</td>
              <td>
                @if(! empty($estudiantes->padre->nombre))
                {{ $estudiantes->padre->nombre }}
                @endif
                </td>              
            </tr>
        @endforeach
      </tbody>
    </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
       
      </div>
    </div>
  </div>
</div>