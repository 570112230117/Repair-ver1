<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <title>Dashboard</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css' integrity='sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz' crossorigin='anonymous'>
        <!-- Data table CSS -->
        <link href="vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />

        <link href="vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">

        <!-- bootstrap-select CSS -->
        <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />

        <!-- Calendar CSS -->
        <link href="vendors/bower_components/fullcalendar/dist/fullcalendar.css" rel="stylesheet" type="text/css" />

        <!-- Custom CSS -->
        <link href="dist/css/style.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper" style="min-height: 1500px;">
            <div class="container-fluid pt-25">

                <!-- Row -->
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span id="1"></span></span>
                                                    <span class="weight-500 uppercase-font block font-13">แจ้งซ่อม</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <!-- <i class="icon-user-following data-right-rep-icon txt-light-grey"></i> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span  id="2"></span></span>
                                                    <span class="weight-500 uppercase-font block">รอตรวจสอบ</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <!-- <i class="icon-control-rewind data-right-rep-icon txt-light-grey"></i> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span  id="3"></span></span>
                                                    <span class="weight-500 uppercase-font block">อยู่ระหว่างซ่อม</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <!-- <i class="icon-layers data-right-rep-icon txt-light-grey"></i> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span  id="4"></span></span>
                                                    <span class="weight-500 uppercase-font block">แจ้งราคาซ่อม</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">
                                                    <!-- <div id="sparkline_4" style="width: 100px; overflow: hidden; margin: 0px auto;"><canvas width="100" height="50" style="display: inline-block; width: 100px; height: 50px; vertical-align: top;"></canvas></div> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Row -->

                <!-- Row -->
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span  id="5"></span></span>
                                                    <span class="weight-500 uppercase-font block font-13">ส่งคืนพนักงาน</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <!-- <i class="icon-user-following data-right-rep-icon txt-light-grey"></i> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span  id="6"></span></span>
                                                    <span class="weight-500 uppercase-font block">ส่งซ่อม</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <!-- <i class="icon-control-rewind data-right-rep-icon txt-light-grey"></i> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span id="7"></span></span>
                                                    <span class="weight-500 uppercase-font block">ส่งคืนสินค้าแล้ว</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <!-- <i class="icon-layers data-right-rep-icon txt-light-grey"></i> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span id="8"></span></span>
                                                    <span class="weight-500 uppercase-font block">ยกเลิกการซ่อม</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">
                                                    <!-- <div id="sparkline_4" style="width: 100px; overflow: hidden; margin: 0px auto;"><canvas width="100" height="50" style="display: inline-block; width: 100px; height: 50px; vertical-align: top;"></canvas></div> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Row -->

                <div class="row">
                    <div class="col-lg-9 col-md-6 col-sm-12 col-xs-12">
                        <div class="panel panel-default card-view panel-refresh">
                            <div class="refresh-container">
                                <div class="la-anim-1"></div>
                            </div>
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">สถิติการซ่อมแยกตามหมวดหมู่อุปกรณ์</h6>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="pull-left inline-block refresh mr-15">
                                        <i class="zmdi zmdi-replay"></i>
                                    </a>
                                    <a href="#" class="pull-left inline-block full-screen mr-15">
                                        <i class="zmdi zmdi-fullscreen"></i>
                                    </a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div id="columnchart_values"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-lg-9 col-md-6 col-sm-12 col-xs-12">
                        <div class="panel panel-default card-view panel-refresh">
                            <div class="refresh-container">
                                <div class="la-anim-1"></div>
                            </div>
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">สถิติการซ่อมแยกตามหมวดหมู่อุปกรณ์</h6>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="pull-left inline-block refresh mr-15">
                                        <i class="zmdi zmdi-replay"></i>
                                    </a>
                                    <a href="#" class="pull-left inline-block full-screen mr-15">
                                        <i class="zmdi zmdi-fullscreen"></i>
                                    </a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body row pa-0">
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <table class="table table-hover mb-0">
                                                <tr>
                                                    <td class="txt-dark weight-500"><span class="icon-notebook"></span></td>
                                                    <td><span class="txt-dark weight-500">NOTEBOOK</span></td>
                                                    <td><span class="txt-dark weight-500" id="NB"></span><span class="txt-dark weight-500"> ครั้ง</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="txt-dark weight-500"><span class="icon-screen-desktop"></span></td>
                                                    <td><span class="txt-dark weight-500">COMPUTER</span></td>
                                                    <td><span class="txt-dark weight-500" id="countCS"></span><span class="txt-dark weight-500"> ครั้ง</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="txt-dark weight-500"><span class="icon-printer"></span></td>
                                                    <td><span class="txt-dark weight-500">PRINTER</span></td>
                                                    <td><span class="txt-dark weight-500" id="countPT"></span><span class="txt-dark weight-500"> ครั้ง</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="txt-dark weight-500"><span class="icon-film"></span></td>
                                                    <td><span class="txt-dark weight-500">เครื่องถ่ายฯ</span></td>
                                                    <td><span class="txt-dark weight-500" id="countCY"></span><span class="txt-dark weight-500"> ครั้ง</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="txt-dark weight-500"><span class="icon-screen-desktop"></span></td>
                                                    <td><span class="txt-dark weight-500">MONITER</span></td>
                                                    <td><span class="txt-dark weight-500" id="countMT"></span><span class="txt-dark weight-500"> ครั้ง</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="txt-dark weight-500"><span class="icon-cursor"></span></td>
                                                    <td><span class="txt-dark weight-500">FAX</span></td>
                                                    <td><span class="txt-dark weight-500" id="countFT"></span><span class="txt-dark weight-500"> ครั้ง</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="txt-dark weight-500"><span class="icon-picture"></span></td>
                                                    <td><span class="txt-dark weight-500">กล้อง</span></td>
                                                    <td><span class="txt-dark weight-500" id="countCM"></span><span class="txt-dark weight-500"> ครั้ง</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="txt-dark weight-500"><span class="icon-credit-card"></span></td>
                                                    <td><span class="txt-dark weight-500">ตู้สาขา</span></td>
                                                    <td><span class="txt-dark weight-500" id="countSK"></span><span class="txt-dark weight-500"> ครั้ง</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="txt-dark weight-500"><span class="icon-screen-smartphone"></span></td>
                                                    <td><span class="txt-dark weight-500">โทรศัพท์</span></td>
                                                    <td><span class="txt-dark weight-500" id="countTN"></span><span class="txt-dark weight-500"> ครั้ง</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="txt-dark weight-500"><span class="icon-speech"></span></td>
                                                    <td><span class="txt-dark weight-500">เครื่องอื่นๆ</span></td>
                                                    <td><span class="txt-dark weight-500" id="countVE"></span><span class="txt-dark weight-500"> ครั้ง</span></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->

                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span id="countCustomer"></span></span>
                                                    <span class="weight-500 uppercase-font block font-13">ลูกค้าทั้งหมด</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <i class="icon-user-following data-right-rep-icon txt-light-grey"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span id="countMember"></span></span>
                                                    <span class="weight-500 uppercase-font block">พนักงาน & ช่างซ่อมทั้งหมด</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <i class="icon-user-following data-right-rep-icon txt-light-grey"></i>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span id="countRepair"></span></span>
                                                    <span class="weight-500 uppercase-font block">จำนวนการแจ้งซ่อมทั้งหมด</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <i class="icon-control-rewind data-right-rep-icon txt-light-grey"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter"><span id="countDevice"></span></span>
                                                    <span class="weight-500 uppercase-font block">จำนวนอุปกรณ์ทั้งหมด</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <i class="icon-layers data-right-rep-icon txt-light-grey"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel card-view">
                            <div class="panel-heading small-panel-heading relative">
                                <div class="pull-left">
                                    <h6 class="panel-title">รายได้ทั้งหมด</h6>
                                </div>
                                <div class="clearfix"></div>
                                <div class="head-overlay"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body row pa-0">
                                    <div class="sm-data-box">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-dark block counter">$<span id="sumRepair"></span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-sm-6">
                        <div class="panel panel-default card-view panel-refresh">
                            <div class="refresh-container">
                                <div class="la-anim-1"></div>
                            </div>
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">ประเภทการแจ้งซ่อม</h6>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="pull-left inline-block refresh mr-15">
                                        <i class="zmdi zmdi-replay"></i>
                                    </a>
                                    <a href="#" class="pull-left inline-block full-screen mr-15">
                                        <i class="zmdi zmdi-fullscreen"></i>
                                    </a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div id="piechart_3d" style="width: 750px; height: 500px;"></div>
                                    <!-- <div id="piechart" style="width: 750px; height: 500px;"></div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="panel panel-default card-view panel-refresh">
                            <div class="refresh-container">
                                <div class="la-anim-1"></div>
                            </div>
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">อุปกรณ์ทั้งหมดแยกตามหมวดหมู่อุปกรณ์</h6>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="pull-left inline-block refresh mr-15">
                                        <i class="zmdi zmdi-replay"></i>
                                    </a>
                                    <a href="#" class="pull-left inline-block full-screen mr-15">
                                        <i class="zmdi zmdi-fullscreen"></i>
                                    </a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div id="piechart" style="width: 750px; height: 500px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <div id="piechartxxx" style="width: 800px; height: 500px;"></div>
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <footer class="footer container-fluid pl-30 pr-30">
                <div class="row">
                    <div class="col-sm-12">
                        <p>2017 &copy; Elmer. Pampered by Hencework</p>
                    </div>
                </div>
            </footer>
        </div>


        <script src="https://www.gstatic.com/charts/loader.js"></script>
        <script>
            var chartNOTEBOOK;
            var chartCOMPUTER;
            var chartPRINTER;
            var chartThai1;
            var chartMONITER;
            var chartFAX;
            var chartThai2;
            var chartThai3;
            var chartThai4;
            var chartThai5;

            $.ajax({
                type: "GET",
                url: "/chartNOTEBOOK",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    chartNOTEBOOK = msg.deviceId;
                }
            });
            $.ajax({
                type: "GET",
                url: "/chartCOMPUTER",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    chartCOMPUTER = msg.deviceId;
                }
            });
            $.ajax({
                type: "GET",
                url: "/chartPRINTER",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    chartPRINTER = msg.deviceId;
                }
            });
            $.ajax({
                type: "GET",
                url: "/chartThai1",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    chartThai1 = msg.deviceId;
                }
            });
            $.ajax({
                type: "GET",
                url: "/chartMONITER",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    chartMONITER = msg.deviceId;
                }
            });
            $.ajax({
                type: "GET",
                url: "/chartFAX",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    chartFAX = msg.deviceId;
                }
            });
            $.ajax({
                type: "GET",
                url: "/chartThai2",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    chartThai2 = msg.deviceId;
                }
            });
            $.ajax({
                type: "GET",
                url: "/chartThai3",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    chartThai3 = msg.deviceId;
                }
            });
            $.ajax({
                type: "GET",
                url: "/chartThai4",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    chartThai4 = msg.deviceId;
                }
            });
            $.ajax({
                type: "GET",
                url: "/chartThai5",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    chartThai5 = msg.deviceId;
                }
            });
            google.charts.load("current", {
                packages: ['corechart']
            });
            google.charts.setOnLoadCallback(drawChart);
            var nb = parseInt(chartNOTEBOOK);
            var com = parseInt(chartCOMPUTER);
            var pr = parseInt(chartPRINTER);
            var ct1 = parseInt(chartThai1);
            var mo = parseInt(chartMONITER);
            var fax = parseInt(chartFAX);
            var ct2 = parseInt(chartThai2);
            var ct3 = parseInt(chartThai3);
            var ct4 = parseInt(chartThai4);
            var ct5 = parseInt(chartThai5);

            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ["Element", "Density", {
                        role: "style"
                    }],
                    ["NOTEBOOK", nb, "#4d4dff"],
                    ["COMPUTER", com, "#ff3300"],
                    ["PRINTER", pr, "#ff9900"],
                    ["เครื่องถ่ายฯ", ct1, "#ff0066"],
                    ["MONITER", mo, "#3366ff"],
                    ["FAX", fax, "#cc00ff"],
                    ["กล้อง", ct2, "#cc0000"],
                    ["ตู้สาขา", ct3, "#00ffff"],
                    ["โทรศัพท์", ct4, "#009933"],
                    ["เครื่องอื่นๆ", ct5, "#ff66ff"],
                ]);

                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1, {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    },
                    2
                ]);

                var options = {
                    title: "สถิติการซ่อมแยกตามหมวดหมู่อุปกรณ์",
                    width: 1180,
                    height: 525,
                    bar: {
                        groupWidth: "95%"
                    },
                    legend: {
                        position: "none"
                    },
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
                chart.draw(view, options);
            }
        </script>


        <script>
            var repairType1;
            var repairType2;
            var repairType3;
            var repairType4;
            var repairType5;
            var repairType6;
            var repairType7;
            var repairType8;
            var repairType9;
            var repairType10;
            var repairType11;
            var repairType12;
            var repairType13;
            var repairType17;
            $.ajax({
                type: "GET",
                url: "/repairType1",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType1 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType2",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType2 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType3",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType3 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType4",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType4 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType5",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType5 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType6",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType6 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType7",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType7 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType8",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType8 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType9",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType9 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType10",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType10 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType11",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType11 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType12",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType12 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType13",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType13 = msg.jobTypeID;
                }
            });
            $.ajax({
                type: "GET",
                url: "/repairType17",
                contentType: "application/json; charset=utf-8",
                datatype: "json",
                async: false,
                success: function(msg) {
                    repairType17 = msg.jobTypeID;
                }
            });

            google.charts.load("current", {
                packages: ["corechart"]
            });
            google.charts.setOnLoadCallback(drawChart);
            var nb = parseInt(repairType1);
            var pc = parseInt(repairType2);
            var pr = parseInt(repairType3);
            var In = parseInt(repairType4);
            var Dot = parseInt(repairType5);
            var Scanner = parseInt(repairType6);
            var UPS = parseInt(repairType7);
            var Internet = parseInt(repairType8);
            var Network = parseInt(repairType9);
            var Computer = parseInt(repairType10);
            var mo = parseInt(repairType11);
            var DVD = parseInt(repairType12);
            var HDD = parseInt(repairType13);
            var ot = parseInt(repairType17);

            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Task', 'Hours per Day'],
                    ['เครื่องคอมพิวเตอร์Notebook', nb],
                    ['เครื่องคอมพิวเตอร์PC', pc],
                    ['เครื่องพิมพ์เลเซอร์Laser Printer', pr],
                    ['เครื่องพิมพ์แบบพ่นหมึก(Inkjet)', In],
                    ['เครื่องพิมพ์ดอทเมทริกซ์(Dot matrix)', Dot],
                    ['เครื่องสแกนเนอร์(Scanner)', Scanner],
                    ['เครื่องสำรองไฟ(UPS)', UPS],
                    ['อินเทอร์เน็ต(Internet)', Internet],
                    ['ระบบเครือข่าย (Network)', Network],
                    ['ไวรัสคอมพิวเตอร์(Virus Computer)', Computer],
                    ['จอคอมพิวเตอร์', mo],
                    ['DVD-RW', DVD],
                    ['External HDD', HDD],
                    ['อื่นๆ', ot],
                ]);
                var options = {
                    title: "คลิกเพื่อดูรายละเอียดสถิติอาการเสีย",
                    // is3D: true,
                };
                var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                chart.draw(data, options);
                google.visualization.events.addListener(chart, 'select', selectHandlerx);

                function selectHandlerx() {
                    var selection = chart.getSelection();
                    var str = '';
                    for (var i = 0; i < selection.length; i++) {
                        var item = selection[i];
                        if (item.row != null && item.column != null) {
                            str = data.getFormattedValue(item.row, item.column);
                        } else if (item.row != null) {
                            str = data.getFormattedValue(item.row, 0);
                        } else if (item.column != null) {
                            str = data.getFormattedValue(0, item.column);
                        }

                    }


                    if (str != '') {
                        var a = str;
                    }
                    // alert(str);
                    var testBean = {
                        "a": a
                    };
                    console.log(testBean)

                    $.ajax({
                        type: "POST",
                        url: "/countType",
                        data: JSON.stringify(testBean),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            google.charts.load("current", {
                                packages: ["corechart"]
                            });
                            google.charts.setOnLoadCallback(drawChart);

                            function drawChart() {
                                var counts = {};
                                msg.forEach(function(x) {
                                    counts[x.name] = (counts[x.name] || 0) + 1;
                                });
                                // console.log('ลงวินโดว์ 10 ' + counts["ลงวินโดว์ 10"]);                               
                                var dataarray = [];
                                var Header = ['Language', 'Speakers (in millions)'];
                                // var names = ["Mike", "Matt", "Nancy", "Adam", "Jenny", "Nancy", "Carl"];
                                var uniqueNames = [];
                                $.each(msg, function(i, el) {
                                    if ($.inArray(el.name, uniqueNames) === -1) uniqueNames.push(el.name);
                                });
                                console.log(uniqueNames);
                                dataarray.push(Header);
                                for (var i = 0; i < uniqueNames.length; i++) {
                                    var temp = [];
                                    temp.push(uniqueNames[i]);
                                    temp.push(counts[uniqueNames[i]]);
                                    dataarray.push(temp);

                                }
                                var data = new google.visualization.arrayToDataTable(dataarray);
                                var options = {
                                    legend: 'none',
                                    pieSliceText: 'label',
                                    title: 'สถิติอาการเสีย: ' + a,
                                    pieStartAngle: 100,
                                };
                                var chart = new google.visualization.PieChart(document.getElementById('piechartxxx'));
                                chart.draw(data, options);
                            }
                        }
                    });
                }
            }
        </script>

        <script>
            var countNB;
            var countCS;
            var countPT;
            var countCY;
            var countMT;
            var countFT;
            var countCM;
            var countSK;
            var countTN;
            var countVE;

            $.ajax({
                type: "GET",
                url: "/countNB",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function(msg) {
                    countNB = msg.deviceCategory;
                }
            });
            $.ajax({
                type: "GET",
                url: "/countCS",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function(msg) {
                    countCS = msg.deviceCategory;
                }
            });
            $.ajax({
                type: "GET",
                url: "/countPT",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function(msg) {
                    countPT = msg.deviceCategory;
                }
            });
            $.ajax({
                type: "GET",
                url: "/countCY",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function(msg) {
                    countCY = msg.deviceCategory;
                }
            });
            $.ajax({
                type: "GET",
                url: "/countMT",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function(msg) {
                    countMT = msg.deviceCategory;
                }
            });
            $.ajax({
                type: "GET",
                url: "/countFT",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function(msg) {
                    countFT = msg.deviceCategory;
                }
            });
            $.ajax({
                type: "GET",
                url: "/countCM",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function(msg) {
                    countCM = msg.deviceCategory;
                }
            });
            $.ajax({
                type: "GET",
                url: "/countSK",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function(msg) {
                    countSK = msg.deviceCategory;
                }
            });
            $.ajax({
                type: "GET",
                url: "/countTN",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function(msg) {
                    countTN = msg.deviceCategory;
                }
            });
            $.ajax({
                type: "GET",
                url: "/countVE",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function(msg) {
                    countVE = msg.deviceCategory;
                }
            });

            google.charts.load("current", {
                packages: ["corechart"]
            });
            google.charts.setOnLoadCallback(drawChart);
            var nb = parseInt(countNB);
            var cs = parseInt(countCS);
            var pt = parseInt(countPT);
            var cy = parseInt(countCY);
            var mt = parseInt(countMT);
            var ft = parseInt(countFT);
            var cm = parseInt(countCM);
            var sk = parseInt(countSK);
            var tn = parseInt(countTN);
            var ve = parseInt(countVE);


            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Language', 'Speakers (in millions)'],
                    ['NOTEBOOK', nb],
                    ['COMPUTER', cs],
                    ['PRINTER', pt],
                    ['เครื่องถ่ายฯ', cy],
                    ['MONITER', mt],
                    ['FAX', ft],
                    ['กล้อง', cm],
                    ['ตู้สาขา', sk],
                    ['โทรศัพท์', tn],
                    ['เครื่องอื่นๆ', ve],
                ]);
                var options = {
                    title: '',
                    legend: 'none',
                    pieSliceText: 'label',
                    slices: {
                        4: {
                            offset: 0.2
                        },
                        12: {
                            offset: 0.3
                        },
                        14: {
                            offset: 0.4
                        },
                        15: {
                            offset: 0.5
                        },
                    },
                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                chart.draw(data, options);
            }
        </script>


        <script>
            $(document).ready(function() {
                $.ajax({
                    type: "GET",
                    url: "/COUNTC1",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#1').append(msg.repairStatus);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/COUNTC2",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#2').append(msg.repairStatus);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/COUNTC3",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#3').append(msg.repairStatus);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/COUNTC4",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#4').append(msg.repairStatus);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/COUNTC5",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#5').append(msg.repairStatus);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/COUNTC6",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#6').append(msg.repairStatus);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/COUNTC7",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#7').append(msg.repairStatus);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/COUNTC8",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#8').append(msg.repairStatus);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countCustomer",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countCustomer').append(msg.id);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countMember",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countMember').append(msg.id);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countDevice",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countDevice').append(msg.id);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countRepair",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countRepair').append(msg.id);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/sumRepair",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        var a = parseInt(msg.sum)
                        $('#sumRepair').append(' ' + a.toLocaleString());
                    }
                });

            });
        </script>
    </body>

    </html>