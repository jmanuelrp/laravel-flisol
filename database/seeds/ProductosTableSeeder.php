<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ProductosTableSeeder extends Seeder {

	public function run()
	{
		$faker = Faker::create();

		for ($i=0; $i < 25; $i++) { 
			\DB::table('productos')->insert([
				'categoria_id' => $faker->numberBetween(1, 3),
				'nombre'       => $faker->word(),
				'stock'        => $faker->randomNumber(2),
				'precio'       => $faker->randomFloat(2, 1, 1000),
				'imagen'       => $faker->imageUrl()
			]);
		}
	}

}