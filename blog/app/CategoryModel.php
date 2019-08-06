<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryModel extends Model
{
    protected $table='category';
    protected $primaryKey='category_id';
    protected $fillable=['category_name','category_description','category_status'];

    public function validation()
    {
    	return [
    		"category_name"=>"required",
    		"category_description"=>"required",
    	];
    }
}
