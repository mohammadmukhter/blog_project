<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostModel extends Model
{
    protected $table= 'post';
    protected $primaryKey= 'post_id';
    protected $fillable= ['title','category_name_id_of_post','sub_category_name_id','short_description','long_description','image_path','views'];

    public function validation()
    {
    	return [
    		'title'=>'required',
    		'category_name_id_of_post'=>'required',
    		'sub_category_name_id'=>'required',
    		'short_description'=>'required',
    		'long_description'=>'required'
    	];
    }
}
