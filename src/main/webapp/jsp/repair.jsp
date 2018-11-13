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
                                                                        <div class="input-group mb-15">
                                                                            <select class="form-control select2 select2-hidden-accessible" id="listcustomer">
                                                                            <option value="">== เลือกชื่อลูกค้า ==</option>
                                                                            </select>
                                                                            <span class="input-group-btn">
                                                                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal">+</button>
                                                                            </span>
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
                                                                <h6 class="panel-title txt-dark">ข้อมูลอุปกรณ์ / อาการเสีย</h6>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="panel-wrapper collapse in">
                                                            <div class="panel-body">
                                                                <div class="form-wrap ">
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10 text-left">ประเภทการแจ้ง</label>
                                                                        <select class="select2 select2-multiple select2-hidden-accessible" id="JobType">
                                                                            <option value="">== เลือกประเภทการแจ้ง  ==</option>
                                                                        </select>

                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10">ชื่ออุปกรณ์</label>
                                                                        <div class="input-group mb-15">
                                                                            <select class="form-control select2 select2-hidden-accessible" id="devicename">
                                                                                <option value=""></option>
                                                                             </select>
                                                                            <span class="input-group-btn">
                                                                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modaldevice">+</button>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                    <input type="hidden" class="form-control" id="category">

                                                                    <div class="form-group" id="error_problem">
                                                                        <label class="control-label mb-10 text-left">อาการเสีย:</label>
                                                                        <textarea class="form-control" rows="4" id="problem"></textarea>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10 text-left">อุปกรณ์ที่นำมาด้วย</label>
                                                                        <textarea class="form-control" rows="3" id="accessories"></textarea>
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
                                                                <h6 class="panel-title txt-dark">ช่างซ่อม</h6>
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
                                                                                        <label class="control-label mb-10">วันที่รับเครื่อง:</label>
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
                                                                                    <div class="col-md-6 col-xs-12" id="error_repairstatus">
                                                                                        <label class="control-label mb-10 text-left">สถานะ:</label>
                                                                                        <select class="form-control" id="repairstatus">
                                                                                        <option value="">== เลือกสถานะ ==</option>
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
                                                                                <div class="row">
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                        <label class="control-label mb-10">บันทึก:</label>
                                                                                        <input type="text" class="form-control" id="technicialNote">
                                                                                    </div>
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                        <label class="control-label mb-10">ราคาประเมิน:</label>
                                                                                        <input type="number" class="form-control" id="repairLimit">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="row">
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                    </div>
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                        <div class="input-group"> <span class="input-group-addon">ค่าอะไหล่</span>
                                                                                            <input type="number" class="form-control" id="input1" onkeyup='nStr()'>
                                                                                            <span class="input-group-addon">บาท</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="row">
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                    </div>
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                        <div class="input-group"> <span class="input-group-addon">ค่าบริการ</span>
                                                                                            <input type="number" class="form-control" id="input2" onkeyup='nStr()'>
                                                                                            <span class="input-group-addon">บาท</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="row">
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                    </div>
                                                                                    <div class="col-md-6 col-xs-12">
                                                                                        <div class="input-group"> <span class="input-group-addon">รวม</span>
                                                                                            <input type="number" class="form-control" id="show">
                                                                                            <span class="input-group-addon">บาท</span>
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
                                                            <h4 class="modal-title">เพิ่มลูกค้า</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <input type="hidden" class="form-control" id="id">
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label mb-10">ชื่อลูกค้า:</label>
                                                                <input type="text" class="form-control" id="name" placeholder="ชื่อผู้แจ้ง">
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label mb-10">ที่อยู่:</label>
                                                                <textarea class="form-control" rows="5" id="address"></textarea>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label mb-10">เบอร์โทร:</label>
                                                                <input type="text" placeholder="" data-mask="(999) 999-9999" class="form-control" id="phone">
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-primary" onclick="insertcustomer()">บันทึก</button>
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Modal -->
                                            <div id="modaldevice" class="modal fade" role="dialog">
                                                <div class="modal-dialog" style="width: 70%">
                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            <h4 class="modal-title">เพิ่มอุปกรณ์ :<small class="text-danger">*** กรุณากรอกข้อมูลรายละเอียดอุปกรณ์ หากไม่มีขีดเครื่องหมาย (-)</small></h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-6 col-xs-12" id="error_repairtype">
                                                                        <label class="control-label mb-10 text-left">หมวดหมู่อุปกรณ์:</label>
                                                                        <select class="form-control" id="Devicecategory">
                                                                                    <option value="">== เลือกหมวดหมู่อุปกรณ์ ==</option>
                                                                                    </select>
                                                                    </div>
                                                                    <div class="span1"></div>
                                                                    <div class="col-md-6 col-xs-12" id="error_brand">
                                                                        <label class="control-label mb-10 text-left">ยี่ห้ออุปกรณ์</label>
                                                                        <select class="form-control" id="brand">
                                                                        <option value="">== เลือกยี่ห้ออุปกรณ์ ==</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-6 col-xs-12" id="error_generation">
                                                                        <label class="control-label mb-10 text-left">รุ่นอุปกรณ์</label>
                                                                        <input type="text" class="form-control" id="generation" placeholder="รุ่นอุปกรณ์">
                                                                    </div>
                                                                    <div class="span1"></div>
                                                                    <div class="col-md-6 col-xs-12">
                                                                        <label class="control-label mb-10 text-left">หมายเลขเครื่อง</label>
                                                                        <input type="text" class="form-control" id="serialnumber" placeholder="หมายเลขเครื่อง">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-6 col-xs-12">
                                                                        <label class="control-label mb-10 text-left">ระยะเวลารับประกัน</label>
                                                                        <input type="text" class="form-control" id="warranty" placeholder="ระยะเวลารับประกัน">
                                                                    </div>
                                                                    <div class="span1"></div>
                                                                    <div class="col-md-6 col-xs-12">
                                                                        <label class="control-label mb-10 text-left">ราคา</label>
                                                                        <input type="number" class="form-control" id="price" placeholder="ราคา">
                                                                    </div>
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
                                                                <label class="control-label mb-10 text-left">รายละเอียดเพิ่มเติม</label>
                                                                <textarea class="form-control" rows="4" id="note"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-primary" onclick="insertdevice()">บันทึก</button>
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
                                    <script>
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
                                            // var pass = true;
                                            // pass = test();

                                            var repairBean = {
                                                id: $('#category').val(),
                                                customerId: $('#listcustomer').val(),
                                                deviceId: $('#devicename').val(),
                                                repairDate: $('#repairDate').val(),
                                                completeDate: $('#completeDate').val(),
                                                problem: $('#problem').val(),
                                                memberId: $('#member').val(),
                                                repairStatus: $('#repairstatus').val(),
                                                jobType: $('#JobType').val(),
                                                accessories: $('#accessories').val(),
                                                repairLimit: $('#repairLimit').val(),
                                                technicialNote: $('#technicialNote').val(),
                                                spareparts: $('#input1').val(),
                                                serviceCharge: $('#input2').val(),
                                                sum: $('#show').val(),
                                            }
                                            console.log(repairBean)
                                                // if (pass) {
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
                                            // }
                                        }


                                        function insertdevice() {
                                            var deviceBean = {
                                                deviceCategory: $('#Devicecategory').val(),
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
                                            console.log(deviceBean)

                                            $.ajax({
                                                type: "POST",
                                                url: "/insertdevice",
                                                contentType: "application/json; charset=utf-8",
                                                data: JSON.stringify(deviceBean),
                                                dataType: "json",
                                                success: function(msg) {
                                                    console.log(msg)
                                                    window.location.reload();

                                                },
                                                error: function() {
                                                    $('#modaldevice').modal('hide')
                                                    window.location.reload();

                                                }
                                            });
                                        };

                                        function insertcustomer() {
                                            var customerBean = {
                                                id: $('#id').val(),
                                                name: $('#name').val(),
                                                address: $('#address').val(),
                                                phone: $('#phone').val(),
                                            }
                                            console.log(customerBean)
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
                                        };
                                        $.ajax({
                                            type: "GET",
                                            url: "/Devicecategory",
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function(msg) {
                                                for (var i = 0; i < msg.length; i++) {
                                                    $('#Devicecategory').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                                                }
                                            }
                                        });
                                        $('#Devicecategory').change(function() {
                                            $('#brand').empty();
                                            var testBean = {
                                                "a": $('#Devicecategory').val()
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

                                        $('#Devicecategory').change(function() {
                                            $('#CPU').empty();
                                            $('#Memory').empty();
                                            $('#HardDisk').empty();
                                            $('#Graphics').empty();
                                            $('#Display').empty();
                                            $('#OS').empty();

                                            if ('NOTEBOOK' == $('#Devicecategory').val()) {
                                                $('#1').addClass("row");
                                                $('#2').addClass("row");
                                                $('#3').addClass("row");
                                                $('#CPU').append('<label class="control-label mb-10 text-left ">CPU</label><input type="text" class="form-control" placeholder="CPU" id="cpu">');
                                                $('#Memory').append('<label class="control-label mb-10 text-left">Memory</label><input type="text" class="form-control" placeholder="Memory" id="memory">');
                                                $('#HardDisk').append('<label class="control-label mb-10 text-left">HardDisk</label><input type="text" class="form-control"  placeholder="HardDisk" id="harddisk">');
                                                $('#Graphics').append('<label class="control-label mb-10 text-left">Graphics</label><input type="text " class="form-control" placeholder="Graphics" id="graphics">');
                                                $('#Display').append('<label class="control-label mb-10 text-left">Display</label><input type="text " class="form-control" placeholder="Display" id="display">');
                                                $('#OS').append('<label class="control-label mb-10 text-left">OS</label><input type="text" class="form-control" placeholder="OS" id="os">');

                                            } else if ('COMPUTER' == $('#Devicecategory').val()) {
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

                                        // var ch = "off";
                                        // problemList = "";
                                        // $("#other").prop('disabled', true);
                                        // $("#ch").change(function() {
                                        //     if (ch == "off") {
                                        //         ch = "on"
                                        //         $("#problem").prop('disabled', true);
                                        //         $("#other").prop('disabled', false);
                                        //     } else {
                                        //         ch = "off"
                                        //         $("#other").prop('disabled', true);
                                        //         $("#problem").prop('disabled', false);
                                        //     }
                                        //     console.log(ch);
                                        // });
                                        // $("#problem").change(function() {
                                        //     problemList = $("#problem").val();
                                        //     console.log(problemList);
                                        // });
                                        // $("#other").change(function() {
                                        //     problemList = $("#other").val();
                                        //     console.log(problemList);
                                        // });

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


                                        $(document).ready(function() {
                                            $.ajax({
                                                type: "GET",
                                                url: "/deviceropdown",
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function(msg) {
                                                    for (var i = 0; i < msg.length; i++) {
                                                        $('#devicename').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                                    }

                                                }
                                            });
                                            $('#devicename').change(function() {
                                                $('#brand').empty();
                                                var testBean = {
                                                    "a": $('#devicename').val()
                                                };
                                                console.log(testBean)
                                                $.ajax({
                                                    type: "POST",
                                                    url: "/category",
                                                    data: JSON.stringify(testBean),
                                                    contentType: "application/json; charset=utf-8",
                                                    dataType: "json",
                                                    success: function(msg) {
                                                        $('#category').val(msg.initials);
                                                    }
                                                });
                                            });

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


                                            $.ajax({
                                                type: "GET",
                                                url: "/repairstatuspersonnel",
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function(msg) {
                                                    for (var i = 0; i < msg.length; i++) {
                                                        $('#repairstatus').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                                    }
                                                }
                                            });
                                            $.ajax({
                                                type: "GET",
                                                url: "/JobType",
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function(msg) {
                                                    for (var i = 0; i < msg.length; i++) {
                                                        if (msg[i].id == '1') {
                                                            $('#JobType').append('<optgroup label="' + msg[i].name + ' "></optgroup>');
                                                            for (var i = 0; i < msg.length; i++) {
                                                                if (msg[i].id == '1') {
                                                                    $("#JobType").append('<option value="' + msg[i].requestBean.id + '">' + msg[i].requestBean.name + '</option>');
                                                                }
                                                            }
                                                        }
                                                    }
                                                    for (var i = 0; i < msg.length; i++) {
                                                        if (msg[i].id == '2') {
                                                            $('#JobType').append('<optgroup label="' + msg[i].name + ' "></optgroup>');
                                                            for (var i = 0; i < msg.length; i++) {
                                                                if (msg[i].id == '2') {
                                                                    $("#JobType").append('<option value=" ' + msg[i].requestBean.id + ' ">' + msg[i].requestBean.name + '</option>');
                                                                }
                                                            }
                                                        }
                                                    }
                                                    for (var i = 0; i < msg.length; i++) {
                                                        if (msg[i].id == '3') {
                                                            $('#JobType').append('<optgroup label="' + msg[i].name + ' "></optgroup>');
                                                            for (var i = 0; i < msg.length; i++) {
                                                                if (msg[i].id == '3') {
                                                                    $("#JobType").append('<option value=" ' + msg[i].requestBean.id + ' ">' + msg[i].requestBean.name + '</option>');
                                                                }
                                                            }
                                                        }
                                                    }
                                                    for (var i = 0; i < msg.length; i++) {
                                                        if (msg[i].id == '4') {
                                                            $('#JobType').append('<optgroup label="' + msg[i].name + ' "></optgroup>');
                                                            for (var i = 0; i < msg.length; i++) {
                                                                if (msg[i].id == '4') {
                                                                    $("#JobType").append('<option value=" ' + msg[i].requestBean.id + ' ">' + msg[i].requestBean.name + '</option>');
                                                                }
                                                            }
                                                        }
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