@extends('backend.backend')
@section('main_section')
<div class="container">
<form action="{{route('post.update',$data->post_id)}}" method="post">
  @csrf
  @method('put')
  <div class="form-group">

    <label> Title: </label>
    <input type="text" class="form-control title" name="title" value="{{$data->title}}">

    <label> Category Name: </label>
    <select class="form-control" name="category_name_id_of_post">
      <option value="{{$data->category_name_id_of_post}}">{{$data->category_name_id_of_post}}</option>
    </select>

    <label> Sub Category Name: </label>
    <select class="form-control" name="sub_category_name_id">
     <option value="{{$data->sub_category_name_id}}">{{$data->sub_category_name_id}}</option>
    </select>

    <label >Short Description:</label>
    <input type="text" class="form-control" name="short_description" value="{{$data->short_description}}">

    <label >Long Description:</label>
    <input type="text" class="form-control" name="long_description" value="{{$data->long_description}}">

    <label >Image:</label>
    <input type="file" class="form-control" name="image" id="profile-img">
    <!-- <img src="" id="profile-img-tag" width="200px" /> -->

  </div>
  <button type="submit" class="btn btn-success submit">Submit</button>
</form>
</div>

<!-- <script type="text/javascript">
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
</script> -->
@stop