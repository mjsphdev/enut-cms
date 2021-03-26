@extends('layouts.main')

@section('content')

<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Upload</h4>
                                <hr/>
                                <form action="{{ route('gallery.store', $id) }}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="form-body">


                                        <div class="form-group {{ $errors->has('province') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Province</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <select id="province" name="province" class="form-control">
                                                                   <option selected disabled>Choose Province</option>
                                                                   @foreach($provinces as $province)
                                                                       <option value="{{ $province->province_name }}">{{ $province->province_name }}</option>
                                                                   @endforeach
                                                              </select>
                                                              @if ($errors->has('province'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('province') }}</strong>
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
                                                <input type="file" id="imageUpload" name="image[]" accept="image/jpeg, image/png" multiple/>
                                                <label for="imageUpload" class="tower-file-button">
                                                    <span class="mdi mdi-upload"></span>Select Image
                                                </label>
                                                <button type="button" class="tower-file-clear tower-file-button">
                                                    Clear
                                                </button>
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