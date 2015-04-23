<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Categoria;

use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Request;
// use Request;

class Categorias extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$categorias = Categoria::with(['productos' => function($query) {
			$query
				->orderBy('created_at', 'desc')
				->take(5);
		}])->get();

		return view('categorias.index', compact('categorias'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('categorias.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(Request $request)
	{
		$this->validate($request, Categoria::$rules);

		$categoria = Categoria::create($request->all());

		return redirect()
			->route('categorias.show', ['categorias'=>$categoria->id])
			->with('message', 'Categoria creada exitosamente');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$categoria = Categoria::findOrFail($id);

		return view('categorias.show', compact('categoria'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$categoria = Categoria::findOrFail($id);

		return view('categorias.edit', compact('categoria'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request, $id)
	{
		$categoria = Categoria::findOrFail($id);

		$this->validate($request, Categoria::$rules);

		$categoria->update($request->all());

		return redirect()
			->route('categorias.show', ['categorias'=>$categoria->id])
			->with('message', 'Categoria actualizada exitosamente');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$categoria = Categoria::findOrFail($id);

		$categoria->delete();

		return redirect()
			->route('categorias.index')
			->with('message', 'Categoria "'.$categoria->nombre.'" eliminada exitosamente');
	}

}
