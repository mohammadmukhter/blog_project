@extends('user_panel.frontend')
@section('frontend_section')

<div class="featured-post-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-8">
                	fdddddddfdfgdgdgdfgdfgdf
                </div>

                <div class="col-12 col-md-6 col-lg-4">
                    <!-- Single Featured Post -->
                    @foreach($post_data_limit as $value)
                    <div class="single-blog-post small-featured-post d-flex">
                        <div class="post-thumb">
                            <a href="{{ route('frontend.show',$value->post_id)}}"><img src="{{asset('image_upload/'. $value->image_path)}}" alt=""></a>
                        </div>
                        <div class="post-data">
                            <a href="#" class="post-catagory">{{$value->category_name}}</a>
                            <div class="post-meta">
                                <a href="{{ route('frontend.show',$value->post_id)}}" class="post-title">
                                    <h6>{{$value->title}}</h6>
                                </a>
                                <p class="post-date"><span>7:00 AM</span> | <span>April 14</span></p>
                            </div>
                        </div>
                    </div>
                    
                    @endforeach
                      

                    <!-- Single Featured Post -->
 
                </div>
            </div>
        </div>
    </div>

@stop