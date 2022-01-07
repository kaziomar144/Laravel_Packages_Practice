<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Image;

class ImageController extends Controller
{
    public function resizeImage(){
        return view('resize-img');
    }
    public function resizeImgSubmit(Request $request)
    {
        $image = $request->file;
        $filename =rand(11111, 99999) . '.' . $image->getClientOriginalExtension();;
        $image_resize = Image::make($image->getRealPath());
        $image_resize->resize(500, null, function ($constraint) {
            $constraint->aspectRatio();
        });
        $image_resize->save(public_path('images/'.$filename));
        return "Image has been resized successfully";
    }
}
