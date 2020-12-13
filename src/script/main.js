require.config({

    paths: {
        'jquery': "https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min",
        'jlazyload': "https://cdn.bootcdn.net/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload.min",
        'jcookie': "https://cdn.bootcdn.net/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min"
    },
    shim: {
        'jlazyload': {
            deps: ['jquery'],
            // exports: ['jquery_lazyload']
        },
        'jcookie': {
            deps: ['jquery'],
            // exports: ['jquery_cookie']
        }

    }
});
// 
require(['jquery', 'jcookie'], function() {
    let $newpage = $('#page').attr('targetpage');
    // console.log($('#page').attr('targetpage'));
    // $.cookie(123, 123)
    require([$newpage], function(newpage) {
        newpage.init()
    });
});