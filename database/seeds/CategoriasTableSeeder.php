<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class CategoriasTableSeeder extends Seeder {

	public function run()
	{
		$faker = Faker::create();

		for ($i=0; $i < 3; $i++) { 
			\DB::table('categorias')->insert([
				'nombre' => $faker->word()
			]);
		}
	}

}