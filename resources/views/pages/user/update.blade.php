@extends('layouts.main')

@section('content')
@if(session('status'))
    <div class="alert alert-success alert-dismissible bg-success text-white border-0 fade show" id="success-alert" role="alert">
        <strong>Success - </strong> {{ session('status') }}
    </div>
@endif
<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Update User</h4>
                                <hr/>
                                <form action="{{ route('users.update', $user->id) }}" method="post">
                                    {{ csrf_field() }}
                                    {{ method_field('PATCH') }}
                                    <div class="form-body">
                                        <div class="form-group {{ $errors->has('name') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Name</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <input type="text" class="form-control" name="name"
                                                                value="{{ $user->name }}" placeholder="Name">
                                                              @if ($errors->has('name'))
                                                                 <span class="help-block">
                                                                    <strong>{{ $errors->first('name') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('username') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Username</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <input type="text" class="form-control" name="username"
                                                                 value="{{ $user->username }}" placeholder="Username">
                                                              @if ($errors->has('username'))
                                                                 <span class="help-block">
                                                                    <strong>{{ $errors->first('username') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('email') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Email</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <input type="email" class="form-control" name="email"
                                                                  value="{{ $user->email }}" placeholder="your@email.com">
                                                                @if ($errors->has('email'))
                                                                   <span class="help-block">
                                                                      <strong>{{ $errors->first('email') }}</strong>
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