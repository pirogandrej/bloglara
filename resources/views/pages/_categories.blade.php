<aside class="widget categories border pos-padding">
    <h3 class="widget-title text-center">Категории</h3>
    <ul>
        @foreach($categories as $category)
            <li>
                <a href="{{route('category.show', $category->slug)}}">
                    {{$category->title}}
                </a>
                <span class="post-count pull-right">
                    ({{$category->posts()->count()}})
                </span>
            </li>
        @endforeach
    </ul>
</aside>
