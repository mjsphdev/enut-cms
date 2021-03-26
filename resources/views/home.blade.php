@extends('layouts.main')

@section('content')
                <div class="card-group">
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">{{ $ff }}</h2>
                                    </div>
                                    <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Facts & Figures</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-muted"><i data-feather="book"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <h2 class="text-dark mb-1 font-weight-medium">{{ $pr }}</h2>
                                    <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Presentations
                                    </h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-muted"><i data-feather="monitor"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">{{ $puf }}</h2>
                                    </div>
                                    <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Public Use Files</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-muted"><i data-feather="server"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <h2 class="text-dark mb-1 font-weight-medium">{{ $infographics }}</h2>
                                    <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Infographics</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-muted"><i data-feather="info"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-4">
                                    <h4 class="card-title">CMS Activities</h4>
                                    <!-- <div class="ml-auto">
                                        <div class="dropdown sub-dropdown">
                                            <button class="btn btn-link text-muted dropdown-toggle" type="button"
                                                id="dd1" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                <i data-feather="more-vertical"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dd1">
                                                <a class="dropdown-item" href="#">Insert</a>
                                                <a class="dropdown-item" href="#">Update</a>
                                                <a class="dropdown-item" href="#">Delete</a>
                                            </div>
                                        </div>
                                    </div> -->
                                </div>
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
                                                <th class="border-0 font-14 font-weight-medium">At</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($cms_activities as $cms_activity)
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
                                                            <h5 class="text-dark mb-0 font-16 font-weight-medium">{!! $cms_activity->subject !!}</h5>
                                                            <span class="text-muted font-14"></span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="border-top-0 text-muted px-2 py-4 font-14">
                                                    <span class="badge badge-warning">{{ $cms_activity->url }}</span>
                                                </td>
                                                <td class="border-top-0 px-2 py-4">
                                                    <span class="badge badge-success">{{ $cms_activity->ip }}</span>
                                                </td>
                                                <td
                                                    class="border-top-0 text-center font-weight-medium text-muted px-2 py-4">
                                                    {{ \Carbon\Carbon::parse($cms_activity->created_at)->diffForHumans()}}
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
@endsection
