@section('cnpj', isset($unidade->cnpj) ? $unidade->cnpj : '')
@section('nome_fantasia', isset($unidade->nome_fantasia) ? $unidade->nome_fantasia : '')
@section('razao_social', isset($unidade->razao_social) ? $unidade->razao_social : '')

<div class="form-input">
  <label for="cnpj">CNPJ</label>
  <input type="text" id="cnpj" name="cnpj" required value="@yield('cnpj')">
</div>
<div class="form-input">
  <label for="nome_fantasia">Nome Fantasia</label>
  <input type="text" id="nome_fantasia" name="nome_fantasia" required maxlength="255" value="@yield('nome_fantasia')">
</div>
<div class="form-input">
  <label for="razao_social">Razão Social</label>
  <input type="text" id="razao_social" name="razao_social" required maxlength="255" value="@yield('razao_social')">
</div>