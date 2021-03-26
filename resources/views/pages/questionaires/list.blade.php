@extends('layouts.main')

@section('content')
<style>
.card-folders .card-body > .breadcrumb {
	 margin-left: -1.25em;
	 margin-right: -1.25em;
	 margin-top: -1.25em;
	 border-radius: 0;
}
 .folder-container {
	 text-align: center;
	 margin-left: 1rem;
	 margin-right: 1rem;
	 margin-bottom: 1.5rem;
	 width: 100px;
	 padding: 0;
	 align-self: start;
	 background: none;
	 border: none;
	 outline-color: transparent !important;
	 cursor: pointer;
}
 .folder-icon {
	 font-size: 3em;
	 line-height: 1.25em;
}
 .folder-icon-color {
	 color: #ffc107;
	 text-shadow: 1px 1px 0px #e0a800;
}
 .folder-name {
	 overflow-wrap: break-word;
	 word-wrap: break-word;
	 hyphens: auto;
}
 .flex-column .folder-container {
	 display: flex;
	 width: auto;
	 min-width: 100px;
	 text-align: left;
	 margin: 0;
	 margin-bottom: 1rem;
}
 .flex-column .folder-icon, .flex-column .folder-name {
	 display: inline-flex;
}
 .flex-column .folder-icon {
	 font-size: 1.4em;
	 margin-right: 1rem;
}
 .file-icon-color {
	 color: #999;
}
</style>
<div class="row">
    <div class="col-6 float-right">
        <a class="btn btn-success" href="{{ route('scanned-questionaires.create') }}">Upload Questionaires <i class="icon-folder-alt"></i></a>
    </div>
</div>
<br/>


  <div class="card card-folders">
    <div class="card-header">
      <div class="row align-items-center">
          <div class="col mr-auto">
            <h4 class="card-title m-0">Scanned Questionaires</h4>
          </div>
          <div class="col col-auto pr-2">
            <div class="btn-group">
              <button class="btn btn-sm btn-outline-secondary active" id="btn-list"><i class="fa fa-th-list fa-lg"></i></button>
              <button class="btn btn-sm btn-outline-secondary outline-none" id="btn-grid"><i class="fa fa-th-large fa-lg"></i></button>
            </div>
          </div>
        </div>
    </div>
    <!-- Folders Container -->
    <div class="card-body" id="foldersGroup">
      <ol class="breadcrumb">
        <li class="breadcrumb-item active"><i class="far fa-folder"></i>&nbsp; Folders</li>
        @if(!count($list_directories) > 0)
         @if(count($list_files) > 0)
            <li class="breadcrumb-item active">{{$list_files[0]['filepath']}}</li>
         @endif
        @endif
        <li class="breadcrumb-item"><a href="javascript:history.back()">Back</a></li>
      </ol>
      <div id="main-folders" class="d-flex align-items-stretch flex-wrap flex-column">
          @if(count($list_directories) > 0)
          @foreach($list_directories as $list_directory)
          <div class="d-inline-flex">
           <form action="{{ route('scanned-questionaires.index') }}" method="GET">
            <input type="text" name="directory" value="{{ $list_directory }}" hidden>
            <button type="submit" class="folder-container">
              <div class="folder-icon">
                <i class="fa fa-folder folder-icon-color"></i>
              </div>
              <div class="folder-name">{{$list_directory}}</div>
            </button>
           </form>
          </div>
          @endforeach
          @else
             @if(count($list_files) > 0)
               @foreach($list_files as $list_file)
                 <div class="d-inline-flex">
                   <button class="folder-container">
                     <div class="folder-icon">
                       <i class="fa fa-file file-icon-color"></i>
                     </div>
                     <div class="folder-name">{{$list_file['filename']}}</div>
                   </button>
                 </div> 
              @endforeach
             @else
                <h3>Empty</h3>
             @endif
          @endif
          
      </div>
    </div>
    <!-- End Folders Container -->
  </div>
@endsection