<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CategoryModel;
use App\SubCategoryModel;
use Session;
use Validator;


class SubCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['category_model_data']= CategoryModel::all();
        $data['sub_category_data']= SubCategoryModel::join('category','sub_category.category_name_id','=','category.category_id')
            ->select('sub_category.*', 'category.category_name')->paginate(10);
        return view('sub_category',$data);
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
        $sub_category= new SubCategoryModel;
        $validate= Validator::make($request->all(),$sub_category->validation());
        if($validate->fails())
        {
            return back()->withErrors($validate);
        }
        else
        {
            $inserted=$sub_category->fill($request->all())->save();
            if($inserted)
            {
                Session::flash('massage','Data inserted successfully');
            }
            else
            {
                 Session::flash('massage','Something went wrong');
            }
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
        $data= SubCategoryModel::find($id);
        if($data->sub_category_status=='Active')
        {
            $data->update(['sub_category_status'=>'Inactive']);
        }
        else
        {
            $data->update(['sub_category_status'=>'Active']);
        }
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $single_data= SubCategoryModel::find($id);
        return view('sub_category_update',['single_data'=>$single_data]);
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
        $update_data= new SubCategoryModel;
        $update_data->find($id)->fill($request->all())->save();
        return redirect('sub_category');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        SubCategoryModel::find($id)->delete();
        return back();
    }
}
