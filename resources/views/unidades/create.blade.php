@extends('layouts.main')

<link rel="stylesheet" href="/css/unidades.css">

@section('title', $pagina)

@section('icone', $icone)
@section('pagina', $pagina)

@section('content')

@include('layouts.header', ['paginas' => $paginas])


<div class="container-form">
  <form action="/unidades" method="POST">
    @csrf
    @include('unidades.form', ['unidade' => $unidade])
    <footer>
      <button class="btn-padrao" type="submit">Salvar</button>
    </footer>
  </form>
</div>

<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js" integrity="sha256-kmHvs0B+OpCW5GVHUNjv9rOmY0IvSIRcf7zGUDTDQM8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js" integrity="sha512-pHVGpX7F/27yZ0ISY+VVjyULApbDlD0/X0rgGbTqCE7WFW5MezNTWG/dnhtbBuICzsd0WQPgpE4REBLv+UqChw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
  $('#cnpj').mask('00.000.000/0000-00', {
    reverse: true
  });
</script>
@endsection