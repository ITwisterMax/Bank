@extends('layouts.app')

@section('content')
    <div class="container">
        @csrf
        @if(!empty($users))
            <div class="text-center delete-select">Users</div>
            <table class="table table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>Id</th>
                        <th>Last Name</th>
                        <th>First Name</th>
                        <th>Father Name</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($users as $item)
                    <tr>
                        <td>{{ $item['id'] }}</td>
                        <td>{{ $item['last_name'] }}</td>
                        <td>{{ $item['first_name'] }}</td>
                        <td>{{ $item['father_name'] }}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            <div class="closing-div"><a href="#" class="btn-dark closing">Bank Day Closing</a></div>
        @else
            <div class="empty text-center">Users Not Found</div>
        @endif
    </div>
@endsection
