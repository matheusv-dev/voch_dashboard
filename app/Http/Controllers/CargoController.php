<?php

namespace App\Http\Controllers;

use App\Cargo;
use Illuminate\Http\Request;

class CargoController extends Controller
{
    public function index()
    {
        $params = [
            "time" => date("d/m/Y H:i:s"),
            "icone" => 'bi bi-gear-fill',
            "pagina" => 'Cargo',
            "rotaAdicionar" => 'cargos/create',
            "paginas" => [
                [
                    "pagina" => 'Cargo',
                    "urlPagina" => 'cargos',
                ],
            ],

        ];

        $search = request("search");
        $cargo = [];

        if ($search) {
            $cargo = Cargo::query()->where('cargo', 'like', '%' . $search . '%')->get()->sortBy('cargo', SORT_ASC);
        } else {
            $cargo = Cargo::all()->sortBy('cargo', SORT_ASC);
        }

        $params['cargos'] = $cargo;
        $params['search'] = $search;

        return view('cargos.index', $params);
    }

    public function create()
    {
        $params = [
            "time" => date("d/m/Y H:i:s"),
            "icone" => 'bi bi-gear-fill',
            "pagina" => 'Adicionar Cargo',
            "rotaVoltar" => '/cargos',
            "paginas" => [
                [
                    "pagina" => 'Cargos',
                    "urlPagina" => '/cargos',
                ],
                [
                    "pagina" => 'Adicionar',
                    "urlPagina" => '/cargos/create',
                ],
            ],
            'cargo' => []
        ];

        return view('cargos.create', $params);
    }

    public function store(Request $request)
    {
        $cargo  = new Cargo();
        $cargo->cargo = $request->cargo;

        $cargo->save();

        return redirect('/cargos');
    }
    public function edit($id)
    {
        $cargo = Cargo::findOrFail($id);

        $params = [
            "time" => date("d/m/Y H:i:s"),
            "icone" => 'bi bi-houses-fill',
            "pagina" => 'Editar Cargo',
            "rotaVoltar" => '/cargos',
            "paginas" => [
                [
                    "pagina" => 'Cargo',
                    "urlPagina" => '/cargos',
                ],
                [
                    "pagina" => 'Editar',
                    "urlPagina" => '/cargos/edit/' . $id,
                ],
            ],
            'cargo' => $cargo
        ];

        return view('cargos.edit', $params);
    }

    public function update(Request $request)
    {
        Cargo::findOrfail($request->id)->update($request->all());

        return redirect('/cargos')->with('msg', 'Cargo editado com sucesso.');
    }

    public function destroy($id)
    {
        Cargo::findOrFail($id)->delete();

        return redirect('/cargos')->with('msg', 'Cargo excluido com sucesso.');
    }
}
