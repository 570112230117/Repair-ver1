<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="../commons/head.jsp"></jsp:include>
    <!-- Preloader -->
    <div class="preloader-it">
        <div class="la-anim-1"></div>
    </div>
    <!-- /Preloader -->
    <div class="wrapper  theme-5-active pimary-color-blue">
        <!-- Top Menu Items -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="mobile-only-brand pull-left">
                <div class="nav-header pull-left">
                    <div class="logo-wrap" style="text-align: center">
                        <a href="/">
                            <img class="brand-img" style="width: 80px" src="/dist/img/TCOA1.gif" alt="brand" />
                        </a>
                    </div>
                </div>
                <a id="toggle_nav_btn" class="toggle-left-nav-btn inline-block ml-20 pull-left" href="javascript:void(0);"><i class="zmdi zmdi-menu"></i></a>
                <a id="toggle_mobile_nav" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-more"></i></a>

            </div>
            <div id="mobile_only_nav" class="mobile-only-nav pull-right">
                <ul class="nav navbar-right top-nav pull-right">
                    <li>
                        <a href="/login">
                            <div class="pull-left"><i class="icon-login"></i><span class="right-nav-text"> เข้าสู่ระบบ</span></div>
                            <div class="clearfix"></div>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- /Top Menu Items -->

        <!-- Left Sidebar Menu -->
        <div class="fixed-sidebar-left">
            <ul class="nav navbar-nav side-nav nicescroll-bar">
                <li class="navigation-header">
                    <span>Main</span>
                    <i class="zmdi zmdi-more"></i>
                </li>
                <li>
                    <a href="/formsuser">
                        <div class="pull-left"><i class="zmdi zmdi-home mr-20"></i><span class="right-nav-text">บันทึกงานซ่อม</span></div>
                        <div class="clearfix"></div>
                    </a>
                </li>
                <li>
                    <a href="/">
                        <div class="pull-left"><i class="zmdi zmdi-apps mr-20"></i><span class="right-nav-text">รายการแจ้งซ่อมทั้งหมด</span></div>
                        <div class="clearfix"></div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#ecom_dr">
                        <div class="pull-left"><i class="zmdi zmdi-menu  mr-20"></i><span class="right-nav-text">ตรวจสอบสถานะ</span> <span class="label label-danger">New</span></div>
                        <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="ecom_dr" class="collapse collapse-level-1">
                        <li>
                            <a href="#">แจ้งซ่อม<div class="pull-right"><span class="label label-primary">0</span></div></a>
                        </li>
                        <li>
                            <a href="#">รอตรวจสอบ<div class="pull-right"><span class="label label-warning">0</span></div></a>
                        </li>
                        <li>
                            <a href="#">ส่งซ่อม/เคลม<div class="pull-right"><span class="label label-success">1</span></div></a>
                        </li>
                        <li>
                            <a href="#">ดำเนินการ<div class="pull-right"><span class="label label-danger">2</span></div></a>
                        </li>
                    </ul>
                </li>
                <li>
                    <hr class="light-grey-hr mb-10" />
                </li>
                <li class="navigation-header">
                    <span>component</span>
                    <i class="zmdi zmdi-more"></i>
                </li>
                <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#ui_dr">
                        <div class="pull-left"><i class="zmdi zmdi-smartphone-setup mr-20"></i><span class="right-nav-text">สำหรับผู้ดูแลระบบ</span></div>
                        <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="ui_dr" class="collapse collapse-level-1 two-col-list">
                        <li>
                            <a href="/login">ทะเบียนอุปกรณ์</a>
                        </li>
                        <li>
                            <a href="/login">รายงาน</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <hr class="light-grey-hr mb-10" />
                </li>
                <li class="navigation-header">
                    <span>featured</span>
                    <i class="zmdi zmdi-more"></i>
                </li>
                <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#pages_dr">
                        <div class="pull-left"><i class="zmdi zmdi-google-pages mr-20"></i><span class="right-nav-text">ข้อมูลเกี่ยวกับระบบ</span></div>
                        <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="pages_dr" class="collapse collapse-level-1 two-col-list">
                        <li>
                            <a href="/about">เกี่ยวกับระบบแจ้งซ่อม</a>
                        </li>
                        <li>
                            <a href="#">คู่มือการใช้งานระบบ</a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
        <!-- /Left Sidebar Menu -->


        <!-- JavaScript -->

        <!-- jQuery -->
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Data table JavaScript -->
        <script src="vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>

        <!-- Slimscroll JavaScript -->
        <script src="dist/js/jquery.slimscroll.js"></script>

        <!-- simpleWeather JavaScript -->
        <script src="vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
        <script src="dist/js/simpleweather-data.js"></script>

        <!-- Progressbar Animation JavaScript -->
        <script src="vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
        <script src="vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>

        <!-- Fancy Dropdown JS -->
        <script src="dist/js/dropdown-bootstrap-extended.js"></script>

        <!-- Sparkline JavaScript -->
        <script src="vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>

        <!-- Owl JavaScript -->
        <script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

        <!-- Toast JavaScript -->
        <script src="vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>

        <!-- EChartJS JavaScript -->
        <script src="vendors/bower_components/echarts/dist/echarts-en.min.js"></script>
        <script src="vendors/echarts-liquidfill.min.js"></script>

        <!-- Switchery JavaScript -->
        <script src="vendors/bower_components/switchery/dist/switchery.min.js"></script>

        <!-- Init JavaScript -->
        <script src="dist/js/init.js"></script>
        <script src="dist/js/dashboard5-data.js"></script>