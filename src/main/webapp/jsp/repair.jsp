<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ page import="java.text.SimpleDateFormat" %>
        <%@ page import="java.util.Calendar" %>
            <%@ page import="java.util.Date" %>
                <%@ page import="java.util.GregorianCalendar" %>
                    <!DOCTYPE html>
                    <html lang="en">

                    <head>
                        <jsp:include page="../layout/menu.jsp"></jsp:include>
                        <title>บันทึกงานซ่อม</title>

                        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css" rel="stylesheet" />
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
                        <% Calendar c = Calendar.getInstance();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String currentDate = df.format(c.getTime());
			%>
                            <%	
	        Calendar cal = Calendar.getInstance();
	        SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-");
	        SimpleDateFormat b = new SimpleDateFormat("dd");	
	        String aaa = a.format(cal.getTime());	
	        String bbb = b.format(cal.getTime());	
	        int i = 7;   
	        int s = Integer.valueOf(bbb);
	        int bb = s + i;
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
                                    <div class="col-md-6">
                                        <div class="panel panel-default card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">ข้อมูลผู้แจ้ง</h6>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-sm-12 col-xs-12">
                                                            <div class="form-wrap">
                                                                <div class="form-group ">
                                                                    <label class="control-label mb-10 ">วันที่แจ้ง:</label>
                                                                    <input type="text " class="form-control " id="date" disabled value="<%out.println(currentDate); %>">
                                                                </div>
                                                                <label class="control-label mb-10">ชื่อผู้แจ้ง:</label>
                                                                <div class="input-group mb-15">
                                                                    <select id="name">
                                                                        <option>== เลือกผู้แจ้ง ==</option>
                                                                        </select>
                                                                    <span class="input-group-btn mb-15"><button class="btn btn-primary btn-icon-anim btn-square" data-toggle="modal" data-target="#Modal"><i class="icon-user"></i></button></span>
                                                                </div>
                                                                <span class="hide" style="color:red" id="error_name">โปรดเลือกผู้แจ้ง</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">พนักงานรับเรื่อง</h6>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-sm-12 col-xs-12">
                                                            <div class="form-wrap">
                                                                <form>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10">ประมานการซ่อมเสร็จ:</label>
                                                                        <input type="text" class="form-control" id="repairComplete" value="<%out.println(aaa + bb);%>" disabled="disabled">
                                                                    </div>
                                                                    <div class="form-group ">
                                                                        <label class="control-label mb-10">ชื่อพนักงาน:</label> <input type="text" class="form-control" id="member" disabled>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="panel panel-default card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">ข้อมูลปัญหา</h6>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-sm-12 col-xs-12">
                                                            <div class="form-wrap">
                                                                <form>
                                                                    <div class="form-group" id="error_repairtype">
                                                                        <label class="control-label mb-10 text-left">ประเภทงานซ่อม:</label>
                                                                        <select class="form-control" id="repairtype">
                                                                                                <option>== กรุณาเลือก ==</option>
                                                                                                </select>
                                                                    </div>
                                                                    <div class="form-group ">
                                                                        <label class="control-label mb-10 text-left">ชื่ออุปกรณ์:</label>
                                                                        <select class="form-control" id="deviceName">
                                                                                                    <option>== กรุณาเลือก ==</option>
                                                                                                    <option>ไม่มี</option>
                                                                                                    <option>N/B SAMSUNG รุ่นNP350U4X-908TH</option>
                                                                                                    <option>ปริ้นเตอร์ CANON รุ่นIP2770/HRDB54331M</option>
                                                                                                    <option>ปริ้นเตอร์ EPSON รุ่นLQ-630/EKCH014356</option>
                                                                                                    <option>ปริ้นเตอร์ BROTHER รุ่นMFC-L6900DW/E75675D7N430420</option>
                                                                                                    <option>โน๊ตบุ๊ค ACER รุ่น4740G-382G</option>
                                                                                                     </select>
                                                                    </div>
                                                                    <div class="form-group " id="error_problem">
                                                                        <label class="control-label mb-10 text-left">ปัญหา:</label>
                                                                        <select class="form-control" id="problem">
                                                                        <option>== กรุณาเลือก ==</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10 text-left">อื่นๆ:</label>
                                                                        <textarea class="form-control" rows="4" id="other"></textarea>
                                                                    </div>
                                                                    <div class="form-group" id="error_repairstatus">
                                                                        <label class="control-label mb-10 text-left">สถานะ:</label>
                                                                        <select class="form-control" id="repairstatus">
                                                                                                            <option>== กรุณาเลือก ==</option>
                                                                                                            </select>
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
                                    <button type="submit" class="btn btn-success mr-10" onclick="insertConfirm()">บันทึก</button>
                                    <button type="submit" class="btn btn-default">ยกเลิก</button>
                                </div>

                                <!-- Modal -->
                                <div id="Modal" class="modal fade" role="dialog">
                                    <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">เพิ่มผู้แจ้ง</h4>
                                            </div>
                                            <div class="modal-body">
                                                <form>
                                                    <div class="form-group">
                                                        <input type="hidden" class="form-control" id="id">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label mb-10">ชื่อผู้แจ้ง:</label>
                                                        <input type="text" class="form-control" id="nameinsert" placeholder="ชื่อผู้แจ้ง">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label mb-10">ที่อยู่:</label>
                                                        <textarea class="form-control" rows="5" id="address"></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label mb-10">เบอร์โทร:</label>
                                                        <input type="text" placeholder="" data-mask="(999) 999-9999" class="form-control" id="phone">
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-primary" onclick="insertcutromer()">บันทึก</button>
                                                <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
                                            </div>
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
                                <!-- /Footer -->
                            </div>
                        </div>
                        <!-- JavaScript -->
                        <!-- Bootstrap Core JavaScript -->
                        <script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
                        <!-- JavaScripts -->
                        <script>
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
                            });
                        </script>
                        <script>
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
                                            $('#problem').append('<option value="">== กรุณาเลือก ==</option>');
                                            for (var i = 0; i < msg.length; i++) {
                                                $('#problem').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
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
                                            $('#name').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                            $("#name").select2({});
                                        }
                                    }
                                });

                                $.ajax({
                                    type: "GET",
                                    url: "/repairstatus",
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function(msg) {
                                        for (var i = 0; i < msg.length; i++) {
                                            $('#repairstatus').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                        }
                                    }
                                });
                            });
                        </script>

                        <script>
                            function test() {
                                var pass = true;
                                if ('== เลือกผู้แจ้ง ==' == $('#name').val()) {
                                    $('#error_name').removeClass("hide")
                                    var pass = false;
                                } else {
                                    $('#error_name').addClass("hide")
                                }
                                if ('== กรุณาเลือก ==' == $('#repairtype').val()) {
                                    $('#error_repairtype').addClass("has-error has-danger")
                                    var pass = false;
                                } else {
                                    $('#error_repairtype').removeClass("has-error has-danger")
                                }
                                if ('== กรุณาเลือก ==' == $('#problem').val()) {
                                    $('#error_problem').addClass("has-error has-danger")
                                    var pass = false;
                                } else {
                                    $('#error_problem').removeClass("has-error has-danger")
                                }
                                if ('== กรุณาเลือก ==' == $('#repairstatus').val()) {
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
                                    repairDate: $('#date').val(),
                                    customerName: $('#name').val(),
                                    repairComplete: $('#repairComplete').val(),
                                    memberName: $('#member').val(),
                                    rapairType: $('#repairtype').val(),
                                    deviceName: $('#deviceName').val(),
                                    problem: $('#problem').val(),
                                    other: $('#other').val(),
                                    repairStatus: $('#repairstatus').val(),
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
                            }

                            function insertcutromer() {
                                var customerBean = {
                                    id: $('#idd').val(),
                                    name: $('#nameinsert').val(),
                                    address: $('#address').val(),
                                    phone: $('#phone').val(),

                                }
                                $.ajax({
                                    type: "POST",
                                    url: "/insertcutromer",
                                    contentType: "application/json; charset=utf-8",
                                    data: JSON.stringify(customerBean),
                                    dataType: "json",
                                    success: function(msg) {
                                        console.log("success")
                                        window.location.reload();
                                    },
                                    error: function() {
                                        console.log("error")
                                        $('#Modal').modal('hide')
                                        window.location.reload();
                                    }
                                });
                            }
                        </script>



                    </body>

                    </html>