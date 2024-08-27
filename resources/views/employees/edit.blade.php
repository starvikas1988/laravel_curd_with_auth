@extends('layouts.app')

@section('content')
<div class="container">
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

    <h2>Edit Employee</h2>
    <form action="{{ route('employees.update', $employee->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')

        <!-- Name -->
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" name="name" class="form-control" value="{{ $employee->name }}" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email" value="{{ $employee->email }}"required>
        </div> 

        <!-- Department -->
        <div class="form-group">
            <label for="department_id">Department:</label>
            <select class="form-control" id="department_id" name="department_id" required>
                <option value="" disabled>Select Department</option>
                @foreach ($departments as $department)
                    <option value="{{ $department->id }}" 
                        {{ $department->id == $employee->department_id ? 'selected' : '' }}>
                        {{ $department->name }}
                    </option>
                @endforeach
            </select>
        </div>

        <!-- Phone -->
        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="text" name="phone" class="form-control" value="{{ $employee->phone }}" required>
        </div>

        <!-- Image -->
        <div class="form-group">
            <label for="image">Image:</label>
            <input type="file" name="image" class="form-control">
           
            @if (strpos($employee->image, 'public/images/') !== false)
                <img src="{{ Storage::url( $employee->image) }}" alt="Employee Image" width="100">
                @else
                <img src="{{ Storage::url('images/' . $employee->image) }}" alt="Employee Image" width="100">
            @endif
        </div>
        <button type="submit" class="btn btn-primary">Update Employee</button>
    </form>
</div>
@endsection
