
@extends('backend.backend')
@section('main_section')

<div class="container">

  @if(Session::has('massage'))
  <p class="alert alert-info">{{ Session::get('massage') }}</p>
  @endif

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif


<form action="{{route('sub_category.store')}}" method="post">
  @csrf
  <div class="form-group">

    <label >Sub-Category Name:</label>
    <input type="text" class="form-control" name="sub_category_name">

      <label> Category Name: </label>
      <select class="form-control" name="category_name_id">
        <option>---select category name---</option>
        @foreach($category_model_data as $category_data)
        <option value="{{$category_data->category_id}}">{{$category_data->category_name}}</option>
        @endforeach
      </select>


    <label >Sub-Category Description:</label>
    <input type="text" class="form-control" name="sub_category_description">

    <label> Status: </label>
    <select class="form-control" name="sub_category_status">
      <option value="Active">Active</option>
      <option value="Inactive">Inactive</option>
    </select>

  </div>
  <button onclick="this.disabled=true;this.value='Sending, please wait...';this.form.submit();" type="submit" class="btn btn-success">Submit</button>
</form>


<table class="table table-bordered table-hover">
  <tr>
    <th>Sl</th>
    <th>Category Name</th>
    <th>Sub-Category Name</th>
    <th>Sub-Category Description</th>
    <th>Status</th>
    <th>Action</th>
  </tr>

@foreach($sub_category_data as $key => $value)
  <tr>
    <td>{{$key+1}}</td>
    <td>{{$value->category_name}}</td>
    <td>{{$value->sub_category_name}}</td>
    <td>{{$value->sub_category_description}}</td>
    <td>
      @if($value->sub_category_status=='Active')
      <span class="text-success" style="font-weight: bold;">{{$value->sub_category_status}}</span>
      @else
      <span class="text-danger" style="font-weight: bold;">{{$value->sub_category_status}}</span>
      @endif
    </td>
    <td>
      <form action="{{route('sub_category.destroy',$value->sub_category_id)}}" method="post">
        @csrf
        @method('delete')
      <button class="btn btn-danger" onclick="return confirm('are you sure?')"> Delete </button>
      </form>

      <form action="{{route('sub_category.edit',$value->sub_category_id)}}" method="get">
        <button class="btn btn-warning">Edit</button>
      </form>

      <form action="{{route('sub_category.show',$value->sub_category_id)}}" method="post">
        @csrf
        @method('get')

        @if($value->sub_category_status=='Active')
        <button class="btn btn-info">Inactive</button>
        @else
        <button class="btn btn-success"> Active </button>
        @endif

      </form>
    </td>
  </tr>
@endforeach
</table>

</div>

<div style="margin-left: 500px;">
{{ $sub_category_data->links() }}
</div>
@stop