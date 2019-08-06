@extends('backend.backend')
@section('main_section')

<div class="container">
<form action="{{route('category.update',$single_data->category_id)}}" method="post">
  @csrf
  @method('put')
  <div class="form-group">
    <label >Category Name:</label>
    <input type="text" class="form-control" name="category_name" value="{{$single_data->category_name}}">

    <label >Category Description:</label>
    <input type="text" class="form-control" name="category_description" value="{{$single_data->category_description}}">

    <label> Status: </label>
    @if($single_data->category_status=='Active')
    <select class="form-control" name="category_status">
      <option value="Active">Active</option>
      <option value="Inactive">Inactive</option>
    </select>
    @else
    <select class="form-control" name="category_status">
      <option value="Inactive">Inactive</option>
      <option value="Active">Active</option>
    </select>
    @endif
  </div>
  <button type="submit" class="btn btn-success">Submit</button>
</form>
</div>
@stop