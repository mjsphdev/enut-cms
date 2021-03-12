@extends('layouts.main')

@section('content')

<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Create Page Content</h4>
                                <hr/>
                                <form action="{{ route('page-contents.store') }}" method="post">
                                    {{ csrf_field() }}
                                    <div class="form-body">
                                        <div class="form-group {{ $errors->has('page_belongs') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Belongs To Page</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                        <select id="page_belongs" name="page_belongs" class="form-control">
                                                             <option selected disabled>Choose...</option>
                                                             @foreach ($pageBelongs as $page)
                                                               <option value="{{$page->id}}">{{$page->page_title}}</option>
                                                             @endforeach
                                                        </select>
                                                              @if ($errors->has('page_belongs'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('page_belongs') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="form-group {{ $errors->has('content') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Content</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <textarea class="form-control" name="content" id="pageeditor"
                                                                value="{{ old('content') }}" placeholder="Content">
                                                            </textarea>
                                                            <input type="hidden" value="{{ old('content') }}" id="pageContent">
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