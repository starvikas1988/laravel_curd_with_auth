<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

use App\Models\Employee;
use App\Models\Department;


class EmployeeFactory extends Factory
{
    protected $model = Employee::class;

    public function definition()
    {
        return [
            'name' => $this->faker->name,
            'department_id' => Department::factory(), // Create a related department if not provided
            'email' => $this->faker->unique()->safeEmail,
            'phone' => $this->faker->phoneNumber,
            'image' => $this->faker->image('storage/app/public/images', 640, 480, null, false), // Save the image
        ];
    }
}

