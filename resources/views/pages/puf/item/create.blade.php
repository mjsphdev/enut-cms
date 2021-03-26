@extends('layouts.main')

@section('content')

<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Upload PUF Item</h4>
                                <hr/>
                                <form action="{{ route('puf-items.store') }}" method="post" enctype="multipart/form-data">
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

                                        <div class="form-group {{ $errors->has('survey') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Survey</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <select id="survey" name="survey" class="form-control">
                                                                   
                                                              </select>
                                                              @if ($errors->has('survey'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('survey') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('description') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Description</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <textarea class="form-control" name="description"
                                                                value="{{ old('description') }}" placeholder="Description">
                                                            </textarea>
                                                            <input type="hidden" id="item_description" value="">
                                                              @if ($errors->has('description'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('description') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('overview') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Content</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <textarea class="form-control" name="overview" id="pufeditor"
                                                                 placeholder="Content">
                                                            </textarea>
                                                            <input type="hidden" value="{{ old('overview') }}" id="pufContent">
                                                              @if ($errors->has('overview'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('overview') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="demo-6">
                                            <h6>Choose File</h6>
                                            <p>

                                            </p>
                                            <div class="tower-file">
                                                <input type="file" id="pufFile" name="puf_file" accept="application/pdf"/>
                                                <label for="pufFile" class="tower-file-button">
                                                    <span class="mdi mdi-upload"></span>Select File
                                                </label>
                                                <button type="button" class="tower-file-clear tower-file-button">
                                                    Clear
                                                </button>
                                            </div>

                                             @if ($errors->has('puf_file'))
                                                <span class="help-block">
                                                   <strong class="text-danger class="text-danger"">{{ $errors->first('puf_file') }}</strong>
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