<?php

use Illuminate\Database\Seeder;
use App\Fabric;
use Faker\Factory as Faker;

class FabricSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Creamos una instancia de Faker
		$faker = Faker::create();

		// Creamos un bucle para cubrir 5 fabricantes:
		for ($i=0; $i<4; $i++)
		{
			// Cuando llamamos al método create del Modelo Fabricante 
			// se está creando una nueva fila en la tabla.
			Fabric::create(
				[
					'nombre'=>$faker->company(),
					'email'=>$faker->email(),
					'telefono'=>$faker->randomNumber(9)	// de 9 dígitos como máximo.
				]
			);
		}
    }
}
