@extends('layouts.main')

@section('content')

<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Update Image</h4>
                                <hr/>
                                <form action="{{ route('image-uploads.update', $image_content->id) }}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    {{ method_field('PATCH') }}
                                    <div class="form-body">

                                        <div class="form-group {{ $errors->has('title') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Title</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <input type="text" class="form-control" name="title"
                                                                value="{{ $image_content->image_title }}" placeholder="Title">
                                                              @if ($errors->has('title'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('title') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('subtitle') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Subtitle</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <input type="text" class="form-control" name="subtitle"
                                                                value="{{ $image_content->image_subtitle }}" placeholder="Subtitle">
                                                              @if ($errors->has('subtitle'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('subtitle') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('image_belongs') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Belongs To Page</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                        <select id="image_belongs" name="image_belongs" class="form-control">
                                                             <option selected disabled>Choose...</option>
                                                             @foreach ($pageBelongs as $page)
                                                               <option value="{{$page->id}}" {{ ($image_content->image_slug == $page->page_slug) ? 'selected' : '' }}>{{$page->page_title}}</option>
                                                             @endforeach
                                                        </select>
                                                              @if ($errors->has('image_belongs'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('image_belongs') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('image_type') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Image Type</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                        <select id="image_type" name="image_type" class="form-control">
                                                             <option selected disabled>Choose...</option>
                                                             <option value="carousel" {{ ($image_content->image_type == 'carousel') ? 'selected' : '' }}>Carousel</option>
                                                             <option value="normal" {{ ($image_content->image_type == 'normal') ? 'selected' : '' }}>Normal</option>
                                                        </select>
                                                              @if ($errors->has('image_type'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('image_type') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                
                                        <div id="demo-6">
                                            <h6>Choose Image</h6>
                                            <p>

                                            </p>
                                            <div class="tower-file">
                                                <input type="file" id="imageUpload" name="image" accept="image/jpeg, image/png"/>
                                                <label for="imageUpload" class="tower-file-button">
                                                    <span class="mdi mdi-upload"></span>Select Image
                                                </label>
                                                <button type="button" class="tower-file-clear tower-file-button">
                                                    Clear
                                                </button>
                                            </div>
 
                                            <hr>
                                            <div style="padding:5px;">
                                                <h3>Uploaded Image</h3>
                                                <img alt="Select an Image" style="max-height:50vh; max-width:100%;" src="{{ asset('files/image/'.$image_content->image_type.'/'.$image_content->image_filename) }}"/>
                                            </div>

                                            <div class="collapse" id="demo-code-6">

                                            </div>
                                             @if ($errors->has('image'))
                                                <span class="help-block">
                                                   <strong class="text-danger class="text-danger"">{{ $errors->first('image') }}</strong>
                                                </span>
                                             @endif
                                        </div>
                                    <hr/>
                                    <div class="form-actions">
                                        <div class="text-right">
                                            <button type="submit" class="btn btn-info">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
@endsection