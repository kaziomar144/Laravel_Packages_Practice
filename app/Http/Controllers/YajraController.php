<?php

namespace App\Http\Controllers;

use App\DataTables\YajraDataTable;
use Illuminate\Http\Request;

class YajraController extends Controller
{
    public function index(YajraDataTable $dataTable)
    {
        return $dataTable->render('yajra');
    }
}
