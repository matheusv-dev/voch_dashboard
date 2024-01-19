<?php

namespace App\Http\Controllers;

use App\CargoColaborador;
use App\Cargo;
use App\Colaborador;
use Illuminate\Http\Request;

class CargoColaboradorController extends Controller
{
  public function avaliacao($id)
  {
    $colaborador = Colaborador::findOrFail($id);
    $avaliacao = CargoColaborador::findOrFail($id);

    $params = [
      "time" => date("d/m/Y H:i:s"),
      "icone" => 'bi bi-person-vcard',
      "pagina" => 'Colaboradores',
      "rotaVoltar" => '/colaboradores',
      "paginas" => [
        [
          "pagina" => 'Colaboradores',
          "urlPagina" => '/colaboradores',
        ],
        [
          "pagina" => 'Avaliação',
          "urlPagina" => '/colaboradores/avaliacao/' . $id,
        ],
      ],
      "maxRadio" => 11,
      "colaborador" => $colaborador,
      "avaliacao" => $avaliacao
    ];

    return view('colaboradores.avaliacao', $params);
  }

  public function update(Request $request)
  {
    CargoColaborador::findOrfail($request->id)->update($request->all());
    return redirect('/colaboradores/avaliacao/' . $request->id)->with('msg', 'Colaborador editado com sucesso.');
  }
}
