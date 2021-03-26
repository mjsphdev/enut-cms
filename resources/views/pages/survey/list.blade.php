@extends('layouts.main')

@section('content')
<div class="row">
    <div class="col-6 float-right">
        <a class="btn btn-success" href="{{ route('surveys.create') }}">Create Survey <i class="icon-book-open"></i></a>
    </div>
</div>
<br/>
<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Surveys</h4>
                                <table id="zero_config" class="table table-bordered no-wrap dataTable" role="grid" aria-describedby="zero_config_info">
                                        <thead>
                                            <tr role="row">
                                                <th>ID</th>
                                                <th>Year</th>
                                                <th>Survey Type</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        @foreach($surveys as $survey)
                                        <tr role="row">
                                             <td>{{ $tb_id++ }}</td>
                                             <td>{{ $survey->year }}</td>
                                             <td>{{ $survey->survey_type }}</td>
                                             <td>
                                                 <div class="row">
                                                   <div class="col-sm-2">
                                                    <a class="btn btn-sm btn-info" href="{{ route('surveys.edit', $survey->id) }}"><i class="icon-pencil"></i></a>
                                                   </div>
                                                   <div class="col-sm-2">
                                                    <form action="{{ route('surveys.destroy', $survey->id) }}" method="post">
                                                      {{ csrf_field() }}
                                                      {{ method_field('DELETE') }}
                                                      <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')"><i class="icon-trash"></i></button>
                                                    </form>
                                                   </div>
                                                 </div>                                  
                                                 
                                             </td>
                                        </tr>
                                        @endforeach

                                        </tbody>
                                    </table>
                            </div>
                        </div>
                    </div>
                </div>  
@endsection