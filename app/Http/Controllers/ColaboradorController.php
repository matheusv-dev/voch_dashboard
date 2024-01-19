<?php

namespace App\Http\Controllers;

use App\Cargo;
use App\CargoColaborador;
use App\Colaborador;
use App\Unidade;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;

class ColaboradorController extends Controller
{
    public function index()
    {
        $params = [
            "time" => date("d/m/Y H:i:s"),
            "icone" => 'bi bi-person-vcard',
            "pagina" => 'Colaboradores',
            "rotaAdicionar" => 'colaboradores/create',
            "rotaRelatorio" => 'colaboradores/relatorio',
            "paginas" => [
                [
                    "pagina" => 'Colaboradores',
                    "urlPagina" => '/colaboradores',
                ],
            ],
        ];

        $search = request("search");
        $colaborador = [];

        if ($search) {
            $colaborador = Colaborador::query()
                ->join('cargo_colaborador', 'colaboradores.id', '=', 'cargo_colaborador.colaborador_id')
                ->join('cargos', 'cargo_colaborador.cargo_id', '=', 'cargos.id')
                ->join('unidades', 'colaboradores.unidade_id', '=', 'unidades.id')
                ->where('nome', 'like', '%' . $search . '%')
                ->orWhere('cpf', 'like', '%' . $search . '%')
                ->orWhere('email', 'like', '%' . $search . '%')
                ->orWhere('cargos.cargo', 'like', '%' . $search . '%')
                ->orderBy('nome', 'DESC')
                ->get();
        } else {
            $colaborador = Colaborador::query()
                ->join('cargo_colaborador', 'colaboradores.id', '=', 'cargo_colaborador.colaborador_id')
                ->join('cargos', 'cargo_colaborador.cargo_id', '=', 'cargos.id')
                ->join('unidades', 'colaboradores.unidade_id', '=', 'unidades.id')
                ->orderBy('nome', 'DESC')
                ->get();
        }

        foreach ($colaborador as $key => $value) {
            $colaborador[$key]->cpf = self::formatCnpjCpf($value->cpf);
        }

        $params['colaboradores'] = $colaborador;
        $params['search'] = $search;

        return view('colaboradores.index', $params);
    }

    public function create()
    {
        $params = [
            "time" => date("d/m/Y H:i:s"),
            "icone" => 'bi bi-person-vcard',
            "pagina" => 'Adicionar Colaborador',
            "rotaVoltar" => 'colaboradores',
            "paginas" => [
                [
                    "pagina" => 'Colaboradores',
                    "urlPagina" => '/colaboradores',
                ],
                [
                    "pagina" => 'Adicionar',
                    "urlPagina" => '/colaboradores/create',
                ],
            ],
            'colaborador' => [],
            'listaUnidades' => Unidade::all()->sortBy('nome', SORT_ASC),
            'listaCargos' => Cargo::all()->sortBy('cargo', SORT_ASC),
        ];

        return view('colaboradores.create', $params);
    }

    public function store(Request $request)
    {
        $Colaborador = new Colaborador();
        $Colaborador->cpf = $request->cpf;
        $Colaborador->nome = $request->nome;
        $Colaborador->email = $request->email;
        $Colaborador->unidade_id = $request->unidade_id;

        $Colaborador->save();

        $CargoColaborador = new CargoColaborador();
        $CargoColaborador->cargo_id = $request->cargo_id;
        $CargoColaborador->colaborador_id = $Colaborador->id;

        return redirect('/colaboradores');
    }
    public function edit($id)
    {
        $colaborador = Colaborador::findOrFail($id);
        $colaborador['cargo_id'] = (CargoColaborador::query()->where('colaborador_id', "=", $id)->get('cargo_id')->first()->toArray())['cargo_id'];

        $params = [
            "time" => date("d/m/Y H:i:s"),
            "icone" => 'bi bi-houses-fill',
            "pagina" => 'Editar Colaborador',
            "rotaVoltar" => '/colaboradores',
            "paginas" => [
                [
                    "pagina" => 'Colaborador',
                    "urlPagina" => '/colaboradores',
                ],
                [
                    "pagina" => 'Editar',
                    "urlPagina" => '/colaboradores/change',
                ],
            ],
            'colaborador' => $colaborador,
            'listaUnidades' => Unidade::all()->sortBy('nome', SORT_ASC),
            'listaCargos' => Cargo::all()->sortBy('cargo', SORT_ASC),
        ];

        return view('colaboradores.edit', $params);
    }

    public function update(Request $request)
    {
        $arrayColaborador = [
            "nome" => $request->nome,
            "cpf" => $request->cpf,
            "email" => $request->email,
            "unidade_id" => $request->unidade_id,
        ];

        Colaborador::findOrfail($request->id)->update($arrayColaborador);
        CargoColaborador::query()->where('colaborador_id', "=", $request->id)->get()->first()->update(["cargo_id" => $request->cargo_id]);

        return redirect('/colaboradores/edit/' . $request->id)->with('msg', 'Colaborador editado com sucesso.');
    }

    public function destroy($id)
    {
        Colaborador::findOrFail($id)->delete();

        return redirect('/colaboradores')->with('msg', 'Colaborador excluido com sucesso.');
    }

    public function ranking()
    {
        $listaColaborador = Colaborador::all()->sortBy('nota_desempenho', SORT_ASC);

        /**
         * 1 - Grafico quantitativo por notas (pizza)
         * 2 - Lista Ordenada por notas (maior > menor)
         */

        $TotalPorNotas = CargoColaborador::query()->select(DB::raw('DISTINCT (nota_desempenho), count(nota_desempenho) as total'))->groupBy('nota_desempenho')->get()->toArray();

        $colaborador = Colaborador::query()
            ->join('cargo_colaborador', 'colaboradores.id', '=', 'cargo_colaborador.colaborador_id')
            ->join('cargos', 'cargo_colaborador.cargo_id', '=', 'cargos.id')
            ->join('unidades', 'colaboradores.unidade_id', '=', 'unidades.id')
            ->orderBy('nota_desempenho', 'DESC')->get();

        foreach ($colaborador as $key => $value) {
            $colaborador[$key]->cpf = self::formatCnpjCpf($value->cpf);
        }

        $params = [
            "time" => date("d/m/Y H:i:s"),
            "icone" => 'bi bi-trophy-fill',
            "pagina" => 'Ranking',
            "rotaRelatorio" => 'ranking/relatorio',
            "paginas" => [
                [
                    "pagina" => 'Ranking',
                    "urlPagina" => '/ranking',
                ],
            ],
            "listaColaborador" => $listaColaborador,
            "TotalPorNotas" => $TotalPorNotas,
            "colaboradores" => $colaborador
        ];


        return view('ranking.index', $params);
    }

    public function relatorio()
    {
        Pdf::setOption(['dpi' => 150, 'defaultFont' => 'sans-serif']);

        $colaborador = Colaborador::query()
            ->join('cargo_colaborador', 'colaboradores.id', '=', 'cargo_colaborador.colaborador_id')
            ->join('cargos', 'cargo_colaborador.cargo_id', '=', 'cargos.id')
            ->join('unidades', 'colaboradores.unidade_id', '=', 'unidades.id')
            ->orderBy('nome', 'ASC')->get();

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
                <h2 style='text-align: center; font-size: 16px;'>Relatório de Colaboradores</h2>
                <table class='tg'>
                    <thead>
                    <tr>
                        <th class='tg-wo29' style='text-align:center;'>Nome</th>
                        <th class='tg-wo29' style='text-align:center;'>CPF</th>
                        <th class='tg-wo29' style='text-align:center;'>E-mail</th>
                        <th class='tg-wo29' style='text-align:center;'>Unidade</th>
                        <th class='tg-wo29' style='text-align:center;'>Cargo</th>
                    </tr>
                    </thead>
                    <tbody>
                    ";
        foreach ($colaborador as $key => $value) {
            $colaborador[$key]->cpf = self::formatCnpjCpf($value->cpf);
            $html .= "<tr>
                        <td class='tg-wo29' style='text-align: center'>{$value->nome}</td>
                        <td class='tg-wo29' style='text-align: center'>{$value->cpf}</td>
                        <td class='tg-wo29' style='text-align: center'>{$value->email}</td>
                        <td class='tg-wo29' style='text-align: center'>{$value->nome_fantasia}</td>
                        <td class='tg-wo29' style='text-align: center'>{$value->cargo}</td>
                    </tr>";
        }


        $html .= "
                    </tbody>
                </table>";




        $pdf = App::make('dompdf.wrapper');
        $pdf->loadHTML($html);
        return $pdf->stream();
    }

    public function relatorioRanking()
    {
        $colaborador = Colaborador::query()
            ->join('cargo_colaborador', 'colaboradores.id', '=', 'cargo_colaborador.colaborador_id')
            ->join('cargos', 'cargo_colaborador.cargo_id', '=', 'cargos.id')
            ->join('unidades', 'colaboradores.unidade_id', '=', 'unidades.id')
            ->orderBy('nota_desempenho', 'DESC')->get();

        $html = "
        <style type='text/css'>
            .tg  {border-collapse:collapse;border-spacing:0;width: 100%}
            .tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:10px;overflow:hidden;padding:10px 5px;word-break:normal;}
            .tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:10px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
            .tg .tg-wo29{border-color:#c0c0c0;text-align:left;vertical-align:top}
            p{margin: 5px 0}
        </style>
        <h2 style='text-align: center; font-size: 16px;'>Relatório de Colaboradores</h2>
        <table class='tg'>
            <thead>
            <tr>
                <th class='tg-wo29' style='text-align:center;'>Nome</th>
                <th class='tg-wo29' style='text-align:center;'>E-mail/CPF</th>
                <th class='tg-wo29' style='text-align:center;'>Unidade/Cargo</th>
                <th class='tg-wo29' style='text-align:center;'>Desempenho</th>
            </tr>
            </thead>
            <tbody>
            ";
        foreach ($colaborador as $key => $value) {
            $colaborador[$key]->cpf = self::formatCnpjCpf($value->cpf);

            $html .= "<tr>
                        <td class='tg-wo29' style='text-align: center'>{$value->nome} </td>
                        <td class='tg-wo29' style='text-align: center'>{$value->email} <br> <span>CPF: {$value->cpf}</span></td>
                        <td class='tg-wo29' style='text-align: center'>{$value->nome_fantasia} <br><span>Cargo: {$value->cargo}</span></td>
                        <td class='tg-wo29' style='text-align: center'>{$value->nota_desempenho}</span></td>
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
