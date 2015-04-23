<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Categoria;
use App\Producto;

use Illuminate\Http\Request;

class ProductosCategoria extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index($categoria_id)
	{
		$categoria = Categoria::findOrFail($categoria_id);
		$productos = Producto::where('categoria_id', $categoria_id)->paginate(3);

		return view('categorias.productos.index', compact('categoria', 'productos'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create($categoria_id)
	{
		$categoria = Categoria::findOrFail($categoria_id);

		return view('categorias.productos.create', compact('categoria'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(Request $request, $categoria_id)
	{
		$categoria = Categoria::findOrFail($categoria_id);

		$this->validate($request, Producto::$rules);

		$producto = new Producto($request->all());

		$categoria->productos()->save($producto);

		return redirect()
			->route('categorias.productos.show', ['categorias'=>$categoria_id, 'productos'=>$producto->id])
			->with('message', 'Producto actualizado exitosamente');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($categoria_id, $id)
	{
		$producto = Producto::where('categoria_id', $categoria_id)->findOrFail($id);
		$categoria = $producto->categoria;

		return view('categorias.productos.show', compact('categoria', 'producto'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($categoria_id, $id)
	{
		$producto = Producto::where('categoria_id', $categoria_id)->findOrFail($id);
		$categoria = $producto->categoria;

		return view('categorias.productos.edit', compact('categoria', 'producto'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request, $categoria_id, $id)
	{
		$producto = Producto::where('categoria_id', $categoria_id)->findOrFail($id);

		$this->validate($request, Producto::$rules);

		$producto->update($request->all());

		return redirect()
			->route('categorias.productos.show', ['categorias'=>$categoria_id, 'productos'=>$id])
			->with('message', 'Producto actualizado exitosamente');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($categoria_id, $id)
	{
		$producto = Producto::where('categoria_id', $categoria_id)->findOrFail($id);

		$producto->delete();

		return redirect()
			->route('categorias.productos.index', ['categorias'=>$categoria_id])
			->with('message', 'Producto eliminado exitosamente');
	}

}
