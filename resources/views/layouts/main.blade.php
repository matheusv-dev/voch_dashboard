<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
  <meta charset="utf-8">

  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="/css/root.css">
  <link rel="stylesheet" href="/css/globals.css">
  <link rel="stylesheet" href="/css/navbar.css">
  <link rel="stylesheet" href="/css/header.css">

  <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@700&family=Roboto:wght@400;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

  <title>@yield('title')</title>

</head>

<body>
  <div id="root">
    <nav class="navbar">
      <span>Dashboard</span>
      <li><a href="/unidades"><i class="bi bi-houses-fill"></i> Unidades</a></li>
      <li><a href="/colaboradores"><i class="bi bi-person-vcard"></i> Colaboradores</a></li>
      <li><a href="/cargos"><i class="bi bi-gear-fill"></i> Cargos</a></li>
      <li><a href="/ranking"><i class="bi bi-trophy-fill"></i> Ranking</a></li>
    </nav>
    <main>
      @yield('content')
    </main>
  </div>
</body>

</html>