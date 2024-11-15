<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    {{-- base Css --}}
    <link rel="stylesheet" href="{{ asset('css/public.css') }}">
    {{-- <link rel="stylesheet" href="{{ asset('css/test/publictestlatest.css') }}"> --}}
    <style>
        .ck .ck-editor__editable pre[data-language]:after {
            content: attr(data-language);
            position: absolute;
        }
    </style>
    <title>Manual</title>
</head>

<body style="{{ $style }} --box-shadow: 0 1px 2px 0 var(--mc-box-border),0 1px 3px 1px var(--mc-box-border);
--header-shadow: 0 0.45rem 1rem var(--mc-header-shadow);
--header-light-shadow: 0 0.3rem 1rem var(--mc-header-shadow)">
    <div id="wrapper">
        <div class="sticky-header" id="header">
            <button id="menu-btn">
                <svg viewBox="0 0 100 70" width="2rem" height="1rem" style="fill: var(--mc-primary-foreground);">
                    <rect width="100" height="10" ></rect>
                    <rect y="30" width="100" height="10"></rect>
                    <rect y="60" width="100" height="10"></rect>
                </svg>
            </button>
            <h3>Tiger Products Manual</h3>
        </div>
        <aside>
            <div class="sidebar">
                <h2>Chapters</h2>
                <hr class="menu-divider">
                <ul class="nav-links">
                    <li class="parent">
                        <a class="mitem active" onClick="welcomePage(this)">
                            <svg height="0.4rem" width="0.4rem">
                                <circle cx="0.2rem" cy="0.2rem" r="0.2rem" />
                            </svg>
                            <h4>Welcome</h4>
                        </a>
                    </li>
                    @if ($chapters->count())
                        @foreach ($chapters as $chapter)
                            @if (isset($groupedTopics[$chapter->id]))
                                <li class="parent">
                                    <a class="mitem hasChild" onClick="activate(this)">
                                        <svg height="0.4rem" width="0.4rem">
                                            <circle cx="0.2rem" cy="0.2rem" r="0.2rem" />
                                        </svg>
                                        <h4>{{ $chapter->title }}</h4>
                                    </a>
                                    <ul class="sub-menu">
                                        @foreach ($groupedTopics[$chapter->id]->sortBy('order') as $topic)
                                        <li class="subparent"><a onclick="changePage({{ $topic->id }}, '{{ $chapter->title }}',this )">{{ $topic->title }}</a>
                                            <ul class="subsub" style= "margin-left:2rem;">
                                            </ul>
                                        </li>
                                        @endforeach
                                    </ul>
                                </li>
                            @endif
                        @endforeach
                    @endif
                </ul>

            </div>
        </aside>
        <main>
            {{-- <link rel="stylesheet" href="{{ asset('css/test2.css') }}"> --}}
            <link rel="stylesheet" href="{{ asset('css/public/skin.css') }}">
            <link rel="stylesheet" href="{{ asset('css/ckeditor/demo.css') }}">
            <link rel="stylesheet" href="{{ asset('css/ckeditor/content.css') }}">
            <h3 class="page-title" id="page-title">Welcome to the Tiger Manual</h3>
            {{-- HERE --}}
            {{-- <div class="content" id="content">  --}}
            <div class="ck-content" id="content"> 
            <div class="ck-restricted-editing_mode_standard ck ck-content  ck-editor__editable ck-rounded-corners ck-editor__editable_inline ck-blurred" id="content" role="presentation">
                <i class='bx bx-menu'></i>
                <span class="text">Tiger install documentation</span>
            </div>
        </main>
    </div>


    <script src="{{ asset('js/menu.js') }}"></script>
    <script src="{{ asset('js/editor/json-to-html.js') }}"></script>
    @include('base.partials.ckeditorDependencies')
    <script>
        function activate(el) {
            var isActive = el.classList.contains('active');
            let item = document.querySelectorAll(".mitem");
            let subItem = document.querySelectorAll(".subsub");
            const items = document.querySelectorAll(".mitem");
            for (var i = 0; i < subItem.length; i++) {
                subItem[i].innerHTML = ''
            }
            for (var i = 0; i < item.length; i++) {
                item[i].classList.remove('active');
                item[i].closest(".parent").classList.remove("showMenu");
            }
            if (!isActive) {
                el.classList.add('active');
                if (el.classList.contains("hasChild")) {
                    el.closest(".parent").classList.add("showMenu");
                }
            }
	    window.location.replace("#");
            if (typeof window.history.replaceState == 'function') {
                history.replaceState({}, '', window.location.href.slice(0, -1));
            }
          
        }

        const parser = new edjsParser(undefined, undefined, undefined);
        var pageTitle = document.getElementById("page-title");
        var content = document.getElementById("content");
        var welcomeContent = @json($welcome);
        var topics = @json($topics);
      
        // content.innerHTML = parser.parse(JSON.parse(welcomeContent));
        content.innerHTML = welcomeContent;
        function welcomePage(el) {
            activate(el)
            pageTitle.innerHTML = 'Welcome to the Tiger Manual'
            // content.innerHTML = parser.parse(JSON.parse(welcomeContent));
            content.innerHTML = welcomeContent;
        }
        console.log(pageTitle);
        // console.log(welcomeContent);
  
        
            function changePage(topicId, title, el) {
	        window.location.replace("#");
            if (typeof window.history.replaceState == 'function') {
                history.replaceState({}, '', window.location.href.slice(0, -1));
            }
            var item = topics.find(item => item.id === topicId);
     
            pageTitle.innerHTML = title +
                `<svg style="margin: 0 0.5rem;" width="0.8rem" height="0.8rem" viewBox="0 0 15 36" ><path d="M3 4 L15 20 L3 36 L0 34 L10.5 20 L0 6"></path></svg>` +
                item.title;

            content.innerHTML = item.html_body;


            // ----------------------------------------------------------------

            // const html_bodystr = item;
            // const jsonString = JSON.stringify(html_bodystr);

            // console.log(html_bodystr);

            // var results = html_bodystr.html_body;
            // console.log(results);
            // const parser = new DOMParser();
            // const htmlDoc = parser.parseFromString(results, 'text/html');
            // console.log(htmlDoc);
            // const headers = htmlDoc.querySelectorAll('h1, h2, h3, h4, h5, h6');
            // // console.log(headers);
            // subStr = ''

            // for (let i = 0; i < headers.length; i++) {
            //     const hd = headers[i];
            //     subStr = subStr+"<li style='list-style: circle'><a style='font-size: 0.75em; height: 1.5rem;' href='#"+hd.innerText.toLowerCase().replace(/ /g,'')+"'>"+hd.innerText+'</a></li>'
            // }


            // subpar = el.closest(".subparent")
            // subpar.querySelector('.subsub').innerHTML = subStr;
}
        

    </script>
</body>

</html>
