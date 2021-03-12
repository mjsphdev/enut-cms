<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UploadBrochure extends Model
{
    protected $fillable = [
        'id', 'bt_id','brochure_group', 'page_no', 'brochure_filename', 'province',
    ];
}
