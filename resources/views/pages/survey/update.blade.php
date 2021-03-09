@extends('layouts.main')

@section('content')
<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Update User</h4>
                                <hr/>
                                <form action="{{ route('surveys.update', $survey->id) }}" method="post">
                                    {{ csrf_field() }}
                                    {{ method_field('PATCH') }}
                                    <div class="form-body">
                                        <div class="form-group {{ $errors->has('year') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Year</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <input type="text" class="form-control" name="year" id="yearpicker" 
                                                                value="{{ $survey->year }}" placeholder="Year">
                                                              @if ($errors->has('year'))
                                                                 <span class="help-block">
                                                                    <strong>{{ $errors->first('year') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('survey_type') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Survey Type</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <select id="survey_type" name="survey_type" class="form-control">
                                                                   <option selected disabled>Choose Type</option>
                                                                   <option value="Expanded National Nutrition Survey" {{ ($survey->survey_type == 'Expanded National Nutrition Survey') ? 'selected' : ''}}>Expanded National Nutrition Survey</option>
                                                                   <option value="National Nutrition Survey" {{ ($survey->survey_type == 'National Nutrition Survey') ? 'selected' : ''}}>National Nutrition Survey</option>
                                                                   <option value="Updating Survey" {{ ($survey->survey_type == 'Updating Survey') ? 'selected' : ''}}>Updating Survey</option>
                                                              </select>
                                                              @if ($errors->has('survey_type'))
                                                                 <span class="help-block">
                                                                    <strong>{{ $errors->first('survey_type') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
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