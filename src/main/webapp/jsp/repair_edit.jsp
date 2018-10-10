<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Repair_edit</title>
    </head>

    <body>
        <div class="page-wrapper" style="min-height: 1000px;">
            <div class="container-fluid">
                <div class="row heading-bg">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h5 class="txt-dark">แก้ไขข้อมูลการซ่อม เลขที่ 201804011</h5>
                    </div>
                    <!-- Breadcrumb -->
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a>ตารางการแจ้งซ่อม</a></li>
                            <li class="active"><span>แก้ไขข้อมูลการซ่อม</span></li>
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
                                                <div class="form-group">
                                                    <label class="control-label mb-10 ">วันที่แจ้ง:</label>
                                                    <input type="text" class="form-control " id="date" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10 ">ชื่อผู้แจ้ง::</label>
                                                    <input type="text" class="form-control " id="name">
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10 ">โทรศัพท์:</label>
                                                    <input type="text" class="form-control " id="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                                                <div class="form-group ">
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
                                                <div class="form-group ">
                                                    <label class="control-label mb-10 text-left">ปัญหา:</label> <select class="form-control" id="problem">
                                                                                                <option>== กรุณาเลือก ==</option>
                                                                                                </select>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10 text-left">อื่นๆ:</label>
                                                    <textarea class="form-control" rows="4" id="other"></textarea>
                                                </div>
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
                                    <h6 class="panel-title txt-dark">พนักงานรับเรื่อง</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12">
                                            <div class="form-wrap">
                                                <div class="form-group">
                                                    <label class="control-label mb-10">ประมานการซ่อมเสร็จ:</label>
                                                    <input type="date" class="form-control" id="repairComplete" value="">
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label mb-10">ชื่อพนักงาน:</label>
                                                    <input type="text" class="form-control" id="member">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">ผลการแก้ไข</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12">
                                            <div class="form-wrap">
                                                <div class="form-group">
                                                    <label class="control-label mb-10">วันที่เสร็จ:</label>
                                                    <input type="date" class="form-control" id="">
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10">ช่างที่แก้ไข:</label>
                                                    <input type="text" class="form-control" id="repairmem" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10">สาเหตุ / วิธีแก้ไข:</label>
                                                    <textarea class="form-control" rows="4" id=""></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10">ค่าใช้จ่าย:</label>
                                                    <input type="text" class="form-control" id="" placeholder="0">
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10 text-left">สถานะ:</label>
                                                    <select class="form-control" id="repairstatus">
                                                        <option>== กรุณาเลือก ==</option>
                                                        </select>
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
                    <button type="submit" class="btn btn-success mr-10">บันทึก</button>
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
                        $('#repairmem').val(msg.name);

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
            });
        </script>
    </body>

    </html>