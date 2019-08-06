<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CategoryModel;
use Session;
use Validator;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data= CategoryModel::paginate(5);
        return view('category',['data'=>$data]);
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
        $category= new CategoryModel;
        $validate= Validator::make($request->all(),$category->validation());
        if($validate->fails())
        {
            return back()->withErrors($validate);
        }
        else
        {

        $inserted=$category->fill($request->all())->save();

            if($inserted)
            {
               Session::flash('massage', 'Data Inserted Sucessfully'); 
            }
            else
            {
                Session::flash('massage', 'something went wrong');
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
        
        $data= CategoryModel::find($id);
        if($data->category_status=='Active')
        {
            $data->update(['category_status'=>'Inactive']);
        }
        else
        {
            $data->update(['category_status'=>'Active']);
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
       $data['single_data']= CategoryModel::find($id);
       
       return view('category_update',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $up_data, $id)
    {
        $update_data= new CategoryModel;
        $update_data->find($id)->fill($up_data->all())->save();
        return redirect('category');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        CategoryModel::find($id)->delete();
        return back();
    }

}
