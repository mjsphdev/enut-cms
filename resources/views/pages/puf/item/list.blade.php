@extends('layouts.main')

@section('content')
<div class="row">
    <div class="col-6 float-right">
        <a class="btn btn-success" href="{{ route('puf-items.create') }}">Upload PUF Item <i class="icon-folder-alt"></i></a>
    </div>
</div>
<br/>
<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Items</h4>
                                <div class="table-responsive">
                                    <table id="zero_config" class="table table-bordered no-wrap dataTable" role="grid" aria-describedby="zero_config_info">
                                        <thead>
                                            <tr role="row">
                                                <th>ID</th>
                                                <th>Title</th>
                                                <th>Year</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        @foreach($puf_items as $puf_item)
                                        <tr role="row">
                                             <td>{{ $tb_id++ }}</td>
                                             <td>{{ $puf_item->item_title }}</td>
                                             <td>{{ $puf_item->item_year }}</td>
                                             <td>
                                                 <div class="row">
                                                   <div class="col-sm-2">
                                                    <a class="btn btn-sm btn-info" href="{{ route('puf-items.edit', $puf_item->id.'-'.$puf_item->item_year) }}"><i class="icon-pencil"></i></a>
                                                   </div>
                                                   <div class="col-sm-2">
                                                    <form action="{{ route('puf-items.destroy', $puf_item->id.'-'.$puf_item->item_year) }}" method="post">
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