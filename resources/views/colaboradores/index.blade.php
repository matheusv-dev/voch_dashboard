@extends('layouts.main')

<link rel="stylesheet" href="/css/unidades.css">

@section('title', $pagina)

@section('icone', $icone)
@section('pagina', $pagina)
@section('total', count($colaboradores))

@section('content')

@include('layouts.header', ['paginas' => $paginas])


<div class="container-table">
  <div class="container-search">
    <form action="/colaboradores" method="GET">
      <label for="search">Pesquisar por: </label>
      <input type="text" name="search" id="search" placeholder="Procurar" value="{{ $search }}">
    </form>
  </div>
  <table>
    <thead>
      <tr>
        <th>Cargo</th>
        <th>Nome</th>
        <th>CPF</th>
        <th>E-mail</th>
        <th>Opções</th>
      </tr>
    </thead>
    <tbody>
      @if(count($colaboradores) > 0)
      @foreach ($colaboradores as $colaborador)
      <tr>
        <td>{{ $colaborador->cargo }}</td>
        <td>{{ $colaborador->nome }} <br><span>Unidade: {{ $colaborador->nome_fantasia }}</span></td>
        <td>{{ $colaborador->cpf }}</td>
        <td>{{ $colaborador->email }}</td>
        <td>
          <div class="opcoes">
            <a class="editar" href="/colaboradores/avaliacao/{{ $colaborador->id }}" title="Avaliação"><i
                class="bi bi-person-lines-fill" style="color: var(--blue-700);"></i></i></a>
            <a class="editar" href="/colaboradores/edit/{{ $colaborador->id }}" title="Editar"><i
                class="bi bi-pencil-square" style="color: var(--yellow-500);"></i></a>
            <form action="/colaboradores/{{ $colaborador->id }}" method="POST">
              @csrf
              @method('DELETE')
              <button type="submit"><i class="bi bi-trash-fill" style="color: var(--red-500);"
                  title="Deletar"></i></button>
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