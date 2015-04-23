<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductosTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('productos', function(Blueprint $table) {
			$table->increments('id');
			$table->integer('categoria_id')->unsigned();
			$table->string('nombre', 200);
			$table->integer('stock')->nullable()->default('0');
			$table->float('precio', 8,2);
			$table->string('imagen');
			$table->timestamps();
			$table->softDeletes();

			$table->foreign('categoria_id')->references('id')->on('categorias')
						->onDelete('restrict')
						->onUpdate('restrict');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('productos');
	}

}
