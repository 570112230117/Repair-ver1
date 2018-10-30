<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.text.SimpleDateFormat" %>
        <%@ page import="java.util.Calendar" %>
            <%@ page import="java.util.Date" %>
                <%@ page import="java.util.GregorianCalendar" %>
                    <!DOCTYPE html >
                    <html>

                    <head>
                        <jsp:include page="../layout/menu.jsp"></jsp:include>
                        <title>Device</title>
                        <link href="vendors/bower_components/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" />
                        <link href="dist/css/style.css" rel="stylesheet" type="text/css">
                        <% Calendar c = Calendar.getInstance();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String currentDate = df.format(c.getTime());
	 %>
                    </head>

                    <body>
                        <!-- Main Content -->
                        <div class="page-wrapper" style="min-height: 980px;">
                            <div class="container-fluid pt-25">
                                <div class="row heading-bg">
                                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                                        <h5 class="txt-dark">ทะเบียนอุปกรณ์</h5>
                                    </div>
                                    <!-- Breadcrumb -->
                                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                                        <ol class="breadcrumb">
                                            <li><a href="/tabeldevice">ตารางทะเบียนอุปกรณ์</a></li>
                                            <li class="active"><span>ทะเบียนอุปกรณ์</span></li>
                                        </ol>
                                    </div>
                                    <!-- /Breadcrumb -->
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel panel-default card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">รายละเอียดอุปกรณ์ : <small class="text-danger">*** กรุณากรอกข้อมูลรายละเอียดอุปกรณ์ หากไม่มีขีดเครื่องหมาย (-)</small></h6>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-sm-12 col-xs-12">
                                                            <div class="form-wrap ">
                                                                <div class="form-group">
                                                                    <div class="row">
                                                                        <div class="col-md-6 col-xs-12">
                                                                            <label class="control-label mb-10 text-left">วันที่เริ่มใช้งาน</label>
                                                                            <input type="text" class="form-control" id="deviceDate" placeholder="วันที่เริ่มใช้งาน" value="<%out.println(currentDate);%>" disabled>
                                                                        </div>
                                                                        <div class="span1"></div>
                                                                        <div class="col-md-6 col-xs-12">
                                                                            <label class="control-label mb-10 text-left">ผู้ใช้งานอุปกรณ์</label>
                                                                            <select class="form-control select2 select2-hidden-accessible " id="customer">
                                                                                            <option value="">== เลือกผู้แจ้ง ==</option>
                                                                                         </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="row">
                                                                        <div class="col-md-6 col-xs-12">
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
                                                                        <div class="col-md-6 col-xs-12">
                                                                            <label class="control-label mb-10 text-left">ยี่ห้ออุปกรณ์</label>
                                                                            <select class="form-control" id="brand">
                                                                                            <option value="">== เลือกยี่ห้ออุปกรณ์ ==</option>
                                                                                            </select>
                                                                        </div>
                                                                        <div class="span1"></div>
                                                                        <div class="col-md-6 col-xs-12">
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
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-success mr-10" onclick="insertdevice()">ยืนยัน</button>
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
                            <!-- /Main Content -->
                        </div>
                        <!-- /#wrapper -->
                        <script>
                            function insertdevice() {
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
                                    custromerId: $('#customer').val(),
                                    deviceDate: $('#deviceDate').val(),
                                }
                                console.log(deviceBean)
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
                                        window.location.href = "/tabeldevice";
                                    }
                                });
                            }

                            $(document).ready(function() {
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
                                $.ajax({
                                    type: "GET",
                                    url: "/listcustomer",
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function(msg) {
                                        for (var i = 0; i < msg.length; i++) {
                                            $('#customer').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');

                                        }
                                    }
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
                            });
                        </script>

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