<div class="col-sm-6 col-md-4">
	<div class="thumbnail">
		<img src="{{$producto->imagen}}" alt="{{$producto->nombre}}">
		<div class="caption">
			<p><a href="{{route('categorias.productos.show', ['categorias'=>$categoria->id, 'productos'=>$producto->id])}}">
				{{$producto->nombre}}
			</a></p>
		</div>
	</div>
</div>
