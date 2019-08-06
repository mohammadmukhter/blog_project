@extends ('user_panel.frontend')
@section ('frontend_section')

    <div class="featured-post-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-8">
                    <div class="row">
                        <!-- Single Featured Post -->
            @foreach ($post_data as $value)
                        <div class="col-12 col-lg-6">
                             <div class="single-blog-post featured-post-2">
                                <div class="post-thumb">
                                    <a href="#"><img style="width: 100%; height: 200px;" src="{{asset('image_upload/'. $value->image_path)}}" alt=""></a>
                                </div>
                                <div class="post-data">
                                    <a href="#" class="post-catagory">{{$value->category_name}}</a>
                                    <div class="post-meta">
                                        <a href="{{ route('frontend.show',$value->post_id)}}" class="post-title">
                                            <h6>{{str_limit($value->short_description, 100)}}</h6>
                                        </a>
                                        <!-- Post Like & Post Comment -->
                                        <div class="d-flex align-items-center">
                                            <a href="#" class="post-like"><img src="{{asset('user_panel_asset/img/core-img/like.png')}}" alt=""> <span>{{$value->views}}</span></a>
                                            <a href="#" class="post-comment"><img src="{{asset('user_panel_asset/img/core-img/chat.png')}}" alt=""> <span>10</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
            @endforeach

                    </div>
                    <div style="margin-left: 200px;">
                    {{ $post_data->links() }}
                    </div>
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
                                <p class="post-date"><span>views:<span style="color:green; font-weight: bold;">{{$value->views}}</span></span> | <span>April 14</span></p>
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