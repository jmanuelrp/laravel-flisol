@extends('app')

@section('content')
	@parent

	<div class="container">
	{!! Form::open(array('route' => ['categorias.productos.store', $categoria->id], 'method' => 'POST', 'class' => 'form-horizontal')) !!}

		<div class="form-group">
			{!! Form::label('nombre', 'Nombre', ['class'=>'col-sm-2 control-label']) !!}
			<div class="col-sm-10">
				{!! Form::text('nombre', null, ['class'=>'form-control']) !!}
			</div>
		</div>
		<div class="form-group">
			{!! Form::label('stock', 'Stock', ['class'=>'col-sm-2 control-label']) !!}
			<div class="col-sm-10">
				{!! Form::text('stock', null, ['class'=>'form-control']) !!}
			</div>
		</div>
		<div class="form-group">
			{!! Form::label('precio', 'Precio', ['class'=>'col-sm-2 control-label']) !!}
			<div class="col-sm-10">
				{!! Form::text('precio', null, ['class'=>'form-control']) !!}
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-success">Registrar</button>
				<a href="{{route('categorias.productos.index', ['categorias'=>$categoria->id])}}" class="btn btn-default">Cancelar</a>
			</div>
		</div>

		<div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      
	    </div>
	  </div>
	

	{!! Form::close() !!}
	</div>

@endsection
