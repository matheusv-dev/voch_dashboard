@section('cargo', isset($cargo->cargo) ? $cargo->cargo : '')

<div class="form-input">
  <label for="cargo">Cargo:</label>
  <input type="text" id="cargo" name="cargo" required maxlength="255" value="@yield('cargo')">
</div>