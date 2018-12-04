<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>应援团首页</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <style type="text/css">
      body {
        position: relative;
      }
      ul.navbar-nav > li.nav-item:hover {
        background-color: grey;
      }
      ul.navbar-nav > li.nav-item {
        padding-left: 15px;
        padding-right: 15px;
        border-radius: 5px;
      }
      ul.list-group > .list-group-item {
        padding-top: 0px;
        padding-bottom: 0px;
      }
      .tab {
        background-color: black;
      }
    </style>
  </head>
  <body>
    <header class="header" style="width: 100%; padding-bottom: 11%; background-image: url(image/header.jpg); background-size: contain;"></header>
    <nav class="navbar navbar-dark navbar-expand bg-dark">
      <div class="collapse navbar-collapse justify-content-md-start" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto" style="margin-left: 6%">
          <li class="nav-item">
            <a href="#userMain" class="nav-link">
              <span class="text-white"><i class="fa fa-user"></i>&nbsp;首页</span><span class="sr-only"></span>
            </a>
          </li>
          <li class="nav-item">
            <a href="#userWork" class="nav-link">
              <span class="text-white"><i class="fa fa-wpforms"></i>&nbsp; 作品相关</span><span class="sr-only"></span>
            </a>
          </li>
          <li class="nav-item">
            <a href="#userSup" class="nav-link">
              <span class="text-white"><i class="fa fa-signing"></i>&nbsp; 应援团</span><span class="sr-only"></span>
            </a>
          </li>
          <li class="nav-item">
            <a href="#userRes" class="nav-link">
              <span class="text-white"><i class="fa fa-file"></i>&nbsp; 资源区</span><span class="sr-only"></span>
            </a>
          </li>
          <li class="nav-item">
            <a href="#userPic" class="nav-link">
              <span class="text-white"><i class="fa fa-picture-o"></i>&nbsp; 图库</span><span class="sr-only"></span>
            </a>
          </li>
          <li class="nav-item">
            <a href="#userPic" class="nav-link">
              <span class="text-white"><i class="fa fa-money"></i>&nbsp; 赞助</span><span class="sr-only"></span>
            </a>
          </li>
        </ul>
        <form class="navbar-form form-inline" style="margin-bottom: 0; margin-right: 20px">
          <input class="form-control mr-sm-2 inputAttr1" type="search" placeholder="请输入搜索内容" aria-label="Search">
          <button class="btn btn-outline-info my-2 my-sm-0" type="submit">搜索</button>
        </form>
      </div>
    </nav>
    <div class="page-wrapper">
      <section class="section-one">
        <div style="border-width: 4px; margin-top: 30px; margin-bottom: 50px; width: 500px; margin-left: auto; margin-right: 10%;"><!--第一列最左边区域-->
          <div style="border-radius: 5px;">
            <ul class="nav nav-tabs nav-fill justify-content-center">
              <li role="presentation" class="nav-item"><a class="nav-link active" href="#">近期の资讯</a></li>
              <li role="presentation" class="nav-item"><a class="nav-link" href="#">公告栏</a></li>
              <li role="presentation" class="nav-item"><a class="nav-link" href="#">春日酱的秘密</a></li>
            </ul>
          </div>
          <div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item justify-content-between d-flex"><a class="nav-link" href="#">凉宫春日应援团人数破万</a><span style="padding-top: 8px">8102/12/4</span></li>
              <li class="list-group-item justify-content-between d-flex"><a class="nav-link" href="#">麻将给了我创作的灵感——专访谷川流</a><span style="padding-top: 8px">8102/12/4</span></li>
              <li class="list-group-item justify-content-between d-flex"><a class="nav-link" href="#">京都动画：凉宫春日系列新剧场版制作已开始</a><span style="padding-top: 8px">8102/12/4</span></li>
              <li class="list-group-item justify-content-between d-flex"><a class="nav-link" href="#">不可阻挡！团长实现世萌三连冠</a><span style="padding-top: 8px">8102/12/4</span></li>
              <li class="list-group-item justify-content-between d-flex"><a class="nav-link" href="#">平野绫：在凉宫3中献声感觉很棒，期待剧场版</a><span style="padding-top: 8px">8102/12/4</span></li>
            </ul>
          </div>
          <div style="padding-left: 430px">
            <span><a href="#">更多>></a></span>
          </div>
        </div>
      </section>
      <section class="section-two" style="background-color:lawngreen">
        <span>section 2</span>
      </section>
      <section class="section-three">
        <span>section 3</span>
      </section>
    </div>
    <footer class="footer" style="padding-top: 20px; padding-bottom: 10px; text-align: center; background-color: lightgoldenrodyellow">
      <span>
        <p><a href="//www.dmzj.com/aboutus/">公司介绍</a> | <a href="//www.dmzj.com/aboutus/contactus.html">联系我们</a> | <a href="//www.dmzj.com/zt/dmzj201712/userprot.html">服务协议</a> | <a href="//www.dmzj.com/zt/dmzj201712/dispute.html">纠纷处理流程</a> | <a href="//www.dmzj.com/zt/dmzj201712/parent.html">家长监护工程</a> | <a href="//www.dmzj.com/zt/dmzj201712/copyright.html">版权说明</a></p>
        <p>抵制不良游戏 拒绝盗版游戏 注意自我保护 谨防受骗上当 适度游戏益脑 沉迷游戏伤身 合理安排时间 享受健康生活</p>
        <p>公司名称：尚科齐（北京）网络科技有限公司　　地址：北京市朝阳区农展馆南里12号通广大厦15层　　联系电话：010-57221044</p>
        <p>网络文化经营许可证：<a href="//www.dmzj.com/zt/dmzj201712/images/wangwen.jpg" target="_blank" style="text-decoration:underline">京网文[2015]0032-032号</a>　　京ICP备17012542号-1</p>
      </span>
    </footer>
  </body>
</html>