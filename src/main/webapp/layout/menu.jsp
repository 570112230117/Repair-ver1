<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bru.model.MemberBean"%>
        <%
    MemberBean bean = null;
    bean = (MemberBean) request.getSession().getAttribute("login");
    %>
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
                                <a href="/Dashboard">
                                    <img class="brand-img" style="width: 80px" src="/dist/img/logosmall.png" alt="brand" />
                                </a>
                            </div>
                        </div>
                        <a id="toggle_nav_btn" class="toggle-left-nav-btn inline-block ml-20 pull-left" href="javascript:void(0);"><i class="zmdi zmdi-menu"></i></a>
                        <a id="toggle_mobile_nav" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-more"></i></a>

                    </div>
                    <div id="mobile_only_nav" class="mobile-only-nav pull-right">
                        <ul class="nav navbar-right top-nav pull-right">
                            <li>
                                <a id="open_right_sidebar" href="#"><i class="zmdi zmdi-settings top-nav-icon"></i></a>
                            </li>
                            <!-- <li class="dropdown alert-drp">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-notifications top-nav-icon"></i><span class="top-nav-icon-badge">5</span></a>
                                <ul class="dropdown-menu alert-dropdown" data-dropdown-in="bounceIn" data-dropdown-out="bounceOut">
                                    <li>
                                        <div class="notification-box-head-wrap">
                                            <span class="notification-box-head pull-left inline-block">notifications</span>
                                            <a class="txt-danger pull-right clear-notifications inline-block" href="javascript:void(0)"> clear all </a>
                                            <div class="clearfix"></div>
                                            <hr class="light-grey-hr ma-0" />
                                        </div>
                                    </li>
                                    <li>
                                        <div class="streamline message-nicescroll-bar">
                                            <div class="sl-item">
                                                <a href="javascript:void(0)">
                                                    <div class="icon bg-green">
                                                        <i class="zmdi zmdi-flag"></i>
                                                    </div>
                                                    <div class="sl-content">
                                                        <span class="inline-block capitalize-font  pull-left truncate head-notifications">
                                            New subscription created</span>
                                                        <span class="inline-block font-11  pull-right notifications-time">2pm</span>
                                                        <div class="clearfix"></div>
                                                        <p class="truncate">Your customer subscribed for the basic plan. The customer will pay $25 per month.</p>
                                                    </div>
                                                </a>
                                            </div>
                                            <hr class="light-grey-hr ma-0" />
                                            <div class="sl-item">
                                                <a href="javascript:void(0)">
                                                    <div class="icon bg-yellow">
                                                        <i class="zmdi zmdi-trending-down"></i>
                                                    </div>
                                                    <div class="sl-content">
                                                        <span class="inline-block capitalize-font  pull-left truncate head-notifications txt-warning">Server #2 not responding</span>
                                                        <span class="inline-block font-11 pull-right notifications-time">1pm</span>
                                                        <div class="clearfix"></div>
                                                        <p class="truncate">Some technical error occurred needs to be resolved.</p>
                                                    </div>
                                                </a>
                                            </div>
                                            <hr class="light-grey-hr ma-0" />
                                            <div class="sl-item">
                                                <a href="javascript:void(0)">
                                                    <div class="icon bg-blue">
                                                        <i class="zmdi zmdi-email"></i>
                                                    </div>
                                                    <div class="sl-content">
                                                        <span class="inline-block capitalize-font  pull-left truncate head-notifications">2 new messages</span>
                                                        <span class="inline-block font-11  pull-right notifications-time">4pm</span>
                                                        <div class="clearfix"></div>
                                                        <p class="truncate"> The last payment for your G Suite Basic subscription failed.</p>
                                                    </div>
                                                </a>
                                            </div>
                                            <hr class="light-grey-hr ma-0" />
                                            <div class="sl-item">
                                                <a href="javascript:void(0)">
                                                    <div class="sl-avatar">
                                                        <img class="img-responsive" src="dist/img/avatar.jpg" alt="avatar" />
                                                    </div>
                                                    <div class="sl-content">
                                                        <span class="inline-block capitalize-font  pull-left truncate head-notifications">Sandy Doe</span>
                                                        <span class="inline-block font-11  pull-right notifications-time">1pm</span>
                                                        <div class="clearfix"></div>
                                                        <p class="truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
                                                    </div>
                                                </a>
                                            </div>
                                            <hr class="light-grey-hr ma-0" />
                                            <div class="sl-item">
                                                <a href="javascript:void(0)">
                                                    <div class="icon bg-red">
                                                        <i class="zmdi zmdi-storage"></i>
                                                    </div>
                                                    <div class="sl-content">
                                                        <span class="inline-block capitalize-font  pull-left truncate head-notifications txt-danger">99% server space occupied.</span>
                                                        <span class="inline-block font-11  pull-right notifications-time">1pm</span>
                                                        <div class="clearfix"></div>
                                                        <p class="truncate">consectetur, adipisci velit.</p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="notification-box-bottom-wrap">
                                            <hr class="light-grey-hr ma-0" />
                                            <a class="block text-center read-all" href="javascript:void(0)"> read all </a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </li>
                                </ul>
                            </li> -->
                            <li class="dropdown auth-drp">
                                <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><i class="zmdi zmdi-account-circle top-nav-icon"></i> <span class="label_user "></span><%=bean.getName() %></span>
                            <span class="caret"></span></a>
                                <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                                    <li>
                                        <a href="/profile"><i class="zmdi zmdi-account"></i><span>โปรไฟล์</span></a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="javascript: document.logoutForm.submit()"><i class="zmdi zmdi-power"></i><span>ออกจากระบบ</span></a>
                                        <form action="logout" name="logoutForm" method="post"></form>
                                    </li>
                                </ul>
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
                            <a href="/Dashboard">
                                <div class="pull-left"><i class="zmdi zmdi-landscape mr-20"></i><span class="right-nav-text">Dashboard</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="/repair">
                                <div class="pull-left"><i class="zmdi zmdi-home  mr-20"></i><span class="right-nav-text">บันทึกงานซ่อม</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="/tabel">
                                <div class="pull-left"><i class="zmdi zmdi-apps mr-20"></i><span class="right-nav-text">รายการแจ้งซ่อมทั้งหมด</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <!-- <li>
                            <a href="javascript:void(0);" data-toggle="collapse" data-target="#ecom_dr">
                                <div class="pull-left"><i class="zmdi zmdi-menu mr-20"></i><span class="right-nav-text">ตรวจสอบสถานะ</span> <span class="label label-danger">New</span></div>
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
                        </li> -->
                        <li>
                            <hr class="light-grey-hr mb-10" />
                        </li>
                        <li class="navigation-header">
                            <span>component</span>
                            <i class="zmdi zmdi-more"></i>
                        </li>
                        <li>
                            <a href="/customer">
                                <div class="pull-left"><i class="zmdi zmdi-account-add mr-20"></i><span class="right-nav-text">ลูกค้า</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <li>
                            <a href="/tabeldevice">
                                <div class="pull-left"><i class="zmdi zmdi-collection-text mr-20"></i><span class="right-nav-text">อุปกรณ์</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li>
                        <!-- <li>
                            <a href="/report">
                                <div class="pull-left"><i class="zmdi zmdi-file mr-20"></i><span class="right-nav-text">รายงาน</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li> -->
                        <!-- <li>
                            <a href="/company">
                                <div class="pull-left"><i class="zmdi zmdi-mail-send mr-20"></i><span class="right-nav-text">อุปกรณ์ส่งซ่อม</span></div>
                                <div class="clearfix"></div>
                            </a>
                        </li> -->
                        <li>
                            <%if(bean.getRole().equals("admin")){
                                    %>
                                <a href="/membersetting">
                                    <div class="pull-left"><i class="zmdi zmdi-account mr-20"></i><span class="right-nav-text">ผู้ใช้งานระบบ</span></div>
                                    <div class="clearfix"></div>
                                </a>
                                <%  }  %>
                        </li>
                        <li>
                            <hr class="light-grey-hr mb-10" />
                        </li>
                        <li class="navigation-header">
                            <span>featured</span>
                            <i class="zmdi zmdi-more"></i>
                        </li>
                        <li>
                            <a href="">
                                <div class="pull-left"><i class="zmdi zmdi-google-pages mr-20"></i><span class="right-nav-text">คู่มือการใช้งานระบบ</span></div>
                                <div class="clearfix"></div>
                            </a>

                        </li>
                        <!-- <li>
                            <a href="javascript:void(0);" data-toggle="collapse" data-target="#pages_dr">
                                <div class="pull-left"><i class="zmdi zmdi-google-pages mr-20"></i><span class="right-nav-text">ข้อมูลเกี่ยวกับระบบ</span></div>
                                <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                                <div class="clearfix"></div>
                            </a>
                            <ul id="pages_dr" class="collapse collapse-level-1 two-col-list">
                                <li>
                                    <a href="">เกี่ยวกับระบบแจ้งซ่อม</a>
                                </li>

                            </ul>
                        </li> -->

                    </ul>
                </div>
                <!-- /Left Sidebar Menu -->

                <!-- Right Sidebar Menu -->
                <div class="fixed-sidebar-right">
                    <ul class="right-sidebar">
                        <li>
                            <div class="tab-struct custom-tab">
                                <div class="tab-content" id="right_sidebar_content">
                                    <div id="chat_tab" class="tab-pane fade active in" role="tabpanel">
                                        <div class="set-height-wrap" style="height: 935px;">
                                            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
                                                <div class="streamline message-box nicescroll-bar" style="overflow: hidden; width: auto; height: 100%;">
                                                    <a href="/repairsetting">
                                                        <div class="sl-item unread-message">
                                                            <i class="glyphicon glyphicon-pencil"></i> ตั้งค่าปัญหา
                                                        </div>
                                                    </a>
                                                    <a href="/repairtype">
                                                        <div class="sl-item unread-message">
                                                            <i class="glyphicon glyphicon-move"></i> ตั้งค่าประเภทการแจ้งซ่อม
                                                        </div>
                                                    </a>
                                                    <a href="/repairsettingtype">
                                                        <div class="sl-item unread-message">
                                                            <i class="glyphicon glyphicon-wrench"></i> ตั้งค่าหมวดหมู่อุปกรณ์
                                                        </div>
                                                    </a>
                                                    <a href="/status">
                                                        <div class="sl-item unread-message">
                                                            <i class="glyphicon glyphicon-check"></i> ตั้งค่าสถานะ
                                                        </div>
                                                    </a>
                                                    <a href="/brandsetting">
                                                        <div class="sl-item unread-message">
                                                            <i class="glyphicon glyphicon-move"></i> ตั้งค่ายี่ห้อ
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- /Right Sidebar Menu -->

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