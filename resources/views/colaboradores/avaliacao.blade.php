@extends('layouts.main')

<link rel="stylesheet" href="/css/unidades.css">
<link rel="stylesheet" href="/css/avaliacao.css">

@section('title', $pagina)

@section('icone', $icone)
@section('pagina', $pagina)

@section('content')

@include('layouts.header', ['paginas' => $paginas])


<div class="container-form">
  <form action="/colaboradores/avaliacao/update/{{ $colaborador->id }}" method="POST">
    @csrf
    @method('PUT')

    <div class="radio-input">
      @for($i = 0; $i < $maxRadio; $i++) 
      @php 
        $checked=""; 
        if(isset($avaliacao->nota_desempenho))
        $checked = $avaliacao->nota_desempenho == $i ? 'checked' : '';
        @endphp
        <label>
          <input value="{{ $i }}" name="nota_desempenho" id="value-{{ $i }}" type="radio" {{ $checked }}>
          <span>{{ $i }}</span>
        </label>
        @endfor
        <span class="selection"></span>
    </div>

    <footer>
      <button class="btn-padrao" type="submit">Salvar</button>
    </footer>
  </form>
</div>

@endsection