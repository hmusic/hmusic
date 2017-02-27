/**
 * Created by Administrator on 2017/2/15.
 */
var xmlhttp;
var audio = document.getElementById("media");
var musicTime = 0;    /*歌曲时长*/
var btnPause = false;
var musicList =new Array();    /*歌曲播放列表*/
var lycmove,dragmove,cachemove;
var pSize1;
var pSize2;
audio.autobuffer = true;
addVoiceListenTouch();
audio.src="http://fs.web.kugou.com/af03e7b47e20651ba7a685275255a6e3/58aaabdf/G091/M04/07/03/-4YBAFioONSAYvLNAFO-pwnpqG0318.mp3";
/*ajax*/
function loadXMLDoc(url,cfunc) {
    if(window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest();
    }else{
        xmlhttp= new ActiveXObject("Microsoft.XMLHTTP");
    }
    if(!arguments[2]){
    xmlhttp.onreadystatechange = cfunc;
    xmlhttp.open("GET",url,true);
    xmlhttp.send();
    }else{
        console.log("第三个参数："+arguments[2]);
    }
}
/*歌曲播放器监听*/
audio.onloadstart = function(){
    /*加入歌词url*/
    getLyric();
    console.log("onloadstart:"+audio.duration);
    addmusicListenTouch();
   /* audio.autobuffer = true;*/
}
audio.ondurationchange = function(){
    console.log("ondurationchange:"+audio.buffered);
}
audio.onloadmetadata = function(){
    musicTime= audio.duration;
    console.log("onloadmetadata:"+audio.duration);

}
audio.ondurationchange = function(){
    musicTime= audio.duration;
    mediaCacheMove(musicTime);
    mediaDragMove(musicTime);
    lycMove(musicTime);
    console.log("ondurationchange:"+audio.duration);

}
audio.onloaddata = function(){
    console.log("onloaddata:"+audio.buffered);
}
audio.onprocess = function(){
    console.log("onprocess:"+audio.buffered);
}
audio.oncanplay = function(){
    console.log("oncanplay:"+audio.buffered.start(0));
    console.log("oncanplay:"+audio.readyState);
    console.log("oncanplay:"+audio.buffered.end(0));
    var flag = false;
  /* audio.autobuffer = true;*/
    if (audio.paused && !btnPause) {
        audio.play();
        mediaCacheMove(musicTime);
        mediaDragMove(musicTime);
        lycMove(musicTime);
        console.log("oncanplay11:"+audio.readyState);
        $("a.btn_big_play").addClass("btn_big_play--pause");
        $("a.btn_big_play .icon_txt").html("暂停")
        /*  getLyric();*/
    }
    if(!audio.paused){
        clearInterval(lycmove);
        clearInterval(dragmove);
        clearInterval(cachemove);
    }

}
audio.onplaythrough = function(){
    console.log("onplaythrough:"+audio.buffered);
    console.log("onplaythrough:"+audio.buffered.start(0));
    console.log("onplaythrough:"+audio.buffered.end(0));
}

audio.onend = function () {
    
}



/*播放按钮*/
$("a.btn_big_play").click(function () {

    if (!audio.paused) {
        audio.pause();
        btnPause = true;
        clearInterval(lycmove);
        clearInterval(dragmove);
        clearInterval(cachemove);
        $("a.btn_big_play .icon_txt").html("播放")
        $(this).removeClass("btn_big_play--pause");
    } else {
       /* musicTime = audio.duration;*/
        audio.play();
        btnPause = false;
        mediaCacheMove(musicTime);
        mediaDragMove(musicTime);
        lycMove(musicTime);
        $("a.btn_big_play .icon_txt").html("暂停")
        $(this).addClass("btn_big_play--pause");
      /*  getLyric();*/
    }
});

/*复选框*/
$(".songlist__item .songlist__edit").click(function () {
    if($(this).hasClass("songlist__edit--check")){
        $(this).removeClass("songlist__edit--check");
        $(".songlist__checkbox",$(this)).attr("checked",false);
    }else{
        $(this).addClass("songlist__edit--check");
        $(".songlist__checkbox",$(this)).attr("checked",true);
    }
})
$(".js_check_all").click(function () {
    if($(".js_check_all").is(':checked')){
        $(".songlist__edit").addClass("songlist__edit--check");
        $(this).attr("checked",true);
             $(".songlist__checkbox").attr("checked",true);
    }else{

        $(".songlist__edit").removeClass("songlist__edit--check");
        $(this).attr("checked",false);
              $(".songlist__checkbox").attr("checked",false);
    }
})

/*纯净模式变换*/
$("a.btn_big_only").click(function () {

    pSize2 = $(".only_lyric__inner p").height();
    pSize1 = $(".song_info__lyric_inner p").height();

    $(this).toggleClass("btn_big_only--on");
    if ($("div.player_full_box").is(":hidden")) {
        $("div.player_full_box").show();
    } else {
        $("div.player_full_box").hide();


    }
    if ($("div.player_simp_box").is(":hidden")) {
        $("div.player_simp_box").show();

    } else {
        $("div.player_simp_box").hide();
    }
});

/*播放器控制方法*/
/*时间跳动&&播放进度条滚动*/
function mediaDragMove(duration) {
    dragmove = setInterval(function(){
        $("#time_show").html(formatSeconds(audio.currentTime)+""+" / "+formatSeconds(duration));
        $("#spanplaybar").css("width",parseInt(audio.currentTime/duration*100)+"%");
    },1000);

}
/*缓存条滚动*/
function mediaCacheMove(duration){
    cachemove = setInterval(function(){
        var i = 0;
        for(; i < audio.buffered.length;i++){
            if(audio.currentTime >= audio.buffered.start(i) && audio.currentTime <=audio.buffered.end(i)){
                break;
            }
        }
        $("#downloadbar").css("width",parseInt(audio.buffered.end(i)/duration*100)+"%");
    },1000)
}
/*播放进度条拖拽控制S*/
var startX, x= 0;
function addmusicListenTouch() {
    var dot = $(".player_progress__dot")[0];
    var bar = $("#spanplayer_bgbar")[0];
    dot.addEventListener("mousedown",touchStart,false);
    bar.addEventListener("click",barClick,false);
}
function removemusicListenTouch(){
    var dot = $(".player_progress__dot")[0];
    var bar = $("#spanplayer_bgbar")[0];
    dot.removeEventListener("mousedown",touchStart,false);
    bar.removeEventListener("click",barClick,false);
}
function barClick(e) {
    e.preventDefault();
    var x = e.clientX - $("#spanplaybar")[0].getBoundingClientRect().left;
    var tallen = $("#progress").width();
    $("#spanplaybar").css("width",x+"px");
    audio.currentTime = musicTime*x/tallen;
}

function touchStart(e){
    console.log("touchStart");
    e.preventDefault();
    startX = e.clientX;
    $("#progress")[0].addEventListener("mousemove",touchMove,false);
    $("#progress")[0].addEventListener("mouseup",touchEnd,false);
}
function touchMove(e){
    console.log("touchMove");
    e.preventDefault();
    x = e.clientX- startX;
}
function touchEnd(e) {
    console.log("end");
    e.preventDefault();
    var curlen = $("#spanplaybar").width();
    var tallen = $("#progress").width();
    var tarlen = curlen+x;
    if(tarlen > tallen){
        tarlen = tallen;
    }
    $("#spanplaybar").css("width",tarlen+"px");
    audio.currentTime = musicTime*tarlen/tallen;
    $("#progress")[0].removeEventListener("mousemove",touchMove,false);
    $("#progress")[0].removeEventListener("mouseup",touchEnd,false);
}
/*播放进度条拖拽控制E*/
/*声音控制功能S*/
/*声音开关*/
$(".btn_big_voice").click(function () {
    $(this).toggleClass("btn_big_voice--no");
    if($(this).hasClass("btn_big_voice--no")){
        audio.muted = true;
    }else{
        audio.muted = false;
    }
});
/*音量条的拖拽功能*/
var vStart,vX=0;
function addVoiceListenTouch() {
    $("#spanvolume")[0].addEventListener("click",volumeClick,false);
    $("#spanvolumebar")[0].addEventListener("mousedown",volumeStart,false);
}

function  volumeClick(e) {
    e.preventDefault();
    var x = e.clientX - $("#spanvolumebar")[0].getBoundingClientRect().left;
    var tallen = $("#spanvolume").width();
    $("#spanvolumebar").css("width",x+"px");
    if($(".btn_big_voice").hasClass("btn_big_voice--no")){
        $(".btn_big_voice").removeClass("btn_big_voice--no");
        audio.muted = false;
    }
    audio.volume = x/tallen;
}

function  volumeStart(e) {
    e.preventDefault();
    vStart = e.clientX;
    $("#spanvolume")[0].addEventListener("mousemove",volumeMove,false);
    $("#spanvolume")[0].addEventListener("mouseup",volumeEnd,false);
}
function  volumeMove(e) {
    e.preventDefault();
    vX = e.clientX- vStart;
}
function  volumeEnd(e) {
    e.preventDefault();
    var curlen = $("#spanvolumebar").width();
    var tallen = $("#spanvolume").width();
    var tarlen = curlen+x;
    if(tarlen > tallen){
        tarlen = tallen;
    }
    $("#spanvolumebar").css("width",tarlen+"px");
    if($(".btn_big_voice").hasClass("btn_big_voice--no")){
        $(".btn_big_voice").removeClass("btn_big_voice--no");
        audio.muted = false;
    }
    audio.volume = $("#spanvolumebar").width()/tallen;
    $("#spanvolume")[0].removeEventListener("mousemove",volumeMove,false);
    $("#spanvolume")[0].removeEventListener("mouseup",volumeEnd,false);
}
/*声音控制部分E*/

/*歌词控制部分S*/

/*获取歌词文件*/
var lyric;
var lyricTime = new Array();
var lyricContent = new Array();
/*获取歌词并写入网页*/
function getLyric(url) {
    loadXMLDoc("./lyric/薛之谦%20-%20绅士%20(Live).lrc",function () {
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            lyric = xmlhttp.responseText.replace(/\[\d\d:\d\d.\d\d\]\n/g, "");
        /*    console.log(lyric);*/
                lyricContent = lyric.replace(/\[\d\d:\d\d.\d\d\]/g, "").split("\n");
                lyric.replace(/(\d*):(\d*)([.|:]\d*)/g, function () {
                    var i = 0;
                    var min = arguments[1],
                        sec = parseFloat(arguments[2] + arguments[3]),
                        realMin = min * 60 + sec;
                    lyricTime.push(realMin);
                });
                lyricTime.push(1000);
              /*  console.log(lyricContent);*/
     /*           console.log(lyricTime)*/
            /*添加歌词到页面*/
                var k  = lyricContent.length-lyricTime.length+1;
                $(".qrc_ctn").text("");
                $(".qrc_ctn").append("<p data-id='line_null'>&nbsp;</p>");
                for(i = 0; i< lyricTime.length-1; i++){
                    var str = "line_"+i;
                    $(".qrc_ctn").append("<p data-id="+str+">"+lyricContent[i+k]+"</p>");
                }
        }else{
            $(".qrc_ctn").text("");
            $(".qrc_ctn").append("<p data-id='line_null'>&nbsp;</p>");
            $(".qrc_ctn").append("<p data-id='line_null'>暂无歌词</p>");
        }
    });
}


/*歌词移动*/
function lycMove(duration){
    /*duration  总时间*/
    var lycBox = $(".song_info__lyric_inner")[0];
    var onlyLycBox = $(".only_lyric__inner")[0];
   /* console.log(lycBox.offsetParent.scrollTop);*/
/*    console.log(pSize2)*/
/*    console.log($(".song_info__lyric_box p").height());*/
    lycmove = setInterval(function () {
        var current = audio.currentTime;
        var i = findLyc(current);
        pSize2 = $(".only_lyric__inner p").height();
        pSize1 = $(".song_info__lyric_inner p").height();
        /*console.log(i)*/
        if(!$("div.player_full_box").is(":hidden")) {
            var k = parseInt($(".song_info__lyric_box").height()/pSize1)+1;
            if (i <= lyricTime.length - ((k-1)|0)) {
                lycBox.offsetParent.scrollTop = (i+2-((k/2)|1)) * pSize1;
            } else {
            /*    lycBox.offsetParent.scrollTop = (lyricTime.length - k) * pSize1;*/
                lycBox.offsetParent.scrollTop =  $(".song_info__lyric_inner").height() - $(".song_info__lyric_box").height();
            }
        }else{
            var k = parseInt($(".player_only_lyric").height()/pSize2)+1;
            if (i <= lyricTime.length - ((k-1)|0)) {
                 onlyLycBox.offsetParent.scrollTop = (i+2-((k/2)|1))*pSize2;
            } else {
                /* onlyLycBox.offsetParent.scrollTop = (lyricTime.length- k)*pSize2;*/
                onlyLycBox.offsetParent.scrollTop =  $(".only_lyric__inner").height() - $(".player_only_lyric").height();
            }
        }
        $("p").removeClass("on");
        $("p[data-id='line_"+i+"']").addClass("on");

    },100)
}

/*根据时间找到歌词的行数*/
function findLyc(time) {
    for(i = 0;i<lyricTime.length;i++){
        if(time >= lyricTime[i] && time<= lyricTime[i+1] ){
            return i;
        }
    }
    return 0;
}
/*歌词部分E*/















/*时间格式化*/
function formatSeconds(value) {
    var theTime = parseInt(value);// 秒
    var theTime1 = 0;// 分
    if(theTime > 60) {
        theTime1 = parseInt(theTime/60);
        theTime = parseInt(theTime%60);
    }
    var result = (Array(2).join('0') + parseInt(theTime1)).slice(-2)+":"+(Array(2).join('0') + parseInt(theTime)).slice(-2)
    return result;
}