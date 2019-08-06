<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CategoryModel;
use App\SubCategoryModel;
use App\PostModel;
use View;
use DB;
use Session;

class FrontEndController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $for_slider= PostModel::join('category','category.category_id','=','post.category_name_id_of_post')->orderBy('post_id', 'desc')->limit(3)->get();
        $post_data= PostModel::join('category','category.category_id','=','post.category_name_id_of_post')->orderBy('post_id', 'desc')->paginate(4);
        $post_data_limit= PostModel::join('category','category.category_id','=','post.category_name_id_of_post')->orderBy('post_id', 'desc')->limit(5)->get();
        $category_data=CategoryModel::all();
       

        View::share(['post_data'=>$post_data]);
        View::share(['post_data_limit'=>$post_data_limit]);
        View::share(['for_slider'=>$for_slider]);
        View::share(['category_data'=>$category_data]);
        //View::share(['sub_category_data'=>$sub_category_data]);


    }

    public function index()
    {
         $sub_category_data=SubCategoryModel::all();
        return view('user_panel.layouts.user_panel_content');
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $details_data = PostModel::join('category','category.category_id','=','post.category_name_id_of_post')->orderBy('post_id', 'desc')->join('sub_category','sub_category.sub_category_id','=','post.sub_category_name_id')->find($id);

            $post= PostModel::find($id);
            $post->update(['views'=> $post->views + 1]);

                        // $client  = @$_SERVER['HTTP_CLIENT_IP'];
                        // $forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
                        // $remote  = $_SERVER['REMOTE_ADDR'];

                        // if(filter_var($client, FILTER_VALIDATE_IP))
                        // {
                        //     $ip = $client;
                        // }
                        // elseif(filter_var($forward, FILTER_VALIDATE_IP))
                        // {
                        //     $ip = $forward;
                        // }
                        // else
                        // {
                        //     $ip = $remote;
                        // }

                       

        // dd($ip);              
        return view('user_panel/details_news',['details_data'=>$details_data]);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    
}
