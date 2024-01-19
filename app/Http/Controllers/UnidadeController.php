<?php

namespace App\Http\Controllers;

use App\Colaborador;
use Illuminate\Http\Request;
use App\Unidade;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\App;

class UnidadeController extends Controller
{
    public function index()
    {
        $params = [
            "time" => date("d/m/Y H:i:s"),
            "icone" => 'bi bi-houses-fill',
            "rotaAdicionar" => "unidades/create",
            "rotaRelatorio" => 'unidades/relatorio',
            "pagina" => 'Unidades',
            "paginas" => [
                [
                    "pagina" => 'Unidades',
                    "urlPagina" => '/unidades',
                ],
            ],
        ];

        $search = request("search");
        $unidades = [];

        if ($search) {
            $unidades = Unidade::query()
                ->where('nome_fantasia', 'like', '%' . $search . '%')
                ->orWhere('razao_social', 'like', '%' . $search . '%')
                ->orWhere('cnpj', 'like', '%' . $search . '%')
                ->get()->sortBy('nome_fantasia', SORT_ASC);
        } else {
            $unidades = Unidade::all()->sortBy('nome_fantasia', SORT_ASC);
        }

        foreach ($unidades as $key => $value) {
            $unidades[$key]->cnpj = self::formatCnpjCpf($value->cnpj);
            $unidades[$key]->total = count(Colaborador::query()->where([['unidade_id', 'like',  $value->id]])->get());
        }

        $params['unidades'] = $unidades;
        $params['search'] = $search;

        return view('unidades.index', $params);
    }

    public function create()
    {

        $params = [
            "time" => date("d/m/Y H:i:s"),
            "icone" => 'bi bi-houses-fill',
            "pagina" => 'Adicionar Unidade',
            "paginas" => [
                [
                    "pagina" => 'Unidades',
                    "urlPagina" => '/unidades',
                ],
                [
                    "pagina" => 'Adicionar',
                    "urlPagina" => '/unidades/create',
                ],
            ],
            'unidade' => [],
        ];

        return view('unidades.create', $params);
    }

    public function store(Request $request)
    {
        $Unidade  = new Unidade();
        $Unidade->cnpj = $request->cnpj;
        $Unidade->razao_social = $request->razao_social;
        $Unidade->nome_fantasia = $request->nome_fantasia;

        $Unidade->save();

        return redirect('/unidades');
    }

    public function destroy($id)
    {
        Unidade::findOrFail($id)->delete();

        return redirect('/unidades')->with('msg', 'Unidade excluida com sucesso.');
    }

    public function edit($id)
    {
        $unidade = Unidade::findOrFail($id);

        $params = [
            "time" => date("d/m/Y H:i:s"),
            "icone" => 'bi bi-houses-fill',
            "pagina" => 'Editar Unidade',
            "paginas" => [
                [
                    "pagina" => 'Unidades',
                    "urlPagina" => '/unidades',
                ],
                [
                    "pagina" => 'Editar',
                    "urlPagina" => '/unidades/change',
                ],
            ],
            'unidade' => $unidade
        ];

        return view('unidades.edit', $params);
    }

    public function update(Request $request)
    {
        Unidade::findOrfail($request->id)->update($request->all());

        return redirect('/unidades')->with('msg', 'Unidade editado com sucesso.');
    }

    public function relatorio()
    {
        Pdf::setOption(['dpi' => 150, 'defaultFont' => 'sans-serif']);

        $unidades = Unidade::all()->sortBy('nome_fantasia', SORT_ASC);
        $html = "
                <style type='text/css'>
                .tg  {border-collapse:collapse;border-spacing:0;width: 100%}
                .tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:10px;
                    overflow:hidden;padding:10px 5px;word-break:normal;}
                .tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:10px;
                    font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
                .tg .tg-wo29{border-color:#c0c0c0;text-align:left;vertical-align:top}
                p{margin: 5px 0}
                </style>
                <h2 style='text-align: center; font-size: 16px;'>Total de Colaboradores por Unidade</h2>
                <table class='tg'>
                    <thead>
                    <tr>
                        <th class='tg-wo29' style='text-align:center;'>Nome Fantasia</th>
                        <th class='tg-wo29' style='text-align:center;'>Razão Social</th>
                        <th class='tg-wo29' style='text-align:center;'>CNPJ</th>
                        <th class='tg-wo29' style='text-align:center;'>Total Colaboradores</th>
                    </tr>
                    </thead>
                    <tbody>
                    ";
        foreach ($unidades as $key => $value) {
            $unidades[$key]->cnpj = self::formatCnpjCpf($value->cnpj);
            $unidades[$key]->total = count(Colaborador::query()->where([['unidade_id', 'like',  $value->id]])->get());

            $html .= "<tr>
                        <td class='tg-wo29' style='text-align: center'>{$value->nome_fantasia}</td>
                        <td class='tg-wo29' style='text-align: center'>{$value->razao_social}</td>
                        <td class='tg-wo29' style='text-align: center'>{$value->cnpj}</td>
                        <td class='tg-wo29' style='text-align: center'>{$value->total}</td>
                    </tr>";
        }

        $html .= "
                    </tbody>
                </table>";

        $pdf = App::make('dompdf.wrapper');
        $pdf->loadHTML($html);
        return $pdf->stream();
    }
}
