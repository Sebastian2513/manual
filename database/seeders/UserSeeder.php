<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        try {
            User::query()->create([
                'name' => 'wilke',
                'email' => 'admin@wilke.de',
                'password' => bcrypt('iVbU3qjgLfxkybRdZ72f'),
            ]);
        }catch (\Exception $exception)
        {
            echo  $exception->getMessage();
        }
    }
}
