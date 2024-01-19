@section('cpf', isset($colaborador->cpf) ? $colaborador->cpf : '')
@section('nome', isset($colaborador->nome) ? $colaborador->nome : '')
@section('email', isset($colaborador->email) ? $colaborador->email : '')
@section('unidade_id', isset($colaborador->unidade_id) ? $colaborador->unidade_id : '')

<div class="form-input">
  <label for="nome">Nome:</label>
  <input type="text" id="nome" name="nome" required maxlength="255" value="@yield('nome')">
</div>

<div class="form-input">
  <label for="cpf">CPF:</label>
  <input type="text" id="cpf" name="cpf" required value="@yield('cpf')">
</div>

<div class="form-input">
  <label for="email">E-Mail:</label>
  <input type="text" id="email" name="email" required maxlength="255" value="@yield('email')">
</div>

<div class="form-input">
  <label for="unidade_id">Unidade</label>
  <select name="unidade_id" id="unidade_id" required>
    <option value="">Selecione...</option>
    @foreach($listaUnidades as $unidade)
    @php
    $selected = "";
    if(isset($colaborador->unidade_id))
    $selected = $colaborador->unidade_id == $unidade->id ? 'selected' : '';
    @endphp
    <option {{ $selected }} value="{{ $unidade->id }}"> {{ $unidade->nome_fantasia }}</option>
    @endforeach
  </select>
</div>

<div class="form-input">
  <label for="cargo_id">Cargo</label>
  <select name="cargo_id" id="cargo_id" required>
    <option value="">Selecione...</option>
    @foreach($listaCargos as $cargo)
    @php
    $selected = "";
    if(isset($colaborador->cargo_id))
    $selected = $colaborador->cargo_id == $cargo->id ? 'selected' : '';
    @endphp
    <option {{ $selected }} value="{{ $cargo->id }}"> {{ $cargo->cargo }}</option>
    @endforeach
  </select>
</div>