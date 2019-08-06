
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

<form action="{{route('post.store')}}" method="post" enctype="multipart/form-data">
  @csrf
  <div class="form-group">

    <label> Title: </label>
    <input type="text" class="form-control title" name="title">

    <label> Category Name: </label>
    <select class="form-control category_name_id_of_post" name="category_name_id_of_post">
      <option> -----select category name----- </option>
          @foreach($category_data as $value)
      <option value="{{$value->category_id}}">{{$value->category_name}}</option>
          @endforeach
    </select>

    <label> Sub Category Name: </label>
    <select class="form-control sub_category_name_id" name="sub_category_name_id">
     <option>----select first category name---- </option>
    </select>

    <label >Short Description:</label>
    <input type="text" class="form-control" name="short_description">

    <label >Long Description:</label>
    <input type="textarea" class="form-control" name="long_description">

    <label >Image:</label>
    <input type="file" class="form-control" name="image" id="profile-img">
    <img src="" id="profile-img-tag" width="200px" />

  </div>
  <button onclick="this.disabled=true;this.value='Sending, please wait...';this.form.submit();" type="submit" class="btn btn-success submit">Submit</button>
</form>


<table class="table table-bordered table-hover">
  <tr>
    <th>Sl</th>
    <th>Title</th>
    <th>Category Name</th>
    <th>Sub Category Name</th>
    <th>Short Description</th>
    <th>Long Description</th>
    <th>Image</th>
    <th>Action</th>
  </tr>

@foreach($post_data as $key => $p_value)
  <tr>
    <td>{{$key+1}}</td>
    <td>{{$p_value->title}}</td>
    <td>{{$p_value->category_name}}</td>
    <td>{{$p_value->sub_category_name}}</td>
    <td>{{str_limit($p_value->short_description, 20)}}</td>
    <td>
      {{str_limit($p_value->long_description, 20)}}
    </td>
    <td> <img style="width: 180px; height: 100px;" src="{{ asset('image_upload/'. $p_value->image_path) }}"> </td>
    <td>
      <form action="{{route('post.destroy',$p_value->post_id)}}" method="post">
        @csrf
        @method('delete')
        <button class="btn btn-danger" onclick="return confirm('are you sure?')">Delete</button>
      </form>

      <form action="{{route('post.edit',$p_value->post_id)}}" method="get">
        <button class="btn btn-warning">Edit</button>
      </form>
    </td>
  </tr>
@endforeach
</table>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
 $(document).ready(function(){

  $('.category_name_id_of_post').change(function(){
    var category_name_id_of_post= $('.category_name_id_of_post').val();
   
    $.ajax({
      url:"post_controller_ajax",
      type:'post',
      data:{
         "_token": "{{ csrf_token() }}",
        'category_name_id_of_post':category_name_id_of_post,
      },
      success:function(data)
      {
          console.log(data);
            if(data[0])
              {
                  $(".sub_category_name_id").html("");
                  for(var i=0;i<=data.length;i++)
                  {
                      $(".sub_category_name_id").append('<option value='+data[i].sub_category_id+'>'+data[i].sub_category_name+'</option>');
                  }
              }
              else
              {
                   $(".sub_category_name_id").html("");
                   $(".sub_category_name_id").append("<option>No Data Found</option>");
              }

            }
    });
  });
  
 });  

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#profile-img-tag').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#profile-img").change(function(){
        readURL(this);
    });
</script>

@stop