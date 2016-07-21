<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Netease qa mini blog</title>

    <!-- me.ico -->
    <link rel="icon" href="img/me.ico" type="image/x-ico"/>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/clean-blog.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- UDeitor -->
    <script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="./ueditor/lang/zh-cn/zh-cn.js"></script>

</head>
<body>
    <!-- header 导航栏 -->
    <%@ include file="header.html" %>
    <header class="intro-header" style="background-image: url('img/about.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="text-center">
                        <h1>Netease qa mini blog</h1>
                        <hr class="small">
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <p><h3>Share your feeling.</h3><p>
            <form action="post" method="post" id="editorForm" onsubmit="return validate_post_blog(this)">
                <div class="row control-group">
                    <div class="form-group col-xs-12 floating-label-form-group controls">
                        <label>blog标题</label> <!-- 未显示 floating-label-form-group 控制-->
                        <input type="text" class="form-control" name="editorTitle" placeholder="blog标题"/>
                    </div>
                </div>

                <div class="row control-group">
                    <div class="form-group col-xs-12 floating-label-form-group controls">
                        <label>blog作者</label>
                        <input type="text" class="form-control" name="editorAuthor" placeholder="blog作者"/>
                    </div>
                </div>

                <div class="row control-group">
                    <div class="form-group col-xs-12 floating-label-form-group controls">
                        <label>blog简介</label>
                        <input type="text" class="form-control" name="editorPreview" placeholder="blog简介"/>
                    </div>
                </div>

                <div class="row">
                    <select name="editorCategory">
                        <option value="null">--blog种类--</option>
                        <option value="Java">Java</option>
                        <option value="C/C++">QA</option>
                        <option value="Python">Python</option>
                        <option value="OS">OS</option>
                        <option value="网络">网络</option>
                        <option value="框架">框架</option>
                        <option value="生活">生活</option>
                    </select>
                </div>

                <div class="row control-group">
                    <div class="form-group col-xs-12 floating-label-form-group controls">
                        <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
                    </div>
                </div>

                <input type="submit" value="发布"/>
            </form>
        </div>
    </div>

    <script type="text/javascript">
        //实例化编辑器
        var ue = UE.getEditor('editor');
    </script>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/clean-blog.js"></script>

</body>
</html>
