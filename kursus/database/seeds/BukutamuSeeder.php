<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class BukutamuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker::create();
    	foreach (range(1,10) as $index) {
	        DB::table('bukutamus')->insert([
	            'nama' => $faker->name,
	            'alamat' => $faker->address,
	            'jenis_kelamin' => "pria",
                'notel' => $faker->phonenumber,
                'foto' => "tes.jpg"
	        ]);
        }
    }
}
