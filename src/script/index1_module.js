define(['jlazyload'], () => {
    return {
        init: function() {
            const $list = $('.m1-ad');
            $.ajax({
                url: "http://10.31.161.38/dashboard/idiyiproject/php/listdata.php",
                dataType: "json",

            }).done((data) => {

                let $strhtml = '';
                $.each(data, function(index, value) {
                    console.log(value);
                    $strhtml += `
                    <li>
                    <a href="list.html">
                        <div class="ad-img">
                            <img src="${value.url}" alt="" style="width: 140px;height: 140px;">
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
        }
    }
})