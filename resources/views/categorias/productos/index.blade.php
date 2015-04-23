@extends('app')

@section('content')
	@parent

	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="page-header">
					<h3>
						{{$categoria->nombre}}
						<small>
							{{$productos->total()}} productos
						</small>
						<a href="{{route('categorias.productos.create', ['categorias'=>$categoria->id])}}" class="btn btn-sm btn-primary pull-right">
							Nuevo
						</a>
					</h3>
				</div>
			</div>
			@forelse ($productos as $producto)
				@include('productos.producto', ['categoria'=>$categoria, 'producto'=>$producto])
			@empty
				<div class="col-xs-12">
					<div class="alert alert-info">
						No hay productos en la categoria.
					</div>
				</div>
			@endforelse
		</div>
		<div class="row">
			<div class="col-xs-12">
				{!!$productos->render()!!}
			</div>
		</div>
	</div>
@endsection
