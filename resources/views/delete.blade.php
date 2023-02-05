@extends('layouts.app')

@section('content')
    <div class="container">
        <form class="form-margin" method="post" action="{{ route('delete') }}">
            @csrf
            @if(!empty($users))
                <select name="delete_user" id="delete_user" class="form-control">
                    @foreach($users as $item)
                        <option
                            value="{{ $item['id'] }}">{{ $item['last_name'] }} {{ $item['first_name'] }}  {{ $item['father_name'] }}</option>
                    @endforeach
                </select>
                <button class="button btn-dark form-control" type="submit">Delete User</button>
            @else
                <div class="empty text-center">Users Not Found</div>
            @endif
        </form>
    </div>
@endsection
