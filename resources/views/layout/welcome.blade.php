@extends('base.app')
@section('title')
    <title>Editor</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('css/welcome.css') }}">
    <link rel="stylesheet" href="{{ asset('css/ckeditor/demo.css') }}">
    <link rel="stylesheet" href="{{ asset('css/ckeditor/content.css') }}">
@endsection

@section('content')
<sub class="test">
        <div class="title">
            <h2><span class="welcome">Welcome page</span></h2>
            <button class="save btn" id="save-btn">Save changes</button>
        </div>
<body>
        <div class="editor5">
            <div class ="cke5document">
                <link rel="stylesheet" href="{{ asset('css/ckeditor/customwhite.css') }}" type="text/css">
                <textarea id="ckeditor" style="display:none"></textarea>
            </div>
        </div>
        
</body>
</sub>
@endsection

@section('script')
    
    @include('base.partials.ckeditorDependencies')
    @include('base.partials.ckeditor.tools')
    {{-- @include('base.partials.ckeditor.testT') --}}

    <script>
        
	    var csrf = "{{ csrf_token() }}";
        var data = @json($content);
        var saveButton = document.getElementById('save-btn');
        var editor;

        ClassicEditor.create(document.getElementById("ckeditor"), CKEditorConfig) 
        .then(newEditor => {
            editor = newEditor
            newEditor.setData(data);
            //editor.setReadOnly(true);
        });
        // ClassicEditor
        //     .create( document.querySelector( '#editor' ) )
        //     .catch( error => {
        //         console.error( error );
        //     } );
        
        saveButton.addEventListener('click', function (){
            fetch("/welcome/editor/save",{
                method: "POST",
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrf
                },
                body: JSON.stringify({ 'savedData': editor.getData() })
            }).then(res => {
                if (res.status == 201) {
                    toastr.info("The content was saved successfully!");
                } else {
                    toastr.error("There was an error saving the content!");
                }
            });
        })
        CKFinder.editor(editor);
    </script>
@endsection
