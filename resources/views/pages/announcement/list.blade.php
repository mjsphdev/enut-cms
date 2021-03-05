@extends('layouts.main')

@section('content')
<div class="row">
    <div class="col-6 float-right">
        <a class="btn btn-success" href="{{ route('announcements.create') }}">Create Announcement <i class="icon-clock"></i></a>
    </div>
</div>
<br/>
<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Announcements</h4>
                                <div class="table-responsive">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
@endsection