<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use App\Bukutamu as M_bukutamu;
use App\Bukutamu;

class BukutamuapiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        // Bukutamu::all();
        // $bukutamu = Bukutamu::paginate(5);
        // return response()->json($bukutamu->withPath('http://localhost:8000/bukutamufrontend'));
        return response()->json(Bukutamu::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //

        // $tablebukutamu = new Bukutamu();
        // $tablebukutamu->nama        = $request->nama;
        // $tablebukutamu->notel       = $request->notel;
        // $tablebukutamu->foto        = $request->file('foto')->getClientOriginalName();
        // $tablebukutamu->alamat      = $request->alamat;
        // //$tablebukutamu->email      = $request->email;
        // $tablebukutamu->jenis_kelamin     = $request->jenis_kelamin;
        // $tablebukutamu->save();
        // $request->file('foto')->move(public_path().'/img/', $request->file('foto')->getClientOriginalName());
        
        Bukutamu::create([
            'nama'          => $request->nama,
            'alamat'        => $request->alamat,
            'jenis_kelamin' => $request->jenis_kelamin,
            'notel'         => $request->notel,
            'foto'          => $request->file('foto')->getClientOriginalName()
        ]);

        $request->file('foto')->move(public_path().'/img/', $request->file('foto')->getClientOriginalName());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
