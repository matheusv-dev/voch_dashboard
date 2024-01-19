@extends('layouts.main')
<link rel="stylesheet" href="/css/unidades.css">

@section('title', $pagina)
@section('icone', $icone)
@section('pagina', $pagina)
@section('content')

@include('layouts.header', ['paginas' => $paginas])

<div class="container-chart oculto" id="container-chart" style="width: 600px"><canvas id="chartNotas"></canvas></div>
<div class="container-table">
  <div class="container-search">
    <button class="btn-padrao" type="button" onclick="toggleGrafico()">Exibir Grafico</button>
  </div>
  <table>
    <thead>
      <tr>
        <th>Nome</th>
        <th>Cargo</th>
        <th>CPF</th>
        <th>E-mail</th>
        <th>Nota Desempenho</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($colaboradores as $colaborador)
      <tr>
        <td>{{ $colaborador->nome }} <br><span>Unidade: {{ $colaborador->nome_fantasia }}</span></td>
        <td>{{ $colaborador->cargo }}</td>
        <td>{{ $colaborador->cpf }}</td>
        <td>{{ $colaborador->email }}</td>
        <td>{{ $colaborador->nota_desempenho }}</td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.1/dist/chart.umd.min.js"></script>
<script>
  function toggleGrafico() {

    var divChart = document.getElementById('container-chart')
    divChart.classList.toggle('oculto')
    event.target.innerText = divChart.classList.contains('oculto') ? "Exibir Grafico" : "Oculta Grafico";
  }

  const dataNotas = @json($TotalPorNotas);

  const chartNotas = new Chart(
    document.getElementById('chartNotas'), {
    type: 'bar',
    data: {
      labels: dataNotas.map(row => `Nota: ${row.nota_desempenho}`),
      datasets: [{
        label: 'Total de colaboradores com a nota de desempenho',
        data: dataNotas.map(row => row.total),
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)',
          'rgba(255, 159, 64, 0.2)',
          'rgba(255, 205, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(201, 203, 207, 0.2)'
        ],
      }],

    },

  });
</script>
@endsection