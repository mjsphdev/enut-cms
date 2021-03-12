@extends('layouts.main')

@section('content')
<div class="row">
    <div class="col-6 float-right">
		 <form action="{{ route('gallery.create', $id) }}" method="get">
              <button type="submit" class="btn btn-success">Upload <i class="icon-cloud-upload"></i></button>
         </form>
    </div>
</div>
<br/>

<section>	
	<div class="container">
	   <div class="card">
	     <div class="card-body">
			<div class="row justify-content-center text-center my-3">
					<div class="col-12">
						<h3 class="text-info">{{$survey->year}}</h3>
						<p>{{$survey->survey_type}}</p>
					</div>
			</div>
			<div class="row justify-content-center text-center">
			  @if($images->count() > 0)
			  @foreach($images as $image)
				<div class="col-md-4 mb-3">
				    <small>{{ $image->province }}</small>
					<a href="{{ asset('files/infographics').'/'.$image->brochure_year.'/'.$image->province.'/'.$image->brochure_filename }}" data-lightbox="gallery" data-title="{{ $image->brochure_group }}">
						<img src="{{ asset('files/infographics').'/'.$image->brochure_year.'/'.$image->province.'/'.$image->brochure_filename }}" class="img-fluid img-thumbnail" alt="{{ $image->brochure_group }}">
					</a>
					<small>{{ $image->brochure_group }}</small>
					<small>Page - {{ $image->page_no }}</small>
                    <br>
					<form action="{{ route('gallery.destroy', $image->id) }}" method="post">
                      {{ csrf_field() }}
                      {{ method_field('DELETE') }}
					  <button type="submit" class="btn btn-circle btn-sm btn-warning" onclick="return confirm('Are you sure?')"><span class="btn-label"><i class="fas fa-trash-alt"></i></span></button>				
                    </form>
				</div>
			  @endforeach
			  @else
			    <h3><i class="fas fa-image"></i> No Image</h3>
			  @endif

			</div>
			{{$images->links("pagination::bootstrap-4")}}
		  </div>
		</div>
	</div>
</section>
@endsection