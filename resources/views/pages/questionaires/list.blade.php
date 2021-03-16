@extends('layouts.main')

@section('content')
<div class="row">
    <div class="col-6 float-right">
        <a class="btn btn-success" href="{{ route('users.create') }}">Create User <i class="icon-user-follow"></i></a>
    </div>
</div>
<br/>
<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Questionaires</h4>
                                <div class="table-responsive">
                                    <table id="zero_config" class="table table-bordered no-wrap dataTable" role="grid" aria-describedby="zero_config_info">
                                        <thead>
                                            <tr role="row">
                                                <th>ID</th>
                                                <th>Directory</th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                        @foreach($list_directories as $list_directory)
                                        <tr role="row">
                                             <td>{{ $tb_id++ }}</td>
                                             <td><a href="#">{{ $list_directory }}</a></td>
                                        </tr>
                                        @endforeach

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
@endsection