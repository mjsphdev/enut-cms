@extends('layouts.main')

@section('content')
<div class="row">
    <div class="col-6 float-right">
        <a class="btn btn-success" href="{{ route('infographics.create') }}">Upload Infographics <i class="icon-info"></i></a>
    </div>
</div>
<br/>
<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Infographics</h4>
                                <div class="table-responsive">
                                <table id="zero_config" class="table table-bordered no-wrap dataTable" role="grid" aria-describedby="zero_config_info">
                                        <thead>
                                            <tr role="row">
                                                <th>ID</th>
                                                <th>Year</th>
                                                <th>Thumbnail</th>
                                                <th>Gallery</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        @foreach($infographics as $infographic)
                                        <tr role="row">
                                             <td>{{ $tb_id++ }}</td>
                                             <td>{{ $infographic->brochure_year }}</td>
                                             <td>
                                                 <img class="img-thumbnail w-40" src="{{ asset('files/infographics/'.$infographic->brochure_year.'/thumbnail/'.$infographic->brochure_thumbnail) }}"></img>
                                             </td>
                                             <td>
                                                 <form action="{{ route('gallery.index', $infographic->id) }}" method="get">
                                                      <button type="submit" class="btn btn-sm btn-warning"><span class="btn-label"><i class="far fa-images"></i> Gallery</span></button>
                                                 </form>
                                            </td>
                                             <td>
                                                 <div class="row">
                                                   <div class="col-sm-2">
                                                    <a class="btn btn-sm btn-info" href="{{ route('infographics.edit', $infographic->id) }}"><i class="icon-pencil"></i></a>
                                                   </div>
                                                   <div class="col-sm-2">
                                                    <form action="{{ route('infographics.destroy', $infographic->id) }}" method="post">
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
                </div>
@endsection