
var mix = require('laravel-mix');
var publicPath = 'public_html/';

mix.setPublicPath(publicPath)

    .js('resources/js/app.js', 'js/app.js')
    .sass('resources/sass/app.scss', 'css/app.css')
    .sass('resources/sass/custom-admin.scss', 'css/custom-admin.css')

    .styles([
        publicPath + 'css/app.css',
        'resources/admin/ionicons/2.0.1/css/ionicons.min.css',
        'resources/admin/dist/css/AdminLTE.min.css',
        'resources/admin/dist/css/skins/_all-skins.min.css',
        'resources/admin/plugins/iCheck/all.css',
        'resources/admin/plugins/datepicker/datepicker3.css',
        'resources/admin/plugins/select2/select2.min.css',
        'resources/admin/plugins/datatables/dataTables.bootstrap.css',
        publicPath + 'css/custom-admin.css'
        ],
        publicPath + 'css/admin.css')

    .scripts([
        publicPath + 'js/app.js',
        'resources/admin/plugins/slimScroll/jquery.slimscroll.min.js',
        'resources/admin/plugins/fastclick/fastclick.js',
        'resources/admin/dist/js/app.min.js',
        'resources/admin/dist/js/demo.js',
        'resources/admin/plugins/select2/select2.full.min.js',
        'resources/admin/plugins/datepicker/bootstrap-datepicker.js',
        'resources/admin/plugins/iCheck/icheck.min.js',
        'resources/admin/plugins/datatables/jquery.dataTables.min.js',
        'resources/admin/plugins/datatables/dataTables.bootstrap.min.js',
        publicPath + 'js/scripts-admin.js',
        publicPath + 'js/custom-admin.js'
        ],
        publicPath + 'js/admin.js')

    .version();

    // mix.browserSync('blog.loc');

mix.setPublicPath(publicPath).copy('resources/admin/bootstrap/fonts', publicPath + 'fonts');
mix.setPublicPath(publicPath).copy('resources/admin/dist/fonts', publicPath + 'fonts');
mix.setPublicPath(publicPath).copy('resources/admin/dist/img', publicPath + 'img/admin');

mix.setPublicPath(publicPath)

    .styles([
        'resources/front/css/bootstrap.min.css',
        'resources/front/css/font-awesome.min.css',
        'resources/front/css/animate.min.css',
        'resources/front/css/owl.carousel.css',
        'resources/front/css/owl.theme.css',
        'resources/front/css/owl.transitions.css',
        'resources/front/css/style.css',
        'resources/front/css/responsive.css',
        'resources/front/css/prism-funky.css',
        publicPath + 'plugins/slick/slick.css',
        publicPath + 'css/front/custom-with-mix.css',
    ],
        publicPath + 'css/front.css')

    .scripts([
        'resources/front/js/jquery-1.11.3.min.js',
        'resources/front/js/bootstrap.min.js',
        'resources/front/js/owl.carousel.min.js',
        'resources/front/js/jquery.stickit.min.js',
        'resources/front/js/menu.js',
        'resources/front/js/prism.js',
        publicPath + 'plugins/slick/slick.min.js',
        'resources/front/js/scripts.js',
        publicPath + 'js/front/custom-with-mix.js',
    ],
        publicPath + 'js/front/front.js')

    .version();

mix.setPublicPath(publicPath).copy('resources/front/fonts', publicPath + 'fonts');
mix.setPublicPath(publicPath).copy('resources/front/images', publicPath + 'img/front');
