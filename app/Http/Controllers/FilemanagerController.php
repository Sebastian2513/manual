<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;

class FilemanagerController extends Controller
{
    public function index()
    {
        $filemanage = Setting::where('key', 'filemanager-page')->first();
        return view('layout.filemanager', [
            'dashActive' => false,
            'tempActive' => false,
            'styleActive' => false,
            'welcomeActive' => false,
            'fileActive' => true,
            'downloadActive' => false,
            'content' => $filemanage,
            'darkTheme' => parent::getTheme(),
            'recents' => parent::getRecent()
        ]);
    }

    public function save(Request $request)
    {
        if (Setting::where('key','filemanager-page')->update(array('value' => $request->savedData))) {
            return response('Success', 201);
        } else {
            return response('Error', 406);
        }
    }
}
