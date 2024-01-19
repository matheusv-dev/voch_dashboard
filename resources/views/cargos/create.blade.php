@extends('layouts.main')

<link rel="stylesheet" href="/css/unidades.css">

@section('title', $pagina)

@section('icone', $icone)
@section('pagina', $pagina)

@section('content')

@include('layouts.header', ['paginas' => $paginas])


<div class="container-form">
  <form action="/cargos" method="POST">
    @csrf
    @include('cargos.form', ['cargo' => $cargo])
    <footer>
      <button class="btn-padrao" type="submit">Salvar</button>
    </footer>
  </form>
</div>
@endsection