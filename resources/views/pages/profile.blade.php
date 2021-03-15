@extends('layouts.main')

@section('content')
<style>
            .image-container {
            position: relative;
        }

        .image {
            opacity: 1;
            display: block;
            width: 100%;
            height: auto;
            transition: .5s ease;
            backface-visibility: hidden;
        }

        .middle {
            transition: .5s ease;
            opacity: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            text-align: center;
        }

        .image-container:hover .image {
            opacity: 0.3;
        }

        .image-container:hover .middle {
            opacity: 1;
        }
</style>
<div class="row">
            <div class="col-12">
                <div class="card">
                  <form action="{{ route('profile.update', Auth::user()->id) }}" method="post" enctype="multipart/form-data">
                     {{ csrf_field() }}
                     {{ method_field('PATCH') }}
                    <div class="card-body">
                        <div class="card-title mb-4">
                            <div class="d-flex justify-content-start">
                                <div class="image-container">
                                    @if(Auth::user()->profile)
                                      <img src="{{ asset('files/profile/') }}/{{Auth::user()->profile}}" id="imgProfile" style="width: 150px; height: 150px" class="img-thumbnail" /> 
                                    @else
                                      <img src="{{ asset('assets/images/profile/default.png') }}" id="imgProfile" style="width: 150px; height: 150px" class="img-thumbnail" />   
                                    @endif   
                                    <div class="middle">
                                        <input type="button" class="btn btn-secondary" id="btnChangePicture" value="Change" />
                                        <input type="file" style="display: none;" id="profilePicture" name="profile" />
                                    </div>
                                </div>
                                <div class="userData ml-3">
                                    <h2 class="d-block" style="font-size: 1.5rem; font-weight: bold"><a href="javascript:void(0);">{{ Auth::user()->name }}</a></h2>
                                    <h6 class="d-block"><a href="javascript:void(0)">1,500</a> Video Uploads</h6>
                                    <h6 class="d-block"><a href="javascript:void(0)">300</a> Blog Posts</h6>
                                </div>
                                <div class="ml-auto">
                                    <input type="button" class="btn btn-primary d-none" id="btnDiscard" value="Discard Changes" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" aria-controls="basicInfo" aria-selected="true">Info</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="myactivities-tab" data-toggle="tab" href="#myactivities" role="tab" aria-controls="myactivities" aria-selected="false">Activities</a>
                                    </li>
                                </ul>
                                <div class="tab-content ml-1" id="myTabContent">
                                    <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label class="font-weight-medium">Full Name</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                <input type="text" class="form-control" name="name" value="{{ Auth::user()->name }}">
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label class="font-weight-medium">Username</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                <input type="text" class="form-control" name="username" value="{{ Auth::user()->username }}">
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label class="font-weight-medium">Email</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                <input type="email" class="form-control" name="email" value="{{ Auth::user()->email }}">
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col ml-auto">
                                             <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
                                      </form>
                                    </div>
                                    <div class="tab-pane fade" id="myactivities" role="tabpanel" aria-labelledby="myactivities-tab">
                                    <div class="table-responsive">
                                    <table id="zero_config" class="table no-wrap v-middle mb-0">
                                        <thead>
                                            <tr class="border-0">
                                                <th class="border-0 font-14 font-weight-medium">No.</th>
                                                <th class="border-0 font-14 font-weight-medium">Subject
                                                </th>
                                                <th class="border-0 font-14 font-weight-medium px-2">URL
                                                </th>
                                                <th class="border-0 font-14 font-weight-medium">Ip</th>
                                                <th class="border-0 font-14 font-weight-medium">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($log_activities as $log_activity)
                                            <tr>
                                                <td class="border-top-0 px-2 py-4">{{ $tb_id++ }}</td>
                                                <td class="border-top-0 px-2 py-4">
                                                    <div class="d-flex no-block align-items-center">
                                                        <div class="mr-3">
                                                            @if(Auth::user()->profile)
                                                                <img
                                                                    src="{{ asset('files/profile/') }}/{{Auth::user()->profile}}"
                                                                    alt="user" class="rounded-circle" width="45"
                                                                    height="45" /></div>
                                                            @else
                                                                <img
                                                                    src="{{ asset('assets/images/profile/default.png') }}"
                                                                    alt="user" class="rounded-circle" width="45"
                                                                    height="45" /></div>
                                                            @endif
                                                        <div class="">
                                                            <h5 class="text-dark mb-0 font-16 font-weight-medium">{!! $log_activity->subject !!}</h5>
                                                            <span class="text-muted font-14"></span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="border-top-0 text-muted px-2 py-4 font-14">
                                                    <span class="badge badge-warning">{{ $log_activity->url }}</span>
                                                </td>
                                                <td class="border-top-0 px-2 py-4">
                                                    <span class="badge badge-success">{{ $log_activity->ip }}</span>
                                                </td>
                                                <td
                                                    class="border-top-0 text-center font-weight-medium text-muted px-2 py-4">
                                                    <button class="btn btn-sm btn-circle btn-warning waves-effect waves-light" type="button"><span class="btn-label"><i class="far fa-trash-alt"></i></span></button>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                  </form>

                </div>
            </div>
        </div>
@endsection