define(['jlazyload'], () => {
    return {
        init: function() {
            const $list = $('.m1-ad');
            $.ajax({
                url: "http://10.31.161.38/dashboard/idiyiproject/php/index1data.php",
                dataType: "json",

            }).done((data) => {

                let $strhtml = '';
                $.each(data, function(index, value) {
                    console.log(value);
                    $strhtml += `
                    <li>
                    <a href="list.html">
                        <div class="ad-img">
                            <img src="${value.url}" 
                           class='data-img' alt="" style="width: 140px;height: 140px;">
                        </div>
                        <div class="ad-text">
                            <div class="ad-text1">
                            ${value.title}
                            </div>
                            <div class="ad-text2">
                                <span class="sp1">  ${value.title1}</span>
                                <span class="sp2">
                                ${value.title2}
                                     </span>
                            </div>
                            <div class="ad-text3">
                                <span class="sp3">￥ ${value.prices}</span>
                                <span class="sp4">已售${value.num}</span>
                            </div>
                        </div>
                    </a>

                </li>
                    `;
                });
                $list.html($strhtml);
                //渲染的下面进行懒加载操作
                $(function() { //页面加载完成
                    $("img.lazy").lazyload({
                        effect: "fadeIn" //显示方法：谈入
                    });
                });
            })

            /*banner轮播图*/
            const $brandlunbo = $('.lunbo');
            const $ulist = $('.lunbo ul'); //运动的盒子
            const $piclist = $('.lunbo ul li'); //6个图片
            const $btnlist = $('.lunbo ol li'); //5个圈圈
            const $leftarrow = $('#left');
            const $rightarrow = $('#right');
            let timer = null;
            let $num = 0; //存储索引值

            //1.先改变布局，计算$ulist的宽度
            const $liwidth = $piclist.eq(0).width(); //1个li的宽度(图片的宽度)
            $ulist.width($liwidth * $piclist.length);
            // console.log($piclist.size);


            //2.5个圈圈添加点击事件。让$ulist进行运动。
            $btnlist.on('click', function() {
                $num = $(this).index() - 1; //获取当前的圈圈的索引，赋值给$num  -1因为下面封装的函数里面有个$num++;
                tabSwitch();
            });

            //3.显示左右箭头。
            $brandlunbo.hover(function() {
                clearInterval(timer); //鼠标移入停止自动轮播
                $leftarrow.show();
                $rightarrow.show();
            }, function() {
                $leftarrow.hide();
                $rightarrow.hide();
                timer = setInterval(function() { //鼠标移出继续自动轮播。
                    $rightarrow.click();
                }, 3000);
            });

            //4.左右箭头添加点击事件。
            $rightarrow.on('click', function() {
                // alert(111);
                tabSwitch();
            });

            $leftarrow.on('click', function() {
                $num -= 2; //-1:$ulist迁移一张图片，但是封装函数里面又有++,达到-1的效果，需要-2.
                console.log($num);

                tabSwitch();
            });


            //5.代码冗余，进行函数封装
            function tabSwitch() {
                $num++; //将索引封装进函数，方便后续的左右箭头对索引的判断。

                //如果索引等于5.将$ulist位置进行重置。
                //判断右箭头
                //这里作为的判断的时候是最后一张，重置位置和设置索引安装第一张图片进行设置的
                if ($num === $btnlist.length + 1) {

                    $ulist.css('left', 0);
                    $num = 1;
                }
                //判断左箭头
                if ($num === -1) {
                    $ulist.css('left', -$liwidth * $btnlist.length);
                    $num = $btnlist.length - 1;
                }

                //判断小圈圈
                if ($num === $btnlist.length) {
                    $btnlist.eq(0).addClass('active').siblings('li').removeClass('active');
                } else {
                    $btnlist.eq($num).addClass('active').siblings('li').removeClass('active');
                }


                $ulist.stop(true).animate({
                    left: -$liwidth * $num
                });
                // $('title').html($num); //html():相当于原生js里面innerHTML
            }

            //6.自动轮播
            timer = setInterval(function() {
                $rightarrow.click();
            }, 3000);
            // 尾部轮播
            const $brand1 = $('.main4-brand');
            const $piclist1 = $('.main4-brand .brand1 .brandbox');
            const $btnlist1 = $('.main4-brand ol li');
            const $left1 = $('.main4-leftarrow');
            const $right1 = $('.main4-rightarrow');
            let $num1 = 0;
            let $timer1 = null;
            let $timer2 = null;
            //1.小圆圈切换
            $btnlist1.on('mouseover', function() {
                $num1 = $(this).index();
                $timer1 = setTimeout(function() {
                    tabswich1()
                }, 300);


            });

            $btnlist1.on('mouseout', function() {
                clearTimeout($timer1);
            });

            //2.左右箭头切换
            $right1.on('click', function() {

                $num1++;
                if ($num1 > $btnlist1.length - 1) {
                    $num1 = 0;

                }

                tabswich1()
            });

            $left1.on('click', function() {
                $num1--;
                if ($num1 < 0) {
                    $num1 = $btnlist1.length - 1;
                }

                tabswich1()
            });

            function tabswich1() {

                $btnlist1.eq($num1).addClass('active').siblings().removeClass('active');
                $piclist1.eq($num1).stop(true).animate({
                    opacity: 1
                }).siblings().stop(true).animate({
                    opacity: 0
                });
            }

            //3.自动轮播
            $timer2 = setInterval(function() {
                $right1.click();
            }, 3000);

            //4.鼠标控制定时器停止和开启。
            $brand1.hover(function() {
                clearInterval($timer2);
            }, function() {
                $timer2 = setInterval(function() {
                    $right1.click();
                }, 3000);
            });


            //3.显示左右箭头。
            $brand1.hover(function() {
                clearInterval(timer); //鼠标移入停止自动轮播
                $left1.show();
                $right1.show();
            }, function() {
                $left1.hide();
                $right1.hide();
                timer = setInterval(function() { //鼠标移出继续自动轮播。
                    $right1.click();
                }, 3000);
            });


            // 尾轮播

        }
    }
})