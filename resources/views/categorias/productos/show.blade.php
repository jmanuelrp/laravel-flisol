@extends('app')

@section('content')
	@parent

	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="page-header">
					<h2>{{$producto->nombre}}</h2>
				</div>
			</div>
		</div>
		<div class="row">

			<div class="col-sm-6">
				<div class="thumbnail">
					<img src="{{$producto->imagen}}" alt="{{$producto->nombre}}">
				</div>
			</div>
			<div class="col-sm-6">
				<ul class="list-unstyled">
					<li>
						<b>Categoria:</b>
						<a href="{{route('categorias.productos.index', ['categorias'=>$producto->categoria_id])}}">
							{{$categoria->nombre}}
						</a>
					</li>
					<li>
						<b>Precio:</b> {{$producto->precio}}
					</li>
					<li>
						<b>Stock:</b> {{$producto->stock}}
					</li>
				</ul>
				{!! Form::open(array('route' => ['categorias.productos.destroy', $categoria->id, $producto->id], 'method' => 'DELETE', 'class' => 'form-horizontal')) !!}
					<div class="btn-group btn-group-sm">
						<a href="{{route('categorias.productos.edit', ['categorias'=>$producto->categoria_id, 'productos'=>$producto->id])}}" class="btn btn-default">Editar</a>
						<button type="submit" class="btn btn-danger">Eliminar</button>
					</div>
				{!! Form::close() !!}
			</div>

		</div>
	</div>
@stop