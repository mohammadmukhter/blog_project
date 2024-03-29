<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubCategoryModel extends Model
{
    protected $table='sub_category';
    protected $primaryKey='sub_category_id';
    protected $fillable=['sub_category_id','sub_category_name','category_name_id','sub_category_description','sub_category_status'];

    public function validation()
    {
    	return [
    		"sub_category_name"=>"required",
    		"category_name_id"=>"required",
    		"sub_category_description"=>"required"
    	];
    }
}
