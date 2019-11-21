<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
       <h4 class="modal-title" id="myModalLabel">Agregar asignaturas</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
            <form action="{{ route('add-asignatura') }}" method="POST">
                 @csrf
              <div class="form-group">
                <label>Asignatura</label>
                <input type="text" name="nombre" class="form-control" placeholder="Nombre de asignaturas">
                  @error('nombre')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                  @enderror
              </div>
              <div class="form-group">
                <label>Profesor</label>
                <select class="form-control" name="profesor">
                    @foreach($profesor as $profesores)
                        <option value="{{ $profesores->id }}">{{ $profesores->nombre }}</option>
                    @endforeach
                </select>
                 @error('profesor')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                  @enderror
              </div>
               <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
       
      </div>
    </div>
  </div>
</div>