<%@page import="java.text.SimpleDateFormat"%>
    <%@page import="java.util.Calendar"%>
        <%@page import="com.bru.model.AmnuayBean"%>
            <%@page import="com.bru.model.RepairBean"%>
                <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <jsp:include page="../layout/menu.jsp"></jsp:include>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                        <title>แก้ไขใบแจ้งซ่อม</title>
                        <!--alerts CSS -->
                        <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">
                        <% AmnuayBean bean = null;
        bean = (AmnuayBean) request.getSession().getAttribute("repairbean");
        %>
                            <%	Calendar c = Calendar.getInstance();
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	String currentDate = df.format(c.getTime());
    	  %>
                    </head>

                    <body>
                        <div class="page-wrapper" style="min-height: 1000px;">
                            <div class="container-fluid">
                                <div class="row heading-bg">
                                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                                        <h5 class="txt-dark">ข้อมูลการซ่อม เลขที่
                                            <%=bean.getRepaieID() %>
                                        </h5>
                                    </div>
                                    <input type="hidden" id="idd" value="<%=bean.getId() %>">
                                    <input type="hidden" id="custo" value="<%=bean.getCustomer() %>">
                                    <input type="hidden" id="deviceID" value="<%=bean.getDevice() %>">
                                    <!-- Breadcrumb -->
                                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                                        <ol class="breadcrumb">
                                            <li><a>ตารางการแจ้งซ่อม</a></li>
                                            <li class="active"><span>ข้อมูลการซ่อม</span></li>
                                        </ol>
                                    </div>
                                    <!-- /Breadcrumb -->
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel panel-default card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark" id="had"></h6>
                                                </div>
                                                <div class="pull-right">
                                                    <h6 class="panel-title txt-dark">No.
                                                        <%=bean.getRepaieID() %>
                                                    </h6>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-wrap">
                                                                <form class="form-horizontal" role="form">
                                                                    <div class="form-body">
                                                                        <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-account mr-10"></i>รายละเอียดของลูกค้า</h6>
                                                                        <hr class="light-grey-hr">
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">รหัสลูกค้า:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="customerID"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--/span-->
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">คุณ:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="customerName"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--/span-->
                                                                        </div>
                                                                        <!-- /Row -->
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">ที่อยู่:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="customerAddress"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--/span-->
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">โทรศัพท์:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="customePhone"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--/span-->
                                                                        </div>
                                                                        <br>
                                                                        <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-laptop mr-10"></i>รายละเอียดอุปกรณ์</h6>
                                                                        <hr class="light-grey-hr">
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">หมายเลขซีเรียล:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="deviceserialnumber"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">หมวดหมู่อุปกรณ์:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="deviceCategory">
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">ยี่ห้ออุปกรณ์:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="devicebrand"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--/span-->
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">รุ่นอุปกรณ์:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="devicegeneration"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--/span-->
                                                                        </div>
                                                                        <!-- /Row -->
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">ระยะเวลารับประกัน:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="devicewarranty"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--/span-->
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">ราคา:</label>
                                                                                    <div class="col-md-3">
                                                                                        <p class="form-control-static" id="deviceprice"></p>
                                                                                    </div>
                                                                                    <!-- <div class="col-md-6">
                                                                                        <p class="form-control-static">บาท</p>
                                                                                    </div> -->
                                                                                </div>
                                                                            </div>
                                                                            <!--/span-->
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">หมายเหตุ:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="devicenote"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <br>
                                                                        <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-receipt mr-10"></i>รายละเอียดปัญหา</h6>
                                                                        <hr class="light-grey-hr">

                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">วันที่ / เวลารับ:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="repairrepairDate"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--/span-->
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">ประมานการซ่อมเสร็จ:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="repaircompleteDate"></p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--/span-->
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">ประเภทการแจ้ง:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="jobType">
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">พนักงานรับเรื่อง:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="repairmemberId">
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">อาการเสีย:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="repairproblem">
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">อุปกรณ์ที่นำมาด้วย:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="accessories">
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">บันทึก:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="repairnote">
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-md-3">ราคาประเมิน:</label>
                                                                                    <div class="col-md-9">
                                                                                        <p class="form-control-static" id="repairLimit">
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
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
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="panel panel-default card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">ผลการแก้ไข</h6>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body">
                                                    <div class="form-wrap">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label mb-10">วันที่เสร็จ:</label>
                                                                    <input type="text" class="form-control" id="datecompletion" name="datecompletion" value="<%out.println(currentDate);%>" disabled="disabled">
                                                                </div>
                                                            </div>
                                                            <!--/span-->
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label mb-10">ช่างที่แก้ไข:</label>
                                                                    <input type="text" class="form-control" id="repairmem" name="memberrole" disabled>
                                                                </div>
                                                            </div>
                                                            <!--/span-->
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label mb-10">รายละเอียดการซ่อม:</label>
                                                            <textarea class="form-control" rows="4" id="repairdetails" name="repairdetails"></textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label mb-10 text-left">สถานะ:</label>
                                                            <select class="form-control" id="status">                                               
                                                            </select>
                                                        </div>
                                                        <!-- <div class="form-group">
                                                            <label class="control-label mb-10">ค่าอะไหล่:</label>
                                                            <input type="number" class="form-control" id="input1" onkeyup='nStr()' value="" name="spareparts">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label mb-10">ค่าบริการ:</label>
                                                            <input type="number" class="form-control" id="input2" onkeyup='nStr()' value="" name="servicecharge">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label mb-10">รวม:</label>
                                                            <input type="number" class="form-control" id="show" value="" name="sum">
                                                        </div> -->

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
                                <div class="pull-left">
                                    <a type="button" class="btn btn-primary mr-10" onclick="openInNewTab()"><i class="glyphicon glyphicon-print"></i> พิมพ์ใบรับซ่อม</a>
                                    <a type="button" class="btn btn-primary" onclick="reportreceipt()"><i class="glyphicon glyphicon-print"></i> พิมพ์ใบเสร็จรับเงิน</a>
                                </div>
                                <div class="text-center">
                                    <button type="button" class="btn btn-info mr-10" onclick="insertConfirm()">บันทึก</button>
                                    <button type="button" class="btn btn-default">ยกเลิก</button>
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
                        <input type="hidden" id="historyrepairDate">
                        <input type="hidden" id="historymemberId">
                        <input type="hidden" id="historcompleteDate">
                        <script>
                            function openInNewTab(url) {
                                var win = window.open('testreport');
                                win.focus();
                            }

                            function reportreceipt(url) {
                                var win = window.open('reportreceipt');
                                win.focus();
                            }

                            function insertConfirm() {

                                var repairBean = {
                                    id: $('#idd').val(),
                                    completionDate: $('#datecompletion').val(),
                                    technician: $('#repairmem').val(),
                                    technicialNoteDetail: $('#repairdetails').val(),
                                    repairStatus: $('#status').val(),
                                    spareparts: $('#input1').val(),
                                    serviceCharge: $('#input2').val(),
                                    sum: $('#show').val(),
                                    //

                                    customerId: $('#custo').val(),
                                    deviceId: $('#deviceID').val(),
                                    repairDate: $('#historyrepairDate').val(),
                                    memberId: $('#historymemberId').val(),
                                    completeDate: $('#historcompleteDate').val(),

                                }
                                console.log(repairBean)
                                swal({
                                    title: "Ajax request example",
                                    text: "Submit to run ajax request",
                                    type: "info",
                                    showCancelButton: true,
                                    closeOnConfirm: false,
                                    showLoaderOnConfirm: true
                                }, function() {
                                    setTimeout(function() {
                                        swal("Ajax request finished!");
                                    }, 2000);
                                    $.ajax({
                                        type: "POST",
                                        url: "/updateedit",
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
                                });

                            }
                            $(document).ready(function() {
                                document.getElementById('idd').value;
                                document.getElementById('custo').value;
                                document.getElementById('deviceID').value;
                                var testBean = {
                                    "a": $('#custo').val(),
                                    "b": $('#deviceID').val(),
                                    "id": $('#idd').val(),
                                };
                                console.log(testBean)
                                $.ajax({
                                    type: "POST",
                                    url: "/CustomerfindById",
                                    data: JSON.stringify(testBean),
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function(msg) {
                                        $('#customerID').append(msg.id);
                                        $('#customerName').append(msg.name);
                                        $('#customerAddress').append(msg.address);
                                        $('#customePhone').append(msg.phone);
                                    }
                                });
                                $.ajax({
                                    type: "POST",
                                    url: "/deviceID",
                                    data: JSON.stringify(testBean),
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function(msg) {
                                        $('#had').append(msg.deviceCategory);
                                        $('#deviceCategory').append(msg.deviceCategory);
                                        $('#devicebrand').append(msg.brand);
                                        $('#devicegeneration').append(msg.generation);
                                        $('#deviceserialnumber').append(msg.serialnumber);
                                        $('#devicewarranty').append(msg.warranty);
                                        $('#deviceprice').append(msg.price);
                                        $('#devicenote').append(msg.note);
                                    }
                                });
                                $('#status').empty();
                                $.ajax({
                                    type: "POST",
                                    url: "/repairEdit",
                                    data: JSON.stringify(testBean),
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function(msg) {
                                        $('#repairId').append(msg.repairID);
                                        $('#repairmemberId').append(msg.memberId);
                                        $('#repairrepairDate').append(msg.repairDate);
                                        $('#repaircompleteDate').append(msg.completeDate);
                                        $('#repairproblem').append(msg.problem);
                                        // $('#status').val(msg.repairStatus);
                                        $("#status").append("<option value='" + msg.repairStatusID + "'>" + msg.repairStatus + "</option>");
                                        $('#input1').val(msg.spareparts);
                                        $('#input2').val(msg.serviceCharge);
                                        $('#show').val(msg.sum);
                                        $('#repairdetails').val(msg.technicialNoteDetail);
                                        $('#repairnote').append(msg.technicialNote);
                                        $('#repairLimit').append(msg.repairLimit);
                                        $('#accessories').append(msg.accessories);
                                        $('#jobType').append(msg.jobType);
                                        //
                                        $('#historyrepairDate').val(msg.repairDate);
                                        $('#historymemberId').val(msg.memberId);
                                        $('#historcompleteDate').val(msg.completeDate);
                                        console.log(msg)
                                    }
                                });

                            });
                        </script>
                        <script>
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
                        </script>
                        <script>
                            $(document).ready(function() {
                                $.ajax({
                                    type: "GET",
                                    url: "/profileid",
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function(msg) {
                                        console.log('ทำงานแล้ว')
                                            // $('#id').val(msg.id);
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
                                            $('#status').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
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
                                    $('#deviceName').empty();
                                    var testBean = {
                                        "a": $('#repairtype').val()
                                    };
                                    $.ajax({
                                        type: "POST",
                                        url: "/testdevice",
                                        data: JSON.stringify(testBean),
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function(msg) {
                                            $('#deviceName').append('<option value="">== กรุณาเลือก ==</option>');
                                            for (var i = 0; i < msg.length; i++) {
                                                $('#deviceName').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
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
                                            $('#problem').append('<option value="">== กรุณาเลือก ==</option>');
                                            for (var i = 0; i < msg.length; i++) {
                                                $('#problem').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                            }
                                        }
                                    });
                                });
                            });
                        </script>
                        <!-- Sweet-Alert  -->
                        <script src="vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
                    </body>

                    </html>