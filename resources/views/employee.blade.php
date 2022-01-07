<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Employees</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
      <table class="table table-striped">
        <thead class="thead-dark">
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone</th>
            <th scope="col">Salary</th>
            <th scope="col">Department</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($employees as $emp)
             <tr>
                <td>{{$emp->id}}</td>   
                <td>{{$emp->name}}</td>   
                <td>{{$emp->email}}</td>   
                <td>{{$emp->phone}}</td>   
                <td>{{$emp->salary}}</td>   
                <td>{{$emp->department}}</td>
            </tr>   
            @endforeach
        </tbody>
      </table>
</body>
</html>