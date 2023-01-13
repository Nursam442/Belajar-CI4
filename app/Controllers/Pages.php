<?php

namespace App\Controllers;



class Pages extends BaseController
{
    public function index()
    {
        // $faker = \Faker\Factory::create();
        // dd($faker->address);
        $data = [
            'title' => 'Home | UnSULBAR'
        ];

        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About | UnSULBAR'
        ];

        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl. abc No 1',
                    'kota' => 'Bandung'
                ],
                [
                    'tipe' => 'Kantor',
                    'alamat' => 'Jl. efg No 2',
                    'kota' => 'Jakarta'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
