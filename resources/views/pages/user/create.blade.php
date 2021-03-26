@extends('layouts.main')

@section('content')
<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Create User</h4>
                                <hr/>
                                <form action="{{ route('users.store') }}" method="post">
                                    {{ csrf_field() }}
                                    <div class="form-body">
                                        <div class="form-group {{ $errors->has('name') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Name</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <input type="text" class="form-control" name="name"
                                                                value="{{ old('name') }}" placeholder="Name">
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
                                                                 value="{{ old('username') }}" placeholder="Username">
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
                                                                  value="{{ old('email') }}" placeholder="your@email.com">
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