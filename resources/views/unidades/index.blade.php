@extends('layouts.main')

<link rel="stylesheet" href="/css/unidades.css">

@section('title', $pagina)
@section('icone', $icone)
@section('pagina', $pagina)
@section('total', count($unidades))

@section('content')

@include('layouts.header', ['paginas' => $paginas, 'rotaAdicionar' => $rotaAdicionar])


<div class="container-table">
  <div class="container-search">
    <form action="/unidades" method="GET">
      <label for="search">Pesquisar por: </label>
      <input type="text" name="search" id="search" placeholder="Procurar" value="{{ $search }}">
    </form>
  </div>
  <table>
    <thead>
      <tr>
        <th>CNPJ</th>
        <th>Nome Fantasia</th>
        <th>Razão Social</th>
        <th>Colaboradores</th>
        <th>Opções</th>
      </tr>
    </thead>
    <tbody>
      @if(count($unidades) > 0)
      @foreach ($unidades as $unidade)
      <tr>
        <td>{{ $unidade->cnpj }}</td>
        <td>{{ $unidade->nome_fantasia }}</td>
        <td>{{ $unidade->razao_social }}</td>
        <td>{{ $unidade->total }}</td>
        <td>
          <div class="opcoes">
            <a class="editar" href="/unidades/edit/{{ $unidade->id }}"><i class="bi bi-pencil-square" style="color: var(--yellow-500);"></i></a>
            <form action="/unidades/{{ $unidade->id }}" method="POST">
              @csrf
              @method('DELETE')
              <button type="submit"><i class="bi bi-trash-fill" style="color: var(--red-500);"></i></button>
            </form>
          </div>
        </td>
      </tr>
      @endforeach
      @else
      <tr>
        @if($search != "")
        <td colspan="5">Não foram encontrados resultados para pesquisa: <strong>{{ $search }}</strong></td>
        @else
        <td colspan="5">Não foram encontrados registros.</td>
        @endif
      </tr>
      @endif
    </tbody>
  </table>
</div>

@endsection