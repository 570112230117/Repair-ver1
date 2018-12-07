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
                                    <h6 class="panel-title txt-dark">อุปกรณ์ทั้งหมด แยกตาม หมวดหมู่อุปกรณ์</h6>
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


        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load("current", {
                packages: ['corechart']
            });
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ["Element", "Density", {
                        role: "style"
                    }],
                    ["NOTEBOOK", 20, "#4d4dff"],
                    ["COMPUTER", 10, "#ff3300"],
                    ["PRINTER", 19, "#ff9900"],
                    ["เครื่องถ่ายฯ", 1, "#ff0066"],
                    ["MONITER", 1, "#3366ff"],
                    ["FAX", 1, "#cc00ff"],
                    ["กล้อง", 1, "#cc0000"],
                    ["ตู้สาขา", 2, "#00ffff"],
                    ["โทรศัพท์", 1, "#009933"],
                    ["เครื่องอื่นๆ", 19, "#ff66ff"],
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


        <script type="text/javascript">
            google.charts.load("current", {
                packages: ["corechart"]
            });
            google.charts.setOnLoadCallback(drawChart);
            // var xxx = '';

            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Task', 'Hours per Day'],
                    ['เครื่องคอมพิวเตอร์Notebook', 3],
                    ['เครื่องคอมพิวเตอร์PC', 1],
                    ['เครื่องพิมพ์เลเซอร์Laser Printer', 2],
                    ['เครื่องพิมพ์แบบพ่นหมึก(Inkjet)', 1],
                    ['เครื่องพิมพ์ดอทเมทริกซ์(Dot matrix)', 0],
                    ['เครื่องสแกนเนอร์(Scanner)', 0],
                    ['เครื่องสำรองไฟ(UPS)', 0],
                    ['อินเทอร์เน็ต(Internet)', 0],
                    ['ระบบเครือข่าย (Network)', 0],
                    ['ไวรัสคอมพิวเตอร์(Virus Computer)', 2],
                    ['จอคอมพิวเตอร์', 0],
                    ['DVD-RW', 0],
                    ['External HDD', 0],
                    ['อื่นๆ', 2],
                ]);
                var options = {
                    title: "คลิกเพื่อดูรายละเอียดอาการเสีย",
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
                                    title: 'อาการเสีย',
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

        <script type="text/javascript">
            google.charts.load("current", {
                packages: ["corechart"]
            });
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Language', 'Speakers (in millions)'],
                    ['NOTEBOOK', 20],
                    ['COMPUTER', 10],
                    ['PRINTER', 15],
                    ['เครื่องถ่ายฯ', 0],
                    ['MONITER', 2],
                    ['FAX', 0],
                    ['กล้อง', 0],
                    ['ตู้สาขา', 0],
                    ['โทรศัพท์', 0],
                    ['เครื่องอื่นๆ', 5],
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
                $.ajax({
                    type: "GET",
                    url: "/countNB",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#NB').append(msg.deviceCategory);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countCS",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countCS').append(msg.deviceCategory);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countPT",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countPT').append(msg.deviceCategory);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countCY",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countCY').append(msg.deviceCategory);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countMT",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countMT').append(msg.deviceCategory);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countFT",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countFT').append(msg.deviceCategory);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countCM",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countCM').append(msg.deviceCategory);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countSK",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countSK').append(msg.deviceCategory);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countTN",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countTN').append(msg.deviceCategory);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countVE",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countVE').append(msg.deviceCategory);
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "/countS0",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#countS0').append(msg.deviceCategory);
                    }
                });
            });
            $("#เครื่องคอมพิวเตอร์Notebook").click(function() {
                alert("#เครื่องคอมพิวเตอร์Notebook");
            });
        </script>
    </body>

    </html>