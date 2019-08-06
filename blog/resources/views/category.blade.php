
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


<form action="{{route('category.store')}}" method="post">
  @csrf

  <div class="form-group">
    <label >Category Name:</label>
    <input type="text" class="form-control" name="category_name">

    <label >Category Description:</label>
    <input type="text" class="form-control" name="category_description">

    <label> Status: </label>
    <select class="form-control" name="category_status">
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
    <th>Category Description</th>
    <th>Status</th>
    <th>Action</th>
  </tr>
  
  @foreach($data as $key => $value)

  <tr>
    <td>{{$key+1}}</td>
    <td>{{$value->category_name}}</td>
    <td>{{$value->category_description}}</td>
    <td>
      @if($value->category_status=='Active')
      <span class="text-success" style="font-weight: bold;">{{$value->category_status}}</span>
      @else
      <span class="text-danger" style="font-weight: bold;">{{$value->category_status}}</span>
      @endif
    </td>
    <td>
      <form action="{{route('category.destroy',$value->category_id)}}" method="post">
        @csrf
        @method('delete')
        <button class="btn btn-danger" onclick="return confirm('are you sure?')"> Delete </button>        
      </form>

      <form action="{{route('category.edit',$value->category_id)}}" method="get">
        <button class="btn btn-warning"> Edit </button>        
      </form>

      <form action="{{route('category.show',$value->category_id)}}" method="post">
        @csrf
        @method('get')

        @if($value->category_status=='Active')
        <button class="btn btn-info"> Inactive </button>
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
{{ $data->links() }}
</div>

@stop