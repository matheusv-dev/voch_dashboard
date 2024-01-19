<?php

use App\CargoColaborador;
use App\Colaborador;
use App\Http\Controllers\CargoColaboradorController;
use App\Http\Controllers\CargoController;
use App\Http\Controllers\ColaboradorController;
use App\Http\Controllers\UnidadeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('/ranking');
});

Route::get('/unidades', [UnidadeController::class, 'index']);
Route::get('/unidades/create', [UnidadeController::class, 'create']);
Route::post('/unidades', [UnidadeController::class, 'store']);
Route::delete('/unidades/{id}', [UnidadeController::class, 'destroy']);
Route::get('/unidades/edit/{id}', [UnidadeController::class, 'edit']);
Route::put('/unidades/update/{id}', [UnidadeController::class, 'update']);
Route::get('/unidades/relatorio', [UnidadeController::class, 'relatorio']);

Route::get('/colaboradores', [ColaboradorController::class, 'index']);
Route::get('/colaboradores/create', [ColaboradorController::class, 'create']);
Route::post('/colaboradores', [ColaboradorController::class, 'store']);
Route::delete('/colaboradores/{id}', [ColaboradorController::class, 'destroy']);
Route::get('/colaboradores/edit/{id}', [ColaboradorController::class, 'edit']);
Route::put('/colaboradores/update/{id}', [ColaboradorController::class, 'update']);
Route::get('/colaboradores/relatorio', [ColaboradorController::class, 'relatorio']);
Route::get('/colaboradores/avaliacao/{id}', [CargoColaboradorController::class, 'avaliacao']);
Route::put('/colaboradores/avaliacao/update/{id}', [CargoColaboradorController::class, 'update']);

Route::get('/cargos', [CargoController::class, 'index']);
Route::get('/cargos/create', [CargoController::class, 'create']);
Route::post('/cargos', [CargoController::class, 'store']);
Route::delete('/cargos/{id}', [CargoController::class, 'destroy']);
Route::get('/cargos/edit/{id}', [CargoController::class, 'edit']);
Route::put('/cargos/update/{id}', [CargoController::class, 'update']);


Route::get('/ranking', [ColaboradorController::class, 'ranking']);
Route::get('/ranking/relatorio', [ColaboradorController::class, 'relatorioRanking']);
