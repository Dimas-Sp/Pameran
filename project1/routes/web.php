<?php

use Illuminate\Support\Facades\Route;

use Illuminate\Support\Facades\DB;

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

Route::get('/rpl1', function () {
    return view('welcome');
});
Route::get('/', function () {
    return view('home');
});
Route::get('/menurpl', function () {
    return view('menu_rpl');
});
Route::get('/menutkj', function () {
    return view('menu_tkj');
});
Route::get('/menutkr', function () {
    return view('menu_tkr');
});
Route::get('/menutfl', function () {
    return view('menu_tfl');
});
Route::get('/table', function () {
    date_default_timezone_set("Asia/Jakarta");
    $_GET['day'] = date('D');
    // dd($_GET['day']);
    $_GET['jam'] = date('H:i');
    if (!empty($_GET['kelas'])) {
        if (!empty($_GET['jam'])) {
            $users = DB::table('kelas')
                ->join('guru', 'kelas.id_guru', '=', 'guru.id_guru')
                ->join('mapel', 'kelas.id_mapel', '=', 'mapel.id_mapel')
                ->where('kelas', $_GET['kelas'])
                ->where('jam_masuk', '<=', $_GET['jam'])
                ->where('jam_keluar', '>=', $_GET['jam'])
                ->where('day', '=', $_GET['day'])
                ->first();
                if (empty($users )) {
                    return back();
                }
            // dd($users);
            return view('welcome', [
                'data' => $users
            ]);
        } else {
            return response()->json("Harap masukan parameter JAM", 200);
        }
    } else {
        return response()->json("Harap masukan parameter KELAS", 200);
    }
});

// select * from `kelas` inner join `guru` on `kelas`.`id_guru` = `guru`.`id_guru` inner join `mapel` on `kelas`.`id_mapel` = `mapel`.`id_mapel` where `kelas` = "XII RPL 1" AND `jam_masuk` = "07:00" AND `jam_keluar`= "09:05" AND `day` = "Mon"