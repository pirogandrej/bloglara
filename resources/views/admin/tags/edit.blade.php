@extends('admin.layouts.template')
@section('content')
    <div class="content-wrapper">
        <section class="content-header">
            <h1>Теги</h1>
        </section>

        <section class="content">
            <div class="box">
                {!! Form::open(['route' => ['tags.update',$tag->id], 'method'=>'put']) !!}
                    <div class="box-header with-border">
                        <h3 class="box-title">Изменяем тег</h3>
                        @include('admin.errors')
                    </div>
                    <div class="box-body">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Название</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" name="title" placeholder="" value="{{$tag->title}}">
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <a href="{{route('tags.index')}}" class="btn btn-default">Назад</a>
                        <button class="btn btn-warning pull-right">Изменить</button>
                    </div>
                {!! Form::close() !!}
            </div>
        </section>
    </div>
@endsection