@extends('layouts.auth')

@section('content')
<div class="auth-box row">
                <div class="col-lg-7 col-md-5 modal-bg-img" style="background-image: url(assets/images/logos/banner-bg.jpg);">
                </div>
                <div class="col-lg-5 col-md-7 bg-white">
                    <div class="p-3">
                        <div class="text-center">
                            <img src="{{ asset('assets/images/logos/e-icon.png') }}" height="80px" alt="wrapkit">
                        </div>
                        <h2 class="mt-3 text-center">Sign In</h2>
                        <form class="mt-4" method="POST" action="{{ route('login') }}">
                                {{ csrf_field() }}
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group {{ $errors->has('email') ? ' has-error' : '' }}">
                                        <label class="text-dark" for="uname">Email</label>
                                        <input class="form-control" id="uname" type="email" name="email" value="{{ old('email') }}" 
                                            placeholder="your@email.com">
                                        @if ($errors->has('email'))
                                            <span class="help-block">
                                                <strong class="text-danger">{{ $errors->first('email') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group {{ $errors->has('password') ? ' has-error' : '' }}">
                                        <label class="text-dark" for="pwd">Password</label>
                                        <input class="form-control" id="pwd" type="password" name="password" 
                                            placeholder="Password">

                                        @if ($errors->has('password'))
                                            <span class="help-block">
                                                <strong>{{ $errors->first('password') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-lg-12 text-center">
                                    <button type="submit" class="btn btn-block btn-dark">Sign In</button>
                                </div>
                             
                                <div class="col-lg-12 text-center mt-5">
                                    Don't have an account? <a href="{{ route('register') }}" class="text-danger">Sign Up</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
@endsection