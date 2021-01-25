<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="www.heriipurnama.ga">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,Angular 2,Angular4,Angular 4,jQuery,CSS,HTML,RWD,Dashboard,React,React.js,Vue,Vue.js">
    <link rel="shortcut icon" href="<?php echo TEMPLATE_ASSETS;?>img/chart.png">
    <title>ASIK</title>
    
    <!-- Icons -->
    <link href="<?php echo TEMPLATE_ASSETS;?>css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo TEMPLATE_ASSETS;?>css/simple-line-icons.css" rel="stylesheet">

    <!-- Main styles for this application -->
    <link href="<?php echo TEMPLATE_ASSETS;?>css/style.css" rel="stylesheet">
    <?php echo @$css;?>
    <script>
        base_url = '<?php echo base_url();?>';
    </script>
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden pace-done">
    <header class="app-header navbar">
        <button class="navbar-toggler mobile-sidebar-toggler d-lg-none" type="button" style="color:white;">☰</button>
        <a class="navbar-brand" href="#"></a>
        <ul class="nav navbar-nav d-md-down-none">
            <li class="nav-item">
                <a class="nav-link navbar-toggler sidebar-toggler" href="#" style="color:white;">☰</a>
            </li>
            <li class="nav-item px-3">
                <a class="nav-link" href="#" style="color:white;">Dashboard</a>
            </li>
        </ul>
        <ul class="nav navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="color:white;">
                    <img src="<?php echo TEMPLATE_ASSETS;?>img/avatars/avatar.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                    <span class="d-md-down-none" style="color:white;">  <?php echo $username = $_SESSION['nik'];?></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right" >

                    <div class="dropdown-header text-center">
                        <strong>Account</strong>
                    </div>
                    
                    <a class="dropdown-item" href="<?php echo base_url();?>index.php/administrator/logout"><i class="fa fa-lock"></i> Logout</a>
                </div>
            </li>
        </ul>
    </header>

    <div class="app-body">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">
                        Contents
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-folder-alt"></i> Screen Sewing</a>
                        <ul class="nav-item nav-dropdown">
                            <a class="nav-link nav-dropdown-toggle" href="#">&nbsp;&nbsp;<i class="icon-folder-alt"></i> Sewing Lt.01</a>
                            <ul class="nav-dropdown-items">
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo base_url();?>index.php/sewing/Lt1/ScreenA" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-film"></i> Screen A</a>
                                    <a class="nav-link" href="<?php echo base_url();?>index.php/sewing/Lt1/ScreenB" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-film"></i> Screen B</a>
                                    <a class="nav-link" href="<?php echo base_url();?>index.php/sewing/Lt1/ScreenC" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-film"></i> Screen C</a>
                                </li>
                            </ul>
                        </ul>
                        <ul class="nav-item nav-dropdown">
                            <a class="nav-link nav-dropdown-toggle" href="#">&nbsp;&nbsp;<i class="icon-folder-alt"></i> Sewing Lt.02</a>
                            <ul class="nav-dropdown-items">
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo base_url();?>index.php/sewing/Lt2/ScreenA" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-film"></i> Screen A</a>
                                    <a class="nav-link" href="<?php echo base_url();?>index.php/sewing/Lt2/ScreenB" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-film"></i> Screen B</a>
                                    <a class="nav-link" href="<?php echo base_url();?>index.php/sewing/Lt2/ScreenC" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-film"></i> Screen C</a>
                                </li>
                            </ul>
                        </ul>
                        <ul class="nav-item nav-dropdown">
                            <a class="nav-link nav-dropdown-toggle" href="#">&nbsp;&nbsp;<i class="icon-folder-alt"></i> Sewing Lt.03</a>
                            <ul class="nav-dropdown-items">
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo base_url();?>index.php/sewing/Lt3/ScreenA" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-film"></i> Screen A</a>
                                    <a class="nav-link" href="<?php echo base_url();?>index.php/sewing/Lt3/ScreenB" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-film"></i> Screen B</a>
                                    <a class="nav-link" href="<?php echo base_url();?>index.php/sewing/Lt3/ScreenC" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-film"></i> Screen C</a>
                                </li>
                            </ul>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-folder-alt"></i> Screen Cutting</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link"  href="<?php echo base_url();?>index.php/cutting/Trimstore" target="_blank">&nbsp;&nbsp;<i class="icon-film"></i> Screen A</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-folder-alt"></i> Screen Molding</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo base_url();?>index.php/cutting/Molding" target="blank>&nbsp;&nbsp;<i class="icon-film"></i> Screen A</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="fa fa-film "></i> Live Screen Line</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link"  href="<?php echo base_url();?>index.php/manager/screenLive" target="">&nbsp;&nbsp;<i class="fa fa-list "></i> List Live Screen All Line</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"  href="<?php echo base_url();?>index.php/manager/screenLive/liveScanLine" target="">&nbsp;&nbsp;<i class="fa fa-list "></i> List Line Scan Now</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav">
                    <li class="nav-title">
                        Tools
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="fa fa-envelope "></i> Message Management</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link"  href="<?php echo base_url();?>index.php/manager/messages" target="">&nbsp;&nbsp;<i class="fa fa-list "></i> List Message</a>
                                <a class="nav-link"  href="<?php echo base_url();?>index.php/manager/messages/add" target="">&nbsp;&nbsp;<i class="fa fa-pencil-square-o "></i> Compose</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>

        <!-- Main content -->
        <main class="main">

            <!-- Breadcrumb -->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">Home</li>
                <?php echo ($this->uri->segment(1) != "" ? '<li class="breadcrumb-item"><a href="#">'.ucfirst($this->uri->segment(1)).'</a></li>' : '');?>
                <?php echo ($this->uri->segment(2) != "" ? '<li class="breadcrumb-item"><a href="#">'.ucfirst($this->uri->segment(2)).'</a></li>' : '');?>
            </ol>

            <div class="container-fluid">