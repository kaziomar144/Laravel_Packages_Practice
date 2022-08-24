<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ALL Student</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   
    <style>
        .heart {
          width: 100px;
          height: 100px;
          background: url("https://cssanimation.rocks/images/posts/steps/heart.png") no-repeat;
          background-position: 0 0;
          cursor: pointer;
          transition: background-position 1s steps(28);
          transition-duration: 0s;
        }
  
        .heart.is-active {
          transition-duration: 1s;
          background-position: -2800px 0;
        }
      </style>
    
</head>

<body>
<section style="padding-top: 60px">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ">
                <div class="card">
                    <div class="card-header">
                        All Users 
                    </div>
                    <div class="card-body">
                       <table class="table table-striped">
                            <thead>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th colspan="3">Action</th>
                            </thead>
                            <tbody>
                                @foreach ($users as $user)
                                <tr>
                                    <td>{{$user->id}}</td>
                                    <td>{{$user->name}}</td>
                                    <td>{{$user->email}}</td>
                                    {{-- <td class="px-6 py-4 text-sm text-secondary border ">
                                        <form action="{{ route('like.user', $user->id) }}"
                                            method="post">
                                            @csrf
                                            <button
                                                class="{{ $user->liked() ? 'bg-primary' : '' }} px-4 py-2 text-white bg-secondary">
                                                like {{ $user->likeCount }}
                                            </button>
                                        </form>

                                    </td>
                                    <td
                                        class="px-6 py-4 text-sm text-secondary border-b border-gray-200">
                                        <form action="{{ route('unlike.user', $user->id) }}"
                                            method="post">
                                            @csrf
                                            <button
                                                class="{{ $user->liked() ? 'd-block' : 'd-none'  }} px-4 py-2 text-white bg-red-600">
                                                unlike
                                            </button>
                                        </form>
                                    </td> --}}
                                    <td>
                                        <td>
                                            <form data-uid="{{$user->id}}" class="{{$user->liked() ? 'unlikeID' : 'likeID'}}">
                                                @csrf
                                                <button style="background: transparent; outline:none;" class="d-flex justify-content-center align-items-center border-0" type="submit">
                                                <div class="heart {{ $user->liked() ? 'is-active' : '' }} "></div>
                                                <span  data-likeCount="{{ $user->likeCount }}">{{ $user->likeCount }}</span>
                                                <input id="likeCount" type="hidden" value="{{ $user->likeCount }}">
                                                </button>
                                                
                                            </form>
                                        </td>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                       </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<a href="#" id="myID">Click Me</a>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

@if (Session::has('msg'))
<script>
    toastr.{!! Session::get('msg-type') !!}("{!! Session::get('msg') !!}");
</script>
@endif



<script>
    const debounce = (fn, delay) => {
        let timeoutID;
        return function(){
            if(timeoutID){
                clearTimeout(timeoutID);
            }
            timeoutID = setTimeout(() => {
                fn;
            }, delay);
        };
    };

   $(document).ready(function () {

    
    $(document).on('submit','.likeID',function(e) { 
        e.preventDefault();
        let _this = $(this);
        let _likeCount = _this.find('#likeCount').val();
        let uid = $(this).data('uid');
        let _token = $("input[name='_token']").val();
        // console.log(uid);
        $.ajax({
            type: "PUT",
            url: "{{route('like.user')}}",
            data: {
                id:uid,
                _token:_token
            },
            success: function (response) {
                if(response == true){
                    _likeCount++
                _this.addClass('unlikeID');
                _this.removeClass('likeID');
                _this.find('.heart').addClass("is-active");
                _this.find('#likeCount').val(_likeCount);
                _this.find('span').text(_likeCount);
                }
            }
        });
        
    });
    
    $(document).on('submit','.unlikeID', function (e) { 
        e.preventDefault();
        let _this = $(this);
        let _likeCount = _this.find('#likeCount').val();
        let uid = $(this).data('uid');
        let _token = $("input[name='_token']").val();
        // console.log(uid);
        $.ajax({
            type: "PUT",
            url: "{{route('unlike.user')}}",
            data: {
                id:uid,
                _token: _token
                
            },
            success: function (response) {
              if(response == false){
                _likeCount--
                _this.find('.heart').removeClass("is-active");
                _this.addClass('likeID');
                _this.removeClass('unlikeID');
                // toastr.success("user unlike");
                _this.find('#likeCount').val(_likeCount);
                _this.find('span').text(_likeCount);
              }
            }
        });
        
    });

    // $('#likeCount').click(function (e) { 
    //     e.preventDefault();
    //     let countVal = $(this).val();
    //     countVal += 1;
    // console.log(countVal);
    // });
   });
</script>

{{-- 
   <script>
    $(function() {
      $(".heart").on("click", function() {
        $(this).toggleClass("is-active");
      });
    });
   </script> --}}
</body>
</html>