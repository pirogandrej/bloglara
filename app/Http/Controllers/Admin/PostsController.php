<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;
use App\Tag;
use App\Category;

class PostsController extends Controller
{
    public function index()
    {
        $posts = Post::all();
        $postsFields = self::getPostsFields($posts);
        return view('admin.posts.index', ['posts'=> $postsFields]);
    }

    public function create()
    {
        $categories = Category::pluck('title', 'id')->all();
        $tags = Tag::pluck('title', 'id')->all();

        return view('admin.posts.create', compact('categories','tags'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'content' => 'required',
            'dateOfPost' => 'required',
            'image' => 'nullable|image'
        ]);

        $post = Post::add($request->all());
        $post->uploadImage($request->file('image'));
        $post->setCategory($request->get('category_id'));
        $post->setTags($request->get('tags'));
        $post->toggleStatus($request->get('status'));
        $post->toggleFeatured($request->get('is_featured'));

        return redirect()->route('posts.index');
    }

    public function edit($id)
    {
        $post = Post::find($id);
        $categories = Category::pluck('title', 'id')->all();
        $tags = Tag::pluck('title', 'id')->all();
        $selectedTags = $post->tags->pluck('id')->all();

        return view('admin.posts.edit', compact(
            'categories',
            'tags',
            'post',
            'selectedTags'
        ));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required',
            'content' => 'required',
            'dateOfPost' => 'required',
            'image' => 'nullable|image'
        ]);

        $post = Post::find($id);
        $post->edit($request->all());
        $post->uploadImage($request->file('image'));
        $post->setCategory($request->get('category_id'));
        $post->setTags($request->get('tags'));
        return redirect()->route('posts.index');
    }

    public function destroy($id)
    {
        $post = Post::find($id)->remove();
        return redirect()->route('posts.index');
    }

    public function toggle($id){
        $post = Post::find($id);
        $post->toggleStatus($post->status);
        return redirect()->back();
    }

    public function toggleFeatured($id){
        $post = Post::find($id);
        $post->toggleFeatured($post->is_featured);
        return redirect()->back();
    }

    public static function getPostsFields($posts){
        foreach ($posts as $post){
            $post->CategoryTitle =  $post->getCategoryTitle();
            $post->tagsTitles = $post->getTagsTitles();
        }
        return $posts;
    }

}
