@extends('backend.backend')
@section('main_section')
<div class="container">
<form action="{{route('sub_category.update',$single_data->sub_category_id)}}" method="post">
  @csrf
  @method('put')
  <div class="form-group">

    <label >Sub-Category Name:</label>
    <input type="text" class="form-control" name="sub_category_name" value="{{$single_data->sub_category_name}}">

      <label> Category Name: </label>
      <select class="form-control" name="category_name_id" readonly>
        <option value="{{$single_data->category_name_id}}">{{$single_data->category_name_id}}</option>     
      </select>
    <label >Sub-Category Description:</label>
    <input type="text" class="form-control" name="sub_category_description" value="{{$single_data->sub_category_description}}">


    <label> Status: </label>
    @if($single_data->sub_category_status=='Active')
    <select class="form-control" name="sub_category_status">
      <option value="Active">Active</option>
      <option value="Inactive">Inactive</option>
    </select>
    @else
    <select class="form-control" name="sub_category_status">
      <option value="Inactive">Inactive</option>
      <option value="Active">Active</option>
    </select>
    @endif

  </div>
  <button type="submit" class="btn btn-success">Submit</button>
</form>
</div>

@stop