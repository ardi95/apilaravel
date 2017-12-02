<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Bukutamu;
use GuzzleHttp\Client;
use Illuminate\Pagination\LengthAwarePaginator;

class BukutamuFrontend extends Controller
{
    //
    public function index()
    {
    	# code...
        // return Bukutamu::all();

    	$client    = new Client();
    	$data      = $client->get(env('API_URL').'api/bukutamuapi');

    	$paging    = collect(json_decode($data->getBody()));
        $keyword   = null;

        // pagination
        $currentPage = LengthAwarePaginator::resolveCurrentPage();
        $perPage = 5;
        $currentResults = $paging->slice(($currentPage - 1) * $perPage, $perPage)->all();

        $bukutamu = new LengthAwarePaginator($currentResults, $paging->count(), $perPage);

        return view('dashboard')->with(compact('bukutamu','keyword'));

        // return Bukutamu::paginate(5);

        // return $bukutamu;

    }

    public function store(Request $request)
    {
    	$client = new Client();

    	$data = $client->post(env('Api_Url').'api/bukutamuapi',[
    		'multipart' =>[
    			[
    				"name" => "foto",
    				"contents" => fopen($request->file('foto'), 'r'),
    				"filename" => $request->file('foto')->getClientOriginalName()
    			],
    			[
    				"name" => "nama",
    				"contents" => $request->nama
    			],
    			[
    				"name" => "alamat",
    				"contents" => $request->alamat
    			],
                [
                    "name" => "jenis_kelamin",
                    "contents" => $request->jenis_kelamin
                ],
    			[
    				"name" => "notel",
    				"contents" => $request->notel
    			]
    		]
    	]);
		
		return redirect('dashboard')->with('status','data sudah diubah');

    }
}
