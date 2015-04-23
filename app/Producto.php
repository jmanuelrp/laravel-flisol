<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model {

	protected $table = 'productos';

	protected $fillable = [
		'nombre',
		'stock',
		'precio'
	];

	public static $rules = [];

	public function categoria()
	{
		return $this->belongsTo('App\Categoria', 'categoria_id');
	}

	public function compras()
	{
		return $this->belongsToMany('App\Compra', 'producto_compra', 'compra_id', 'producto_id');
	}

}
