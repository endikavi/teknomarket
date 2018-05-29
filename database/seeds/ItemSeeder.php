<?php

use Illuminate\Database\Seeder;
use App\Fabric;
use App\Item;
use Faker\Factory as Faker;
class ItemSeeder extends Seeder
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

		// Para cubrir los aviones tenemos que tener en cuanta qué fabricantes tenemos.
		// Para que la clave foránea no nos de problemas.
		// Averiguamos cuantos fabricantes hay en la tabla.
		$cuantos= Fabric::all()->count();

		// Creamos un bucle para cubrir 20 aviones:
		for ($i=0; $i<19; $i++)
		{
			// Cuando llamamos al método create del Modelo Avion 
			// se está creando una nueva fila en la tabla.
			Item::create(
				[
				 'modelo'=>$faker->word(),
				 'precio'=>$faker->randomNumber(3),
				 'oferta'=>$faker->randomNumber(2),	// de 3 dígitos como máximo.
				 'valoracion'=>$faker->randomNumber(1),	// de 4 dígitos como máximo.
				 'claves'=>$faker->word(),
				 'fabric_id'=>$faker->numberBetween(1,$cuantos),
                 'img'=>$faker->imageUrl(800,450)
				]
			);
		}
    }
}
