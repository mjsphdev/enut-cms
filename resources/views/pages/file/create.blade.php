@extends('layouts.main')

@section('content')

<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Upload File</h4>
                                <hr/>
                                <form action="{{ route('file-uploads.store') }}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="form-body">
                                        <div class="form-group {{ $errors->has('title') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Title</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <input type="text" class="form-control" name="title"
                                                                value="{{ old('title') }}" placeholder="Title">
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

                                        <div class="form-group {{ $errors->has('category') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Category</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <select id="category" name="category" class="form-control">
                                                                   <option selected disabled>Choose Type</option>
                                                                   <option value="Facts&Figures" {{ (old('category') == 'Facts&Figures') ? 'selected' : '' }}>Facts & Figures</option>
                                                                   <option value="Presentation" {{ (old('category') == 'Presentation') ? 'selected' : '' }}>Presentation</option>
                                                              </select>
                                                              @if ($errors->has('category'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('category') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('year') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Year</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <select id="year" name="year" class="form-control">
                                                                   <option selected disabled>Choose Year</option>
                                                                   @foreach($years as $year)
                                                                    <option value="{{$year->year}}" {{ (old('year') == $year->year) ? 'selected' : '' }}>{{ $year->year }} - {{ $year->survey_type }}</option>
                                                                   @endforeach
                                                              </select>
                                                              @if ($errors->has('year'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('year') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="factsfigures">
                                        <div id="demo-6">
                                            <h6>Choose Thumbnail</h6>
                                            <p>

                                            </p>
                                            <div class="tower-file">
                                                <input type="file" id="imageUpload" name="thumbnail" accept="image/jpeg, image/png"/>
                                                <label for="imageUpload" class="tower-file-button">
                                                    <span class="mdi mdi-upload"></span>Select Image
                                                </label>
                                                <button type="button" class="tower-file-clear tower-file-button">
                                                    Clear
                                                </button>
                                            </div>
                                            @if ($errors->has('thumbnail'))
                                               <span class="help-block">
                                                  <strong class="text-danger">{{ $errors->first('thumbnail') }}</strong>
                                               </span>
                                            @endif

                                            <div class="collapse" id="demo-code-6">

                                            </div>
                                             @if ($errors->has('image'))
                                                <span class="help-block">
                                                   <strong class="text-danger class="text-danger"">{{ $errors->first('image') }}</strong>
                                                </span>
                                             @endif
                                        </div>
                                        <br/>
                                        <div class="form-group {{ $errors->has('content') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Content</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <textarea class="form-control" name="content" id="fileeditor"
                                                                value="{{ old('content') }}" placeholder="Content">
                                                            </textarea>
                                                            <input type="hidden" value="{{ old('content') }}" id="fileContent">
                                                              @if ($errors->has('content'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('content') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                        <br/>
                                        <div id="demo-6">
                                            <h6>Choose File</h6>
                                            <p>

                                            </p>
                                            <div class="tower-file">
                                                <input type="file" id="fileUpload" name="file" accept="application/pdf"/>
                                                <label for="fileUpload" class="tower-file-button">
                                                    <span class="mdi mdi-upload"></span>Select File
                                                </label>
                                                <button type="button" class="tower-file-clear tower-file-button">
                                                    Clear
                                                </button>
                                            </div>

                                            <div class="collapse" id="demo-code-6">

                                            </div>
                                             @if ($errors->has('file'))
                                                <span class="help-block">
                                                   <strong class="text-danger">{{ $errors->first('file') }}</strong>
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