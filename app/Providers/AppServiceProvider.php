<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Post;
use App\Category;
use App\Comment;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('pages._sidebar', function ($view){
           $view->with('popularPosts', Post::orderBy('views', 'desc')->take(3)->get());
           $view->with('featuredPosts', Post::where('is_featured', 1)->take(3)->get());
           $view->with('recentPosts', Post::orderBy('dateOfPost', 'desc')->take(4)->get());
           $view->with('categories', Category::all());
        });

        view()->composer('admin.layouts._sidebar', function ($view){
           $view->with('newCommentsCount', Comment::where('status', 0)->count());
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
//        $this->app->bind('path.public', function() {
//            return base_path().'/public_html';
//        });
    }
}
