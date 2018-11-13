<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <title>ติดตามการซ่อม</title>
        <meta name="description" content="Elmer is a Dashboard & Admin Site Responsive Template by hencework." />
        <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Elmer Admin, Elmeradmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
        <meta name="author" content="hencework" />
        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico">
        <link rel="icon" href="favicon.ico" type="image/x-icon">
        <!-- vector map CSS -->
        <link href="vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Custom CSS -->
        <link href="dist/css/style.css" rel="stylesheet" type="text/css">
        <!--alerts CSS -->
        <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <div class="wrapper  pa-0">

            <!-- Main Content -->
            <div class="page-wrapper pa-0 ma-0 auth-page">
                <div class="container-fluid">
                    <!-- Row -->
                    <div class="table-struct full-width full-height">
                        <div class="auth-form  ml-auto mr-auto no-float" style="margin-top: 3%">
                            <div class="row">
                                <div class="col-sm-12 col-xs-12">
                                    <div class="sp-logo-wrap text-center pa-0 mb-30">
                                        <a href="index.html">
                                            <img class="brand-img mr-10" style="width: 200px" src="/dist/img/LOGO_OA1.png" alt="brand" />
                                        </a>
                                    </div>
                                    <div class="mb-30">
                                        <h3 class="text-center txt-dark mb-10">ติดตามการซ่อม/Track Repair</h3>
                                    </div>
                                    <div class="form-wrap">
                                        <div class="form-group">
                                            <label>**กรอกเลขที่ใบรับซ่อม</label>
                                            <input type="text" class="form-control" required="" id="track" placeholder="Enter your tracking number">
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button class="btn btn-primary btn-rounded" onclick="check()">ติดตาม</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <!-- <hr class="light-grey-hr"> -->
                        <div class="row">
                            <div class="col-md-6">
                                <!-- <div class="panel panel-default card-view"> -->
                                <div class="panel-wrapper collapse in">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-sm-12 col-xs-12">
                                                <div class="form-wrap">
                                                    <div class="form-horizontal">
                                                        <!-- <div class="form-group">
                                                            <label class="col-sm-3 control-label">Username*</label>
                                                            <label class="control-label">ESD-1410019C - PRINTER BROTHER รุ่น DCP-T500W</label>
                                                        </div> -->
                                                        <div class="form-group" id="id">
                                                        </div>
                                                        <div class="form-group" id="date">
                                                        </div>
                                                        <div class="form-group" id="customerID">
                                                        </div>
                                                        <div class="form-group" id="name">
                                                        </div>
                                                        <div class="form-group" id="phone">
                                                        </div>
                                                        <div class="form-group" id="device">
                                                        </div>
                                                        <div class="form-group" id="problem">
                                                        </div>
                                                        <div class="form-group" id="technician">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- </div> -->
                            </div>

                            <div class="col-md-6">
                                <div class="panel-wrapper collapse in">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-sm-12 col-xs-12">
                                                <div class="form-wrap">
                                                    <div class="form-horizontal">
                                                        <div class="form-group" id="status">
                                                        </div>
                                                        <div class="form-group" id="spareparts">
                                                        </div>
                                                        <div class="form-group" id="servicecharge">
                                                        </div>
                                                        <div class="form-group" id="sum">
                                                        </div>
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

                </div>

            </div>
            <!-- /Main Content -->

        </div>
        <!-- /#wrapper -->

        <script>
            function check() {
                $('#id').empty();
                $('#date').empty();
                $('#customerID').empty();
                $('#productname').empty();
                $('#name').empty();
                $('#phone').empty();
                $('#device').empty();
                $('#problem').empty();
                $('#technician').empty();
                $('#status').empty();
                $('#spareparts').empty();
                $('#servicecharge').empty();
                $('#sum').empty();
                var testBean = {
                    "a": $('#track').val()
                };
                console.log(testBean)
                $.ajax({
                    type: "POST",
                    url: "/Track",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(testBean),
                    dataType: "json",
                    success: function(msg) {
                        console.log(msg)
                        if (msg.id != null) {
                            $('#').append('');
                            $('#id').append('<label class="col-sm-4 control-label">เลขที่ใบรับซ่อม:</label><label class=" control-label">' + msg.id + '</label>');
                            $('#date').append('<label class="col-sm-4 control-label">วันที่ / เวลารับ:</label><label class=" control-label">' + msg.date + '</label>');
                            $('#customerID').append('<label class="col-sm-4 control-label">รหัสลูกค้า:</label><label class=" control-label">' + msg.customerID + '</label>');
                            $('#name').append('<label class="col-sm-4 control-label">ชื่อลูกค้า:</label><label class=" control-label">' + msg.name + '</label>');
                            $('#phone').append('<label class="col-sm-4 control-label">เบอร์โทรศัพท์:</label><label class=" control-label">' + msg.phone + '</label>');
                            $('#device').append('<label class="col-sm-4 control-label">ชื่ออุปกรณ์:</label><label class=" control-label">' + msg.device + '</label>');
                            $('#problem').append('<label class="col-sm-4 control-label">อาการเสีย:</label><label class=" control-label">' + msg.problem + '</label>');
                            $('#technician').append(' <label class="col-sm-4 control-label">ช่างที่แก้ไข:</label><label class=" control-label">' + msg.technician + '</label>');
                            $('#status').append(' <label class="col-sm-4 control-label">สถานะ:</label><label class=" control-label">' + msg.status + '</label>');
                            $('#spareparts').append('<label class="col-sm-4 control-label">ค่าอะไหล่:</label><label class="control-label">' + msg.spareparts + '</label>');
                            $('#servicecharge').append('<label class="col-sm-4 control-label">ค่าบริการ:</label><label class="control-label">' + msg.servicecharge + '</label>');
                            $('#sum').append('<label class="col-sm-4 control-label">รวม:</label><label class="control-label">' + msg.sum + '</label>');
                        } else if (msg.id == null) {
                            swal("ไม่มีข้อมูล!")
                        }
                    }
                });
            }
        </script>
        <!-- JavaScript -->
        <!-- Sweet-Alert  -->
        <script src="vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
        <!-- jQuery -->
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

        <!-- Slimscroll JavaScript -->
        <script src="dist/js/jquery.slimscroll.js"></script>

        <!-- Init JavaScript -->
        <script src="dist/js/init.js"></script>
    </body>

    </html>