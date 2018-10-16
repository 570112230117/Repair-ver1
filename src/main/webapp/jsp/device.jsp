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
                        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css" rel="stylesheet" />
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
                        <% Calendar c = Calendar.getInstance();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	String currentDate = df.format(c.getTime());
	 %>
                    </head>

                    <body>
                        <!-- Main Content -->
                        <div class="page-wrapper">
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
                                                    <h6 class="panel-title txt-dark">ข้อมูลอุปกรณ์ : <small class="text-danger">*** กรุณากรอกข้อมูลรายละเอียดอุปกรณ์ หากไม่มีขีดเครื่องหมาย (-)</small></h6>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-sm-12 col-xs-12">
                                                            <div class="form-wrap">
                                                                <form action="">
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">วันที่เริ่มใช้งาน</label>
                                                                                <input type="text" class="form-control" id="deviceDate" placeholder="วันที่เริ่มใช้งาน" value="<%out.println(currentDate);%>">
                                                                            </div>
                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">ผู้ใช้งานอุปกรณ์</label>
                                                                                <!-- <input type="text" class="form-control" id="customer" placeholder="ผู้ใช้งานอุปกรณ์"> -->
                                                                                <select class="form-control" id="customer">
                                                                                        <option>== เลือกผู้แจ้ง ==</option>
                                                                                        </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">รหัสอุปกรณ์</label>
                                                                                <input type="text" class="form-control" id="deviceNumber" placeholder="รหัสอุปกรณ์">
                                                                            </div>
                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">ชื่ออุปกรณ์</label>
                                                                                <input type="text" class="form-control" id="deviceName" placeholder="ชื่ออุปกรณ์">
                                                                            </div>


                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">หมายเลขซีเรียล</label>
                                                                                <input type="text" class="form-control" id="serialNumber" placeholder="หมายเลขซีเรียล">
                                                                            </div>


                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">ประเภทอุปกรณ์</label>
                                                                                <select class="form-control" id="repairtype">
                                                                                                <option>== กรุณาเลือก ==</option>
                                                                                                </select>
                                                                            </div>


                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">ยี่ห้ออุปกรณ์</label>
                                                                                <select class="form-control" id="brand">
                                                                                        <option>== กรุณาเลือก ==</option>
                                                                                        </select>
                                                                            </div>


                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">รุ่นอุปกรณ์</label>
                                                                                <input type="text" class="form-control" id="generation" placeholder="รุ่นอุปกรณ์">
                                                                            </div>


                                                                        </div>
                                                                        <!-- /Row -->
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">CPU</label>
                                                                                <input type="text" class="form-control" id="cpu" placeholder="CPU">
                                                                            </div>


                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">Hard Disk</label>
                                                                                <input type="text" class="form-control" id="harddisk" placeholder="Hard Disk">
                                                                            </div>


                                                                        </div>
                                                                        <!-- /Row -->
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">Monitor</label>
                                                                                <input type="text" class="form-control" id="monitor" placeholder="Monitor">
                                                                            </div>
                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">ตัวแทนจำหน่าย/ผู้ขาย</label>
                                                                                <input type="text" class="form-control" id="distributor" placeholder="ตัวแทนจำหน่าย/ผู้ขาย">
                                                                            </div>
                                                                        </div>
                                                                        <!-- /Row -->
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">IP</label>
                                                                                <input type="text" class="form-control" id="ip" placeholder="IP">
                                                                            </div>
                                                                            <div class="span1"></div>
                                                                            <div class="col-md-6 col-xs-12">
                                                                                <label class="control-label mb-10 text-left">การรับประกัน</label>
                                                                                <input type="text" class="form-control" id="warranty" placeholder="การรับประกัน">
                                                                            </div>
                                                                        </div>
                                                                        <!-- /Row -->
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10 text-left">หมายเหตุ</label>
                                                                        <textarea class="form-control" rows="5" id="note"></textarea>
                                                                    </div>
                                                                </form>
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
                                    customer: $('#customer').val(),
                                    deviceNumber: $('#deviceNumber').val(),
                                    deviceDate: $('#deviceDate').val(),
                                    deviceName: $('#deviceName').val(),
                                    serialNumber: $('#serialNumber').val(),
                                    deviceType: $('#repairtype').val(),
                                    brand: $('#brand').val(),
                                    generation: $('#generation').val(),
                                    cpu: $('#cpu').val(),
                                    harddisk: $('#harddisk').val(),
                                    monitor: $('#monitor').val(),
                                    distributor: $('#distributor').val(),
                                    ip: $('#ip').val(),
                                    warranty: $('#warranty').val(),
                                    note: $('#note').val(),
                                }

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
                                            $('#repairtype').append('<option value="' + msg[i].id + '">' + msg[i].device + '</option>');
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
                                            $('#brand').append('<option value="">== กรุณาเลือก ==</option>');
                                            for (var i = 0; i < msg.length; i++) {
                                                $('#brand').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
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
                                            $("#customer").select2({});
                                        }
                                    }
                                });
                            });
                        </script>
                    </body>

                    </html>