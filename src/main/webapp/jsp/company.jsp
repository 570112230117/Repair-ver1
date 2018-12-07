<%@page import="java.util.Date"%>
    <%@page import="java.text.DateFormat"%>
        <%@page import="java.text.SimpleDateFormat"%>
            <%@page import="java.util.Calendar"%>
                <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <jsp:include page="../layout/menu.jsp"></jsp:include>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                        <title>Company</title>
                        <!--alerts CSS -->
                        <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">
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
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="panel panel-default card-view">
                                            <div class="panel-heading">
                                                <div class="pull-left">
                                                    <h6 class="panel-title txt-dark">อุปกรณ์ส่งซ่อม</h6>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel-wrapper collapse in">
                                                <div class="panel-body">
                                                    <!-- Trigger the modal with a button -->
                                                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal">เพิ่มสถานที่ส่งซ่อม</button>
                                                    <div class="table-wrap">
                                                        <div class="table-responsive">
                                                            <div id="datable_1_wrapper" class="dataTables_wrapper">
                                                                <table id="datable_1" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                                    <!-- Header Table -->
                                                                    <thead>
                                                                        <tr>
                                                                            <th></th>
                                                                            <th>วันที่แจ้งซ่อม</th>
                                                                            <th>ชื่อผู้แจ้ง</th>
                                                                            <th>ชื่ออุปกรณ์</th>
                                                                            <th>อาการเสีย</th>
                                                                            <th>ผู้ดำเนินการซ่อม</th>
                                                                            <th>สถานะ</th>
                                                                            <th>แก้ไข</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <!-- Footer Table -->
                                                                    <tfoot>
                                                                        <tr>
                                                                            <th></th>
                                                                            <th>วันที่แจ้งซ่อม</th>
                                                                            <th>ชื่อผู้แจ้ง</th>
                                                                            <th>ชื่ออุปกรณ์</th>
                                                                            <th>อาการเสีย</th>
                                                                            <th>ผู้ดำเนินการซ่อม</th>
                                                                            <th>สถานะ</th>
                                                                            <th>แก้ไข</th>
                                                                        </tr>
                                                                    </tfoot>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal -->
                                <div id="myModal" class="modal fade" role="dialog">
                                    <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">แก้ไขสถานที่ส่งซ่อม</h4>
                                            </div>
                                            <form action="/updatecompany" name="updatecompany" method="POST">
                                                <div class="modal-body">
                                                    <input type="hidden" name="id" id="i">
                                                    <div class="form-group">
                                                        <label class="control-label mb-10">ชื่อสถานะ:</label>
                                                        <input type="text" class="form-control" id="n" name="name">
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" class="btn btn-primary">บันทึก</button>
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal -->
                                <div id="Modal" class="modal fade" role="dialog">
                                    <div class="modal-dialog modal-lg">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">เพิ่มสถานที่ส่งซ่อม</h4>
                                            </div>
                                            <div class="modal-body">
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
                                                                            <div class="input-group mb-15">
                                                                                <select class="form-control" id="JobType">
                                                                        <option value="">== เลือกประเภทการแจ้ง  ==</option>
                                                                        </select>
                                                                                <span class="input-group-btn">
                                                                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModaltype">+</button>
                                                                        </span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group" id="showproblem">
                                                                        </div>
                                                                        <div class="form-group" id="Other">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label class="control-label mb-10">ชื่ออุปกรณ์</label>
                                                                            <div class="input-group mb-15">
                                                                                <select class="form-control select2 select2-hidden-accessible" id="devicename">
                                                                                <option value="">== เลือกชื่ออุปกรณ์ ==</option>
                                                                                </select>
                                                                                <span class="input-group-btn">
                                                                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modaldevice">+</button>
                                                                                </span>
                                                                            </div>
                                                                        </div>
                                                                        <input type="hidden" class="form-control" id="category">
                                                                        <div class="form-group" id="occupier">

                                                                        </div>
                                                                        <!-- <div class="form-group" id="error_name">
                                                                    <label class="control-label mb-10">ผู้ครอบครองอุปกรณ์</label>
                                                                    <div class="input-group mb-15">
                                                                        <select class="form-control select2 select2-hidden-accessible" id="listcustomer">
                                                                        <option value="">== เลือกชื่อลูกค้า ==</option>
                                                                        </select>
                                                                        <span class="input-group-btn">
                                                                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal">+</button>
                                                                        </span>
                                                                    </div>
                                                                </div> -->
                                                                        <div class="form-group">
                                                                            <label class="control-label mb-10 text-left">อุปกรณ์ที่นำมาด้วย</label>
                                                                            <textarea class="form-control" rows="3" id="accessories"></textarea>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label class="control-label mb-10 ">สถานที่ส่งซ่อม</label>
                                                                            <div class="input-group mb-15">
                                                                                <select class="form-control" id="company">
                                                                                    <option value="">== สถานที่ส่งซ่อม ==</option>
                                                                                    </select>
                                                                                <span class="input-group-btn">
                                                                                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="">+</button>
                                                                                    </span>
                                                                            </div>
                                                                            <!-- <select class="form-control" id="">
                                                                                <option value="">== สถานที่ส่งซ่อม ==</option>
                                                                                <option value="">xxxx</option>
                                                                                <option value="">xxxx</option>
                                                                            </select> -->
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
                                                                    <h6 class="panel-title txt-dark">ข้อมูลผู้แจ้ง</h6>
                                                                </div>
                                                                <div class="clearfix"></div>
                                                            </div>
                                                            <div class="panel-wrapper collapse in">
                                                                <div class="panel-body">
                                                                    <div class="form-wrap">
                                                                        <div class="form-group" id="error_name">
                                                                            <label class="control-label mb-10">ชื่อผู้แจ้ง</label>
                                                                            <div class="input-group mb-15">
                                                                                <select class="form-control select2 select2-hidden-accessible" id="listcustomer">
                                                                <option value="">== เลือกชื่อผู้แจ้ง ==</option>
                                                                </select>
                                                                                <span class="input-group-btn">
                                                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal">+</button>
                                                                </span>
                                                                            </div>
                                                                        </div>
                                                                        <!-- <div class="form-group">
                                                            <label class="control-label mb-10 text-left">เบอร์โทร</label>
                                                            <input type="text" class="form-control" id="" data-mask="(999) 999-9999">
                                                        </div> -->
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
                                                                                            <div class="input-group mb-15">
                                                                                                <select class="form-control" id="repairstatus">
                                                                                    <option value="">== เลือกสถานะ ==</option>
                                                                                    </select>
                                                                                                <span class="input-group-btn">
                                                                                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modalstatus">+</button>
                                                                                    </span>
                                                                                            </div>
                                                                                        </div>

                                                                                        <!-- <div class="form-group" id="error_name">
                                                                                    <label class="control-label mb-10">ชื่อลูกค้า</label>
                                                                                    <div class="input-group mb-15">
                                                                                        <select class="form-control select2 select2-hidden-accessible" id="listcustomer">
                                                                                        <option value="">== เลือกชื่อลูกค้า ==</option>
                                                                                        </select>
                                                                                        <span class="input-group-btn">
                                                                                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal">+</button>
                                                                                        </span>
                                                                                    </div>
                                                                                </div> -->

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
                                                                                            <label class="control-label mb-10">ค่ามัดจำ:</label>
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

                                            </div>
                                            <div class="modal-footer">
                                                <div class="text-center">
                                                    <button type="button" class="btn btn-primary" onclick="insertConfirm()">บันทึก</button>
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
                                                </div>
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
                        <input id="xx" type="hidden">
                        <!-- Sweet-Alert  -->
                        <script src="vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
                        <script>
                            function insertConfirm() {
                                var companyBean = {
                                    name: $('#name').val(),
                                }
                                $.ajax({
                                    type: "POST",
                                    url: "/insertcompany",
                                    contentType: "application/json; charset=utf-8",
                                    data: JSON.stringify(companyBean),
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

                            function gotoUpdate(id) {
                                document.getElementById("xx").value = id;
                                var testBean = {
                                    "a": $('#xx').val()
                                };
                                $.ajax({
                                    type: "POST",
                                    url: "/listcompany",
                                    data: JSON.stringify(testBean),
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function(msg) {
                                        console.log('ทำงานแล้ว')
                                        $('#i').val(msg.id);
                                        $('#n').val(msg.name);
                                    }
                                });
                            };

                            function gotoDetele(id) {
                                swal({
                                    title: "Are you sure?",
                                    type: "warning",
                                    showCancelButton: true,
                                    confirmButtonColor: "#f8b32d",
                                    confirmButtonText: "Yes, delete it!",
                                    closeOnConfirm: false
                                }, function() {
                                    swal("Deleted!", "Your imaginary file has been deleted.", "success");
                                    $.ajax({
                                        type: "DELETE",
                                        url: "/deletecompany/" + id,
                                        success: function(msg) {
                                            console.log("เย้ๆ")
                                        },
                                        error: function() {
                                            console.log("error")
                                            window.location.reload();
                                        }
                                    });

                                });
                                return false;
                            };

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
                                var table = $('#datable_1').DataTable({
                                    "sAjaxSource": "",
                                    "sAjaxDataProp": "",
                                    "order": [
                                        [0, "asc"]
                                    ],
                                    "aoColumns": [{
                                        "mData": "id"
                                    }, {
                                        "mData": "name"
                                    }, {
                                        "mData": ""
                                    }, {
                                        "mData": ""
                                    }, {
                                        "mData": ""
                                    }, {
                                        "mData": ""
                                    }, {
                                        "mData": "",
                                        "mRender": function(data, type, full) {
                                            return '<a onclick="gotoUpdate(' + "'" + full.id + "'" + ')" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
                                        }
                                    }, {
                                        "mData": "",
                                        "mRender": function(data, type, full) {
                                            return ' <a onclick="gotoDetele(' + "'" + full.id + "'" + ')" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span>' + '</a>';

                                        }
                                    }, ]
                                })

                                //ดรอป
                                $.ajax({
                                    type: "GET",
                                    url: "/companyDrop",
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function(msg) {
                                        for (var i = 0; i < msg.length; i++) {
                                            $('#company').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                        }

                                    }
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
                                            $('#customerdevice').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                        }

                                    }
                                });

                                $.ajax({
                                    type: "GET",
                                    url: "/deviceropdown",
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function(msg) {
                                        console.log(msg)
                                        for (var i = 0; i < msg.length; i++) {
                                            $('#devicename').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                        }
                                    }
                                });
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


                                $('#devicename').change(function() {
                                    $('#brand').empty();
                                    var testBean = {
                                        "a": $('#devicename').val()
                                    };
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

                                    $('#occupier').empty();
                                    $.ajax({
                                        type: "POST",
                                        url: "/Occupier",
                                        data: JSON.stringify(testBean),
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function(msg) {
                                            console.log(msg)
                                                // <label class="control-label mb-10">ผู้ครอบครองอุปกรณ์</label>
                                                // <input type="text" class="form-control">
                                            $('#occupier').append('<label class="control-label mb-10">ผู้ครอบครองอุปกรณ์</label><input type="text" class="form-control" value="' + "(" + msg.strId + ") คุณ " + msg.name + '" disabled>')
                                                // $('#occupier').val("(" + msg.strId + ") " + msg.name)
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
                                            $('#repairstatus').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                        }
                                    }
                                });

                                $.ajax({
                                    type: "GET",
                                    url: "/RepairTypeDrop",
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function(msg) {
                                        for (var i = 0; i < msg.length; i++) {
                                            $('#JobType').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                            $('#JobTypemodal').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                        }
                                    }
                                });
                                $('#JobType').change(function() {
                                    $('#Other').empty();
                                    $('#problem').empty();
                                    $('#showproblem').empty();
                                    // console.log('เข้าJobType')
                                    if (17 == $('#JobType').val()) {
                                        $('#Other').append('<label class="control-label mb-10 text-left">อาการเสียอื่นๆ</label><textarea class="form-control" rows="4" id="Other_symptoms"></textarea>');
                                    } else {
                                        var testBean = {
                                            "a": $('#JobType').val()
                                        };
                                        // console.log(testBean)
                                        $.ajax({
                                            type: "POST",
                                            url: "/findByIdlist",
                                            data: JSON.stringify(testBean),
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function(msg) {
                                                // console.log(msg)

                                                $('#showproblem').append('<label class="control-label mb-10 text-left">อาการเสีย</label><div class="input-group mb-15"><select class="form-control" id="problem"><option value="">== เลือกอาการเสีย  ==</option></select>  <span class="input-group-btn"><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModalproblem">+</button></span></div > ');
                                                for (var i = 0; i < msg.length; i++) {
                                                    $('#problem').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                                                }
                                            }
                                        });
                                    }
                                });
                                $('#showproblem').change(function() {
                                    $('#Other').empty();
                                    console.log('เข้าproblem')
                                    if ('อื่นๆ' == $('#problem').val()) {
                                        $('#Other').append('<label class="control-label mb-10 text-left">อาการเสียอื่นๆ</label><textarea class="form-control" rows="4" id="Other_symptoms"></textarea>');
                                        // console.log('if')
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