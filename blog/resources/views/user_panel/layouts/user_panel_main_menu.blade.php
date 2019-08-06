        <div class="newspaper-main-menu" id="stickyMenu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="newspaperNav">

                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html"><img src="{{asset('user_panel_asset/img/core-img/logo.png')}}" alt=""></a>
                        </div>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="{{route('frontend.index')}}">Home</a></li>

                                    @foreach($category_data as $category_data)
                                        <li class="category_id" value="{{$category_data->category_id}}"><a href="#">
                                            {{$category_data->category_name}}</a>
                                        </li>
                                    @endforeach    

                                </ul>

                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>

<script type="text/javascript">
    
$(document).ready(function(){
  $(document).on("mouseover",".category_id", function(){
    var value = $(this).val();
    alert(value);
  });
});

</script>