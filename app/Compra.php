<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Compra extends Model {

	protected $table = 'compras';

	protected $fillable = ['total'];

	public function productos()
	{
		return $this->belongsToMany('App\Producto', 'producto_compra', 'producto_id', 'compra_id');
	}

}
