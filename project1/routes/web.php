<?php

use Illuminate\Support\Facades\Route;

use Illuminate\Support\Facades\DB;

use function PHPUnit\Framework\isNull;

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

// Route::get('/rpl1', function () {
//     return view('welcome');
// });
Route::get('/', function () {
    return view('home');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/menu', function () {
    return view('menu_'.$_GET['kejuruan']);
});

Route::get('/gur_agama', function () {
    return view('guru_agama');
});

Route::get('/gur_math', function () {
    return view('guru_matematika');
});

Route::get('/jad', function () {
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
            if( empty($users)){
                return response()->json("Sudah Tidak Ada kelas", 200);
            }else{
                return view('welcome', [
                    'data' => $users
                ]);
            }
        } else {
            return response()->json("Harap masukan parameter JAM", 200);
        }
    } else {
        return response()->json("Harap masukan parameter KELAS", 200);
    }
});

Route::get('/magur', function (){
    date_default_timezone_set("Asia/Jakarta");
    $_GET['day'] = date('D');
    // dd($_GET['day']);
    $_GET['jam'] = date('H:i');
    if (!empty($_GET['nama_guru'])) {
        if (!empty($_GET['jam'])) {
            $users = DB::table('kelas')
                ->select('guru.nama_guru', 'guru.kode_ruangan', 'guru.img', 'kelas.*', 'mapel.*')
                ->join('guru', 'kelas.id_guru', '=', 'guru.id_guru')
                ->join('mapel', 'kelas.id_mapel', '=', 'mapel.id_mapel')
                ->where('nama_guru', $_GET['nama_guru'])
                ->where('jam_masuk', '<=', '12:30')
                ->where('jam_keluar', '>=', '13:30')
                ->where('day', '=', 'Tue')
                ->first();
                if (empty($users )) {
                    return back();
                }
            // dd($users);
            if( empty($users)){
                return response()->json("Sudah Tidak Ada kelas", 200);
            }else{
                return view('welcome', [
                    'data' => $users
                ]);
            }
        } else {
            return response()->json("Harap masukan parameter JAM", 200);
        }
    } else {
        return response()->json("Harap masukan parameter KELAS", 200);
    }
});
// select * from `kelas` inner join `guru` on `kelas`.`id_guru` = `guru`.`id_guru` inner join `mapel` on `kelas`.`id_mapel` = `mapel`.`id_mapel` where `kelas` = "XII RPL 1" AND `jam_masuk` = "07:00" AND `jam_keluar`= "09:05" AND `day` = "Mon"
