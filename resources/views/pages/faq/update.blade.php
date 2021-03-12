@extends('layouts.main')

@section('content')

<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Update FAQ</h4>
                                <hr/>
                                <form action="{{ route('faqs.update', $faq->id) }}" method="post">
                                    {{ csrf_field() }}
                                    {{ method_field('PATCH') }}
                                    <div class="form-body">

                                        <div class="form-group">
                                            <select id="page_belongs" name="page_belongs" class="form-control" hidden>
                                                 <option selected disabled>Choose...</option>
                                                 @foreach ($pageBelongs as $page)
                                                   <option value="{{$page->id}}" {{$page->id == '9' ? 'selected' : ''}} readonly>{{$page->page_title}}</option>
                                                 @endforeach
                                            </select>
                                        </div> 
                                        
                                        <div class="form-group {{ $errors->has('question') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Question</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <textarea class="form-control" name="question" value="" id="question" rows="3">
                                                            </textarea>
                                                            <input type="hidden" value="{{ $faq->question }}" id="questionContent">
                                                              @if ($errors->has('question'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('question') }}</strong>
                                                                 </span>
                                                              @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group {{ $errors->has('answer') ? ' has-error' : '' }}">
                                            <div class="row">
                                                <label class="col-lg-2">Answer</label>
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <textarea class="form-control" name="answer"  id="answer" rows="3">
                                                            </textarea>
                                                            <input type="hidden" value="{{ $faq->answer }}" id="answerContent">
                                                              @if ($errors->has('answer'))
                                                                 <span class="help-block">
                                                                    <strong class="text-danger">{{ $errors->first('answer') }}</strong>
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