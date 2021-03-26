@extends('layouts.main')

@section('content')

<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Update Thumbnail</h4>
                                <hr/>
                                <form action="{{ route('infographics.update', $infographic->id) }}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    {{ method_field('PATCH') }}
                                    <div class="form-body">


                                        <div class="form-group {{ $errors->has('year') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Year</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <select id="year" name="year" class="form-control">
                                                                   <option selected disabled>Choose Year</option>
                                                                   @foreach($years as $year)
                                                                    <option value="{{$year->year}}" {{ ($infographic->brochure_year == $year->year) ? 'selected' : '' }}>{{ $year->year }} - {{ $year->survey_type }}</option>
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
                                                <h3>Uploaded Thumbnail</h3>
                                                <img alt="Select an Image" style="max-height:50vh; max-width:100%;" src="{{ asset('files/infographics/'.$infographic->brochure_year.'/thumbnail/'.$infographic->brochure_thumbnail) }}"/>
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