@extends('layouts.main')

@section('content')
<style>
.loading {
  -webkit-animation:fadein 2s;
     -moz-animation:fadein 2s;
       -o-animation:fadein 2s;
          animation:fadein 2s;
}
@-moz-keyframes fadein {
  from {opacity:0}
  to {opacity:1}
}
@-webkit-keyframes fadein {
  from {opacity:0}
  to {opacity:1}
}
@-o-keyframes fadein {
  from {opacity:0}
  to {opacity:1}
}
@keyframes fadein {
  from {opacity:0}
  to {opacity:1}
}

.spinner-wrapper {
  min-width:100%;
  min-height:100%;
  height:100%;
  top:0;
  left:0;
  background:rgba(255,255,255,0.93);
  position:absolute;
  z-index:300;
}

.spinner-text {position:absolute;top:41.5%;left:47%;margin:16px 0 0 35px;font-size:9px;font-family:Arial;color:#BBB;letter-spacing:1px;font-weight:700}
.spinner {
  margin:0;
  display:block;
  position:absolute;
  left:45%;
  top:40%;
  border:25px solid rgba(100,100,100,0.2);
  width:1px;
  height:1px;
  border-left-color:transparent;
  border-right-color:transparent;
  -webkit-border-radius:50px;
     -moz-border-radius:50px;
          border-radius:50px;
  -webkit-animation:spin 1.5s infinite;
     -moz-animation:spin 1.5s infinite;
          animation:spin 1.5s infinite;
}

@-webkit-keyframes spin {
  0%,100% {-webkit-transform:rotate(0deg) scale(1)}
  50%     {-webkit-transform:rotate(720deg) scale(0.6)}
}

@-moz-keyframes spin  {
  0%,100% {-moz-transform:rotate(0deg) scale(1)}
  50%     {-moz-transform:rotate(720deg) scale(0.6)}
}
@-o-keyframes spin  {
  0%,100% {-o-transform:rotate(0deg) scale(1)}
  50%     {-o-transform:rotate(720deg) scale(0.6)}
}
@keyframes spin  {
  0%,100% {transform:rotate(0deg) scale(1)}
  50%     {transform:rotate(720deg) scale(0.6)}
}
 
 
</style>

<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Upload Dataset</h4>
                                <hr/>
                                <form action="{{ route('dataset.store') }}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="form-body">

                                        <div class="form-group {{ $errors->has('year') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Year</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                              <select id="dataset_year" name="year" class="form-control">
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

                                        <div id="demo-6">
                                            <h6>Choose File</h6>
                                            <p>

                                            </p>
                                            <div class="tower-file">
                                                <input type="file" id="pufFile" name="file" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel"/>
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

                                            <button type="submit" class="btn btn-info btn-svg">Submit</button>
                                          
                                        </div>
                                    </div>
                                </form>
                                
                            </div>
                        </div>
                    </div>
                    <div class="loading">
                      <div class="spinner-wrapper" id="overlay" style="visibility:hidden;">
                        <span class="spinner-text">UPLOADING DATASET</span>
                        <span class="spinner"></span>
                      </div>
                    </div>
                </div>
@endsection