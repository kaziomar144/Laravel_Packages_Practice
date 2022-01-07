<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use PDF;
use Illuminate\Http\Request;

class EmpController extends Controller
{
    public function getAllEmployees()
    {
        $employees = Employee::all();
        return view('employee',compact('employees'));
    }

    public function downloadPDF()
    {
        $employees = Employee::all();
        $pdf = PDF::loadView('employee',compact('employees'));
        return $pdf->download('employees.pdf');
    }
}
