@extends('layouts.main')

@section('content')
<style>
.switch-field {
	display: flex;
	margin-bottom: 36px;
	overflow: hidden;
}

.switch-field input {
	position: absolute !important;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	width: 1px;
	border: 0;
	overflow: hidden;
}

.switch-field label {
	background-color: #e4e4e4;
	color: rgba(0, 0, 0, 0.6);
	font-size: 14px;
	line-height: 1;
	text-align: center;
	padding: 8px 16px;
	margin-right: -1px;
	border: 1px solid rgba(0, 0, 0, 0.2);
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.1);
	transition: all 0.1s ease-in-out;
}

.switch-field label:hover {
	cursor: pointer;
}

.switch-field input:checked + label {
	background-color: #a5dc86;
	box-shadow: none;
}

.switch-field label:first-of-type {
	border-radius: 4px 0 0 4px;
}

.switch-field label:last-of-type {
	border-radius: 0 4px 4px 0;
}

</style>
<div class="row">
    <div class="col-6 float-right">
        <a class="btn btn-success" href="{{ route('image-uploads.create') }}">Upload Image <i class="icon-cloud-upload"></i></a>
    </div>
</div>
<br/>
<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Images</h4>
                                <div class="table-responsive">
                                <table id="zero_config" class="table table-bordered no-wrap dataTable" role="grid" aria-describedby="zero_config_info">
                                        <thead>
                                            <tr role="row">
                                                <th>ID</th>
                                                <th>Title</th>
                                                <th>Type</th>
                                                <th>Image</th>
                                                <th>Status</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        @foreach($image_contents as $image_content)
                                        <tr role="row">
                                             <td>{{ $tb_id++ }}</td>
                                             <td>{{ $image_content->image_title }}</td>
                                             <td>{{ $image_content->image_type }}</td>
                                             <td>
                                                 <img class="img-thumbnail w-40" src="{{ asset('files/image/'.$image_content->image_type.'/'.$image_content->image_filename) }}"></img>
                                            </td>
                                             <td>
                                                 <div class="switch-field">
	                                             	<input type="radio" id="zero{{ $image_content->id }}" name="status{{ $image_content->id }}" value="0-{{ $image_content->id }}" {{ ($image_content->status == 0) ? 'checked' : '' }}/>
	                                             	<label for="zero{{ $image_content->id }}">OFF</label>
	                                             	<input type="radio" id="one{{ $image_content->id}}" name="status{{ $image_content->id }}" value="1-{{ $image_content->id }}" {{ ($image_content->status == 1) ? 'checked' : '' }}/>
	                                             	<label for="one{{ $image_content->id}}">ON</label>
	                                             </div>
                                            </td>
                                             <td>
                                                 <div class="row">
                                                   <div class="col-sm-2">
                                                    <a class="btn btn-sm btn-info" href="{{ route('image-uploads.edit', $image_content->id) }}"><i class="icon-pencil"></i></a>
                                                   </div>
                                                   <div class="col-sm-2">
                                                    <form action="{{ route('image-uploads.destroy', $image_content->id) }}" method="post">
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