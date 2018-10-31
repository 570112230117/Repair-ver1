<%@page import="java.text.DateFormat"%>
    <%@page import="java.time.LocalDateTime"%>
        <%@page import="java.time.format.DateTimeFormatter"%>
            <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
                <%@ page import="java.text.SimpleDateFormat" %>
                    <%@ page import="java.util.Calendar" %>
                        <%@ page import="java.util.Date" %>
                            <%@ page import="java.util.GregorianCalendar" %>
                                <!DOCTYPE html>
                                <html>


                                <head>
                                    <jsp:include page="../layout/menu.jsp"></jsp:include>
                                    <title>บันทึกงานซ่อม</title>
                                    <!-- select2 CSS -->
                                    <link href="vendors/bower_components/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" />
                                    <!-- Custom CSS -->
                                    <link href="dist/css/style.css" rel="stylesheet" type="text/css">

                                    <% Calendar c = Calendar.getInstance();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String currentDate = df.format(c.getTime());
			%>
                                        <%
         	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
             Calendar cal = Calendar.getInstance();
             cal.add(Calendar.DATE, +7);
             Date todate1 = cal.getTime();    
             String fromdate = dateFormat.format(todate1);
     			
                            %>
                                </head>

                                <body>
                                    <!-- Main Content -->
                                    <div class="page-wrapper" style="min-height: 980px;">
                                        <div class="container-fluid">

                                            <div class="row heading-bg">
                                                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                                                    <h5 class="txt-dark">บันทึกงานซ่อม</h5>
                                                </div>
                                                <!-- Breadcrumb -->
                                                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                                                    <ol class="breadcrumb">
                                                        <li class="active"><span>บันทึกงานซ่อม</span></li>
                                                    </ol>
                                                </div>
                                                <!-- /Breadcrumb -->
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="panel panel-default card-view">
                                                        <div class="panel-heading">
                                                            <div class="pull-left">
                                                                <h6 class="panel-title txt-dark">รายละเอียดของลูกค้า</h6>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="panel-wrapper collapse in">
                                                            <div class="panel-body">
                                                                <div class="form-wrap">
                                                                    <div class="form-group" id="error_name">
                                                                        <label class="control-label mb-10">ชื่อลูกค้า</label>
                                                                        <select class="form-control select2 select2-hidden-accessible" id="listcustomer">
                                                                        <option value="">== เลือกชื่อลูกค้า ==</option>
                                                            </select>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12" id="custumer_id">
                                                                            </div>
                                                                            <div class="span1 "></div>
                                                                            <div class="col-md-6 col-xs-12" id="custumer_name">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12" id="custumer_address">
                                                                            </div>
                                                                            <div class="span1 "></div>
                                                                            <div class="col-md-6 col-xs-12" id="custumer_phone">
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
                                                <div class="col-sm-12">
                                                    <div class="panel panel-default card-view">
                                                        <div class="panel-heading">
                                                            <div class="pull-left">
                                                                <h6 class="panel-title txt-dark">รายละเอียดอุปกรณ์ : <small class="text-danger">*** กรุณากรอกข้อมูลรายละเอียดอุปกรณ์ หากไม่มีขีดเครื่องหมาย (-)</small></h6>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="panel-wrapper collapse in">
                                                            <div class="panel-body">
                                                                <div class="form-wrap ">
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12" id="error_deviceId">
                                                                                <label class="control-label mb-10 text-left">รหัสอุปกรณ์</label>
                                                                                <input type="text " class="form-control " id="deviceId" placeholder="รหัสอุปกรณ์ ">
                                                                            </div>

                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12" id="error_repairtype">
                                                                                <label class="control-label mb-10 text-left">หมวดหมู่อุปกรณ์:</label>
                                                                                <select class="form-control" id="repairtype">
                                                                                <option value="">== เลือกหมวดหมู่อุปกรณ์ ==</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12" id="error_brand">
                                                                                <label class="control-label mb-10 text-left">ยี่ห้ออุปกรณ์</label>
                                                                                <select class="form-control" id="brand">
                                                                                        <option value="">== เลือกยี่ห้ออุปกรณ์ ==</option>
                                                                                        </select>
                                                                            </div>
                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12" id="error_generation">
                                                                                <label class="control-label mb-10 text-left">รุ่นอุปกรณ์</label>
                                                                                <input type="text" class="form-control" id="generation" placeholder="รุ่นอุปกรณ์">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">หมายเลขซีเรียล</label>
                                                                                <input type="text" class="form-control" id="serialnumber" placeholder="หมายเลขซีเรียล">
                                                                            </div>
                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">ระยะเวลารับประกัน</label>
                                                                                <input type="text" class="form-control" id="warranty" placeholder="ระยะเวลารับประกัน">
                                                                            </div>
                                                                        </div>
                                                                        <!-- /Row -->
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">ราคา</label>
                                                                                <input type="number" class="form-control" id="price" placeholder="ราคา">
                                                                            </div>
                                                                            <div class="span1"></div>
                                                                        </div>
                                                                        <!-- /Row -->
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div id="1">
                                                                            <div class="col-md-6 col-xs-12" id="CPU">
                                                                            </div>
                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12" id="Memory">
                                                                            </div>
                                                                        </div>
                                                                        <!-- /Row -->
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div id="2">
                                                                            <div class="col-md-6 col-xs-12" id="HardDisk">
                                                                            </div>
                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12" id="Graphics">
                                                                            </div>
                                                                        </div>
                                                                        <!-- /Row -->
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div id="3">
                                                                            <div class="col-md-6 col-xs-12" id="Display">
                                                                            </div>
                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12" id="OS">
                                                                            </div>
                                                                        </div>
                                                                        <!-- /Row -->
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10 text-left">หมายเหตุ</label>
                                                                        <textarea class="form-control" rows="4" id="note"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="panel panel-default card-view">
                                                        <div class="panel-heading">
                                                            <div class="pull-left">
                                                                <h6 class="panel-title txt-dark">รายละเอียดการซ่อม/ปัญหา</h6>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="panel-wrapper collapse in">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-sm-12 col-xs-12">
                                                                        <div class="form-wrap">
                                                                            <div class="form-group">
                                                                                <div class="row">
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                        <label class="control-label mb-10">วันที่ / เวลารับ:</label>
                                                                                        <input type="text" class="form-control" id="repairDate" disabled value="<%out.println(currentDate); %>">
                                                                                    </div>

                                                                                    <div class="span1"></div>
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                        <label class="control-label mb-10 ">ประมานการซ่อมเสร็จ:</label>
                                                                                        <input type="text" class="form-control" id="completeDate" value="<%out.println(fromdate);%>" disabled="disabled">
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="row">
                                                                                    <div class="col-md-6 col-xs-12" id="error_problem">
                                                                                        <label class="control-label mb-10 text-left">อาการเสีย:</label>
                                                                                        <select class="form-control" id="problem">
                                                                                            <option value="">== เลือกอาการเสีย ==</option>
                                                                                            </select>
                                                                                    </div>

                                                                                    <div class="span1"></div>
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                        <label class="control-label mb-10">พนักงานรับเรื่อง:</label>
                                                                                        <input type="text" class="form-control" id="member" disabled>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="check">
                                                                                    <input id="ch" type="checkbox" style="width: 20px; height: 20px;">
                                                                                    <label class="control-label mb-10">
                                                                                 อาการอื่นๆ:
                                                                        </label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">

                                                                                <!-- <label class="control-label mb-10 text-left">อื่นๆ:</label> -->
                                                                                <textarea class="form-control" rows="4" id="other"></textarea>
                                                                            </div>

                                                                            <div class="form-group" id="error_repairstatus">
                                                                                <label class="control-label mb-10 text-left">สถานะ:</label>
                                                                                <select class="form-control" id="repairstatus">
                                                                            <option value="">== เลือกสถานะ ==</option>
                                                                            </select>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label mb-10">ค่าอะไหล่:</label>
                                                                                <input type="number" class="form-control" id="input1" placeholder="0" onkeyup='nStr()'>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label mb-10">ค่าบริการ:</label>
                                                                                <input type="number" class="form-control" id="input2" placeholder="0" onkeyup='nStr()'>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label mb-10">รวม:</label>
                                                                                <input type="number" class="form-control" id="show" placeholder="0">
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="text-center">
                                                <button type="submit" class="btn btn-success mr-10" onclick="insertConfirm()">บันทึก</button>
                                                <button type="submit" class="btn btn-default">ยกเลิก</button>
                                            </div>


                                            <!-- Footer -->
                                            <footer class="footer container-fluid pl-30 pr-30">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <p>2017 &copy; Elmer. Pampered by Hencework</p>
                                                    </div>
                                                </div>
                                            </footer>
                                            <!-- /Footer -->
                                        </div>
                                    </div>

                                    <!-- JavaScript -->
                                    <script>
                                        $.ajax({
                                            type: "GET",
                                            url: "/repairtype",
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function(msg) {
                                                for (var i = 0; i < msg.length; i++) {
                                                    $('#repairtype').append('<option value="' + msg[i].initials + '">' + msg[i].name + '</option>');
                                                }
                                            }
                                        });
                                        $('#repairtype').change(function() {
                                            $('#brand').empty();
                                            var testBean = {
                                                "a": $('#repairtype').val()
                                            };
                                            $.ajax({
                                                type: "POST",
                                                url: "/brand",
                                                data: JSON.stringify(testBean),
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function(msg) {
                                                    $('#brand').append('<option value="">== เลือกยี่ห้ออุปกรณ์ ==</option>');
                                                    for (var i = 0; i < msg.length; i++) {
                                                        $('#brand').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                                                    }
                                                }
                                            });
                                        });

                                        $('#repairtype').change(function() {
                                            $('#CPU').empty();
                                            $('#Memory').empty();
                                            $('#HardDisk').empty();
                                            $('#Graphics').empty();
                                            $('#Display').empty();
                                            $('#OS').empty();

                                            if ('NB' == $('#repairtype').val()) {
                                                $('#1').addClass("row");
                                                $('#2').addClass("row");
                                                $('#3').addClass("row");
                                                $('#CPU').append('<label class="control-label mb-10 text-left ">CPU</label><input type="text" class="form-control" placeholder="CPU" id="cpu">');
                                                $('#Memory').append('<label class="control-label mb-10 text-left">Memory</label><input type="text" class="form-control" placeholder="Memory" id="memory">');
                                                $('#HardDisk').append('<label class="control-label mb-10 text-left">HardDisk</label><input type="text" class="form-control"  placeholder="HardDisk" id="harddisk">');
                                                $('#Graphics').append('<label class="control-label mb-10 text-left">Graphics</label><input type="text " class="form-control" placeholder="Graphics" id="graphics">');
                                                $('#Display').append('<label class="control-label mb-10 text-left">Display</label><input type="text " class="form-control" placeholder="Display" id="display">');
                                                $('#OS').append('<label class="control-label mb-10 text-left">OS</label><input type="text" class="form-control" placeholder="OS" id="os">');

                                            } else if ('CS' == $('#repairtype').val()) {
                                                $('#1').addClass("row");
                                                $('#2').addClass("row");
                                                $('#3').addClass("row");
                                                $('#CPU').append('<label class="control-label mb-10 text-left ">CPU</label><input type="text" class="form-control" placeholder="CPU" id="cpu">');
                                                $('#Memory').append('<label class="control-label mb-10 text-left">Memory</label><input type="text" class="form-control" placeholder="Memory" id="memory">');
                                                $('#HardDisk').append('<label class="control-label mb-10 text-left">HardDisk</label><input type="text" class="form-control"  placeholder="HardDisk" id="harddisk">');
                                                $('#Graphics').append('<label class="control-label mb-10 text-left">Graphics</label><input type="text " class="form-control" placeholder="Graphics" id="graphics">');
                                                $('#Display').append('<label class="control-label mb-10 text-left">Display</label><input type="text " class="form-control" placeholder="Display" id="display">');
                                                $('#OS').append('<label class="control-label mb-10 text-left">OS</label><input type="text" class="form-control" placeholder="OS" id="os">');

                                            } else {
                                                $('#1').removeClass("row");
                                                $('#2').removeClass("row");
                                                $('#3').removeClass("row");
                                            }
                                        });

                                        var ch = "off";
                                        problemList = "";
                                        $("#other").prop('disabled', true);
                                        $("#ch").change(function() {
                                            if (ch == "off") {
                                                ch = "on"
                                                $("#problem").prop('disabled', true);
                                                $("#other").prop('disabled', false);
                                            } else {
                                                ch = "off"
                                                $("#other").prop('disabled', true);
                                                $("#problem").prop('disabled', false);
                                            }
                                            console.log(ch);
                                        });
                                        $("#problem").change(function() {
                                            problemList = $("#problem").val();
                                            console.log(problemList);
                                        });
                                        $("#other").change(function() {
                                            problemList = $("#other").val();
                                            console.log(problemList);
                                        });

                                        function nStr() {
                                            var int1 = document.getElementById('input1').value;
                                            var int2 = document.getElementById('input2').value;
                                            var n1 = parseInt(int1);
                                            var n2 = parseInt(int2);
                                            var sumx;
                                            if (sumx = n1 + n2) {
                                                $('#show').val(sumx);
                                            } else if (sumx = n1) {
                                                $('#show').val(sumx);
                                            } else if (sumx = n2) {
                                                $('#show').val(sumx);
                                            } else if (sumx = 'NaN') {
                                                $('#show').val('');
                                            }
                                            console.log(sumx)
                                        }

                                        function test() {
                                            var pass = true;
                                            if ('' == $('#listcustomer').val()) {
                                                $('#error_name').addClass("has-error has-danger")
                                                var pass = false;
                                                console.log("if")
                                            } else {
                                                $('#error_name').removeClass("has-error has-danger")
                                                console.log("else")
                                            }
                                            if ('' == $('#deviceId').val()) {
                                                $('#error_deviceId').addClass("has-error has-danger")
                                                var pass = false;
                                            } else {
                                                $('#error_deviceId').removeClass("has-error has-danger")
                                            }
                                            if ('' == $('#repairtype').val()) {
                                                $('#error_repairtype').addClass("has-error has-danger")
                                                var pass = false;
                                            } else {
                                                $('#error_repairtype').removeClass("has-error has-danger")
                                            }
                                            if ('' == $('#brand').val()) {
                                                $('#error_brand').addClass("has-error has-danger")
                                                var pass = false;
                                            } else {
                                                $('#error_brand').removeClass("has-error has-danger")
                                            }
                                            if ('' == $('#generation').val()) {
                                                $('#error_generation').addClass("has-error has-danger")
                                                var pass = false;
                                            } else {
                                                $('#error_generation').removeClass("has-error has-danger")
                                            }
                                            if ('' == $('#repairstatus').val()) {
                                                $('#error_repairstatus').addClass("has-error has-danger")
                                                var pass = false;
                                            } else {
                                                $('#error_repairstatus').removeClass("has-error has-danger")
                                            }
                                            return pass;

                                        }

                                        function insertConfirm() {
                                            var pass = true;
                                            pass = test();

                                            var repairBean = {
                                                id: $('#repairtype').val(),
                                                customerId: $('#listcustomer').val(),
                                                deviceId: $('#deviceId').val(),
                                                repairDate: $('#repairDate').val(),
                                                completeDate: $('#completeDate').val(),
                                                problem: problemList,
                                                memberId: $('#member').val(),
                                                repairStatus: $('#repairstatus').val(),
                                                spareparts: $('#input1').val(),
                                                serviceCharge: $('#input2').val(),
                                                sum: $('#show').val(),
                                            }

                                            if (pass) {
                                                $.ajax({
                                                    type: "POST",
                                                    url: "/insertrepair",
                                                    contentType: "application/json; charset=utf-8",
                                                    data: JSON.stringify(repairBean),
                                                    dataType: "json",
                                                    success: function(msg) {
                                                        console.log(msg)
                                                        window.location.href = msg.page;
                                                    },
                                                    error: function() {
                                                        window.location.href = "/tabel";

                                                    }
                                                });
                                            }
                                            //
                                            var deviceBean = {
                                                    deviceId: $('#deviceId').val(),
                                                    deviceCategory: $('#repairtype').val(),
                                                    brand: $('#brand').val(),
                                                    generation: $('#generation').val(),
                                                    serialnumber: $('#serialnumber').val(),
                                                    warranty: $('#warranty').val(),
                                                    price: $('#price').val(),
                                                    cpu: $('#cpu').val(),
                                                    memory: $('#memory').val(),
                                                    harddisk: $('#harddisk').val(),
                                                    graphics: $('#graphics').val(),
                                                    display: $('#display').val(),
                                                    os: $('#os').val(),
                                                    note: $('#note').val(),
                                                    custromerId: $('#listcustomer').val(),
                                                    deviceDate: $('#repairDate').val(),
                                                }
                                                // console.log(deviceBean)
                                                //
                                            if (pass) {
                                                $.ajax({
                                                    type: "POST",
                                                    url: "/insertdevice",
                                                    contentType: "application/json; charset=utf-8",
                                                    data: JSON.stringify(deviceBean),
                                                    dataType: "json",
                                                    success: function(msg) {
                                                        console.log(msg)
                                                        window.location.href = msg.page;
                                                    },
                                                    error: function() {
                                                        window.location.href = "/tabel";
                                                    }
                                                });
                                            }
                                        }
                                        $(document).ready(function() {
                                            $.ajax({
                                                type: "GET",
                                                url: "/profileid",
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function(msg) {
                                                    console.log('ทำงานแล้ว')
                                                    $('#id').val(msg.id);
                                                    $('#member').val(msg.name);

                                                }
                                            });
                                            $.ajax({
                                                type: "GET",
                                                url: "/listcustomer",
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function(msg) {
                                                    for (var i = 0; i < msg.length; i++) {
                                                        $('#listcustomer').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                                    }

                                                }
                                            });
                                            $('#listcustomer').change(function() {
                                                $('#custumer_id').empty();
                                                $('#custumer_name').empty();
                                                $('#custumer_address').empty();
                                                $('#custumer_phone').empty();
                                                var testBean = {
                                                    "a": $('#listcustomer').val()
                                                };

                                                $.ajax({
                                                    type: "POST",
                                                    url: "/modal",
                                                    data: JSON.stringify(testBean),
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function(msg) {
                                                        if ('' == $('#listcustomer').val()) {
                                                            $('#custumer_id').removeProp();
                                                            $('#custumer_name').removeProp();
                                                            $('#custumer_address').removeProp();
                                                            $('#custumer_phone').removeProp();
                                                        } else {
                                                            $('#custumer_id').append('<label class="control-label mb-10">รหัสลูกค้า</label><input type="text" class="form-control" value="' + msg.id + '" disabled>');
                                                            $('#custumer_name').append('<label class="control-label mb-10">ชื่อลูกค้า</label><input type="text" class="form-control" value="' + msg.name + '" disabled>');
                                                            $('#custumer_address').append('<label class="control-label mb-10">ที่อยู่</label><input type="text" class="form-control" value="' + msg.address + '" disabled>');
                                                            $('#custumer_phone').append('<label class="control-label mb-10">เบอร์โทรศัพท์</label><input type="text" class="form-control" data-mask="(999) 999-9999" value="' + msg.phone + '" disabled>');
                                                        }
                                                    }
                                                });
                                            });
                                            $('#repairtype').change(function() {
                                                $('#problem').empty();
                                                var testBean = {
                                                    "a": $('#repairtype').val()
                                                };
                                                $.ajax({
                                                    type: "POST",
                                                    url: "/problem",
                                                    data: JSON.stringify(testBean),
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function(msg) {
                                                        $('#problem').append('<option value="">== เลือกอาการเสีย ==</option>');
                                                        for (var i = 0; i < msg.length; i++) {
                                                            $('#problem').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                                                        }
                                                    }
                                                });
                                            });

                                            $.ajax({
                                                type: "GET",
                                                url: "/repairstatus",
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function(msg) {
                                                    for (var i = 0; i < msg.length; i++) {
                                                        $('#repairstatus').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                                                    }
                                                }
                                            });
                                        });
                                    </script>


                                    <!-- Bootstrap Core JavaScript -->
                                    <script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

                                    <!-- Select2 JavaScript -->
                                    <script src="vendors/bower_components/select2/dist/js/select2.full.min.js"></script>

                                    <!-- Bootstrap Select JavaScript -->
                                    <script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>


                                    <!-- Bootstrap Touchspin JavaScript -->
                                    <script src="vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>

                                    <!-- Multiselect JavaScript -->
                                    <script src="vendors/bower_components/multiselect/js/jquery.multi-select.js"></script>


                                    <!-- Bootstrap Switch JavaScript -->
                                    <script src="vendors/bower_components/bootstrap-switch/dist/js/bootstrap-switch.min.js"></script>


                                    <!-- Form Advance Init JavaScript -->
                                    <script src="dist/js/form-advance-data.js"></script>
                                </body>

                                </html>