@extends('layouts.main')

<link rel="stylesheet" href="/css/unidades.css">

@section('title', $pagina)

@section('icone', $icone)
@section('pagina', $pagina)
@section('total', count($cargos))

@section('content')

@include('layouts.header', ['paginas' => $paginas])


<div class="container-table">
  <div class="container-search">
    <form action="/cargos" method="GET">
      <label for="search">Pesquisar por: </label>
      <input type="text" name="search" id="search" placeholder="Procurar" value="{{ $search }}">
    </form>
  </div>
  <table>
    <thead>
      <tr>
        <th>Cargo</th>
        <th>Opções</th>
      </tr>
    </thead>
    <tbody>
      @if(count($cargos) > 0)
      @foreach ($cargos as $cargo)
      <tr>
        <td>{{ $cargo->cargo }}</td>
        <td>
          <div class="opcoes">
            <a class="editar" href="/cargos/edit/{{ $cargo->id }}"><i class="bi bi-pencil-square" style="color: var(--yellow-500);"></i></a>
            <form action="/cargos/{{ $cargo->id }}" method="POST">
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