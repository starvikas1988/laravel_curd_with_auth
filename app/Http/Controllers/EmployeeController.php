<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use App\Models\Department;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class EmployeeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       
        $employees = Employee::with('department')->get();
       // dd($employees);

        return view('employees.index',compact('employees'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departments = Department::all();
        return view('employees.create', compact('departments'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
                'name'=>'required',
                'department_id'=>'required',
                'email'=>'required|email|unique:employees',
                'phone'=>'required',
                'image'=>'nullable|image|max:2048',
        ]);

        $imagePath =  $request->file('image')? $request->file('image')->store('public/images'):null;

        Employee::create([
            'name' => $request->name,
            'department_id' => $request->department_id,
            'email' => $request->email,
            'phone' => $request->phone,
            'image' => $imagePath,
        ]);

        return redirect()->route('employees.index')->with('success','Employee Created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $employee = Employee::findOrFail($id);
        return $employee;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Employee $employee)
    {
        $departments = Department::all();
       // dd($departments);
        return view('employees.edit', compact('employee', 'departments'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $employee = Employee::find($id);
       // dd($request->all());
      
        $request->validate([
            'name' => 'required',
            'department_id' => 'required|exists:departments,id',
            'email' => 'required|email|unique:employees,email,' . $employee->id,
            'phone'=>'required',
            //'phone' => 'required|regex:/^[0-9]{10}$/', // Modify regex based on your needs
            'image' => 'nullable|image|max:2048',
        ]);
        
       
        if ($request->hasFile('image')) {
             // Delete the old image if it exists
            if ($employee->image) {
                Storage::delete($employee->image);
            }

            $imagePath = $request->file('image')->store('public/images');
            $employee->image = $imagePath;
        }

        

            // Update other fields
            $employee->name = $request->name;
            $employee->department_id = $request->department_id;
            $employee->email = $request->email;
            $employee->phone = $request->phone;

            // Save the updated employee data
            $employee->save();
           

       // $employee->update($request->only('name', 'department_id', 'email', 'phone', 'image'));

        return redirect()->route('employees.index')->with('success', 'Employee updated successfully.');
    }

//     public function update(Request $request, $id)
// {
//     $employee = Employee::find($id);
    
//     $validated = $request->validate([
//         'name' => 'required',
//         'department' => 'required',
//         'salary' => 'required|numeric',
//         'role' => 'required',
//         'designation' => 'required',
//         'phone' => 'required',
//         'age' => 'required|integer',
//         'doj' => 'required|date',
//         'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'
//     ]);

//     if($request->hasFile('image')){
//         $imageName = time().'.'.$request->image->extension();  
//         $request->image->storeAs('public/images', $imageName);
//         $employee->image = $imageName;
//     }

//     $employee->update($validated);

//     return redirect()->route('employees.index')->with('success', 'Employee updated successfully');
// }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $employee = Employee::find($id);
        $employee->delete();

        return redirect()->route('employees.index')->with('success','Employee Deleted Successfully!');  
    }
}
