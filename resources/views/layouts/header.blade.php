<div class="container-header">
  <header>
    <i class="@yield('icone')"></i>
    @if(isset($total))
    <div class="titulo">@yield('pagina') <span>(@yield('total'))</span></div>
    @else
    <div class="titulo">@yield('pagina')</div>
    @endif
    <div class="container-btn">
      @if(isset($rotaRelatorio))
      <button type="button" class="relatorio" title="Relatorio"><a target="_blank" href="{{ $rotaRelatorio }}"><i class="bi bi-file-earmark-pdf-fill"></i></a></button>
      @endif

      @if(isset($rotaAdicionar))
      <button type="button" class="adicionar" title="Adicionar"><a href="{{ $rotaAdicionar }}"><i class="bi bi-plus-lg"></i></a></button>
      @endif

      @if(isset($rotaVoltar))
      <button class="voltar"><a href="{{ $rotaVoltar }}" title="Voltar"><i class="bi bi-arrow-left"></i></a></button>
      @endif
    </div>
  </header>

  <div class="subheader">
    <a href="/">Inicio</a>
    @foreach ($paginas as $page)
    <i class="bi bi-arrow-right"></i>
    <a href="{{ $page['urlPagina'] }}">{{ $page['pagina'] }}</a>
    @endforeach
  </div>
</div>