@extends('app')

@section('content')
	@parent

<div class="container">
	@foreach ($categorias as $categoria)
		<div class="row">
			<div class="col-xs-12">
				<div class="page-header">
					<h3>
						<a href="{{route('categorias.productos.show', ['categorias'=>$categoria->id])}}">
							{{$categoria->nombre}}
						</a>
					</h3>
				</div>
			</div>
		</div>
		<div class="row">
			@forelse ($categoria->productos as $producto)
				@include('productos.producto', ['categoria'=>$categoria, 'producto'=>$producto])
			@empty
				<div class="col-xs-12">
					<div class="alert alert-info">
						No hay productos nuevos.
					</div>
				</div>
			@endforelse
		</div>
	@endforeach
</div>
@endsection
