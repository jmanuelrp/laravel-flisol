<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductoCompraTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('producto_compra', function(Blueprint $table) {
			$table->increments('id');
			$table->integer('producto_id')->unsigned();
			$table->integer('compra_id')->unsigned();
			$table->integer('cantidad');
			$table->float('precio');

			$table->foreign('producto_id')->references('id')->on('productos')
						->onDelete('restrict')
						->onUpdate('restrict');

			$table->foreign('compra_id')->references('id')->on('compras')
						->onDelete('cascade')
						->onUpdate('no action');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('producto_compra');
	}

}
