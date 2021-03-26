@extends('layouts.main')

@section('content')

<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Upload Questionaires</h4>
                                <hr/>
                                <form action="{{ route('scanned-questionaires.store') }}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="form-body">

                                        <div class="form-group {{ $errors->has('year') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Year</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <select name="year" class="form-control">
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

                                        <div class="form-group {{ $errors->has('type') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Type</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <select name="type" class="form-control">
                                                                   <option selected disabled>Choose Type</option>
                                                                   <option value="hh">Household</option>
                                                                   <option value="indiv">Individual<option>
                                                              </select>
                                                              @if ($errors->has('type'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('type') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('booklet_title') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Booklet Title</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <input title="text" class="form-control" name="booklet_title">
                                                              @if ($errors->has('booklet_title'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('booklet_title') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('booklet_no') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Booklet No.</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <input title="text" class="form-control" name="booklet_no">
                                                              @if ($errors->has('booklet_no'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('booklet_no') }}</strong>
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
                                                <input type="file" id="qFile" name="file[]" accept="application/pdf" multiple/>
                                                <label for="qFile" class="tower-file-button">
                                                    <span class="mdi mdi-upload"></span>Select File
                                                </label>
                                                <button type="button" class="tower-file-clear tower-file-button">
                                                    Clear
                                                </button>
                                            </div>

                                             @if ($errors->has('file'))
                                                <span class="help-block">
                                                   <strong class="text-danger class="text-danger"">{{ $errors->first('file') }}</strong>
                                                </span>
                                             @endif
                                        </div>
                                    <hr/>
                                    <div class="form-actions">
                                        <div class="text-right">

                                            <button type="submit" class="btn btn-info btn-svg">Submit</button>
                                          
                                        </div>
                                    </div>
                                </form>
                                
                            </div>
                        </div>
                    </div>
                </div>
@endsection