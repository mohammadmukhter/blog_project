<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CategoryModel;
use App\SubCategoryModel;
use App\PostModel;
use Validator;
use Session;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['category_data']= CategoryModel::all();
        $data['post_data']= PostModel::join('category','category.category_id','=','post.category_name_id_of_post')->join('sub_category','sub_category.sub_category_id','=','post.sub_category_name_id')->orderBy('post_id', 'desc')->get();
        
        return view('post',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $post= new PostModel;
        $valid= Validator::make($request->all(),$post->validation());
        if($valid->fails())
        {
            return back()->withErrors($valid);
        }
        else
        {
            $post->fill($request->all())->save();
            
                $file = $request->file('image');
                $name = rand(111111111,999999999) . '.' . $file->getClientOriginalExtension();
                $post->fill(['image_path'=>$name])->save();
                $request->file('image')->move("image_upload", $name);

            Session::flash('massage', 'Data Inserted Sucessfully'); 
            return back();
        }
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $single_data= PostModel::find($id);
        //print_r($single_data);
        return view('post_update',['data'=>$single_data]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $post_update= new PostModel;
        $post_update->find($id)->fill($request->all())->save();
        return redirect('post');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        PostModel::find($id)->delete();
        return back();
    }

    public function ajax_data(Request $request)
    {
       return SubCategoryModel::where('category_name_id',$request->category_name_id_of_post)->get();
            

    }
}
