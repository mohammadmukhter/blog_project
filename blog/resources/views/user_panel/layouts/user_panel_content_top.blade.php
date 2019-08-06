    <div class="hero-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-lg-8">
                    <!-- Breaking News Widget -->
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                      @foreach($for_slider as $image_data)
                      <li data-target="#myCarousel" data-slide-to="{{ $loop->index }}" class="{{ $loop->first ? 'active' : '' }}"></li>
                      @endforeach
                      
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                      @foreach ($for_slider as $image_data)
                      <div class="item {{ $loop->first ? ' active' : '' }}">
                        <a href="{{ route('frontend.show',$value->post_id)}}">
                        <img src="{{asset('image_upload/'. $image_data->image_path)}}" alt="" style="width:100%; height: 300px;">
                          <div class="carousel-caption" style=" color: #140100; text-shadow: 1px 1px #fff; font-weight: bold;">
                                <h3>{{$image_data->title}}</h3>
                            </div>
                      </a>
                      </div>
                            
                      @endforeach

                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                      <span class="glyphicon glyphicon-chevron-left"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                      <span class="glyphicon glyphicon-chevron-right"></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>

                <!-- Hero Add -->
                <div class="col-12 col-lg-4">
                    <div class="hero-add">
                        <a href="#"><img src="{{asset('user_panel_asset/img/bg-img/hero-add.gif')}}" alt=""></a>
                    </div>
                    <div class="hero-add">
                        <a href="#"><img src="{{asset('user_panel_asset/img/bg-img/hero-add.gif')}}" alt=""></a>
                    </div>
                    <div class="hero-add">
                        <a href="#"><img src="{{asset('user_panel_asset/img/bg-img/hero-add.gif')}}" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>