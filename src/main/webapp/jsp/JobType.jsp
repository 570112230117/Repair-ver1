<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html >
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobType</title>
        <!--alerts CSS -->
        <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper" style="min-height: 980px;">
            <div class="container-fluid">
                <div class="row heading-bg">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h5 class="txt-dark">ประเภทงานซ่อม</h5>
                    </div>
                    <!-- Breadcrumb -->
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a>ตั้งค่า</a></li>
                            <li class="active"><span>ประเภทงานซ่อม</span></li>
                        </ol>
                    </div>
                    <!-- /Breadcrumb -->
                </div>

                <div class="pills-struct mt-40">
                    <ul role="tablist" class="nav nav-pills" id="myTabs_6">
                        <li class="active" role="presentation"><a aria-expanded="true" data-toggle="tab" role="tab" id="home_tab_6" href="#home_6">ประเภทงานซ่อม</a></li>
                        <li role="presentation" class=""><a data-toggle="tab" id="profile_tab_6" role="tab" href="#profile_6" aria-expanded="false">ประเภทการแจ้ง</a></li>
                    </ul>
                    <div class="tab-content" id="myTabContent_6">
                        <div id="home_6" class="tab-pane fade active in">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel panel-default card-view">
                                        <div class="panel-heading">
                                            <div class="pull-left">
                                                <h6 class="panel-title txt-dark">ประเภทงานซ่อม</h6>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="panel-wrapper collapse in">
                                            <div class="panel-body">
                                                <!-- Trigger the modal with a button -->
                                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#1">เพิ่มประเภทงานซ่อม</button>
                                                <div class="table-wrap">
                                                    <div class="table-responsive">
                                                        <div id="datable_1_wrapper" class="dataTables_wrapper">
                                                            <table id="datable_1" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                                <!-- Header Table -->
                                                                <thead>
                                                                    <tr>
                                                                        <th>id</th>
                                                                        <th>ประเภทงานซ่อม</th>
                                                                        <th>แก้ไข</th>
                                                                        <th>ลบ</th>
                                                                    </tr>
                                                                </thead>
                                                                <!-- Footer Table -->
                                                                <tfoot>
                                                                    <tr>
                                                                        <th>id</th>
                                                                        <th>ประเภทงานซ่อม</th>
                                                                        <th>แก้ไข</th>
                                                                        <th>ลบ</th>
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
                        </div>
                        <div id="profile_6" class="tab-pane fade active">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel panel-default card-view">
                                        <div class="panel-heading">
                                            <div class="pull-left">
                                                <h6 class="panel-title txt-dark">ประเภทการแจ้ง</h6>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="panel-wrapper collapse in">
                                            <div class="panel-body">
                                                <!-- Trigger the modal with a button -->
                                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#3">เพิ่มประเภทการแจ้ง</button>
                                                <div class="table-wrap">
                                                    <div class="table-responsive">
                                                        <div id="datable_1_wrapper" class="dataTables_wrapper">
                                                            <table id="job" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                                <!-- Header Table -->
                                                                <thead>
                                                                    <tr>
                                                                        <th>id</th>
                                                                        <th>ชื่อประเภทงานซ่อม</th>
                                                                        <th>ประเภทงานซ่อม</th>
                                                                        <th>แก้ไข</th>
                                                                        <th>ลบ</th>
                                                                    </tr>
                                                                </thead>
                                                                <!-- Footer Table -->
                                                                <tfoot>
                                                                    <tr>
                                                                        <th>id</th>
                                                                        <th>ชื่อประเภทงานซ่อม</th>
                                                                        <th>ประเภทงานซ่อม</th>
                                                                        <th>แก้ไข</th>
                                                                        <th>ลบ</th>
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
                        </div>
                    </div>
                </div>

                <!-- Modal -->
                <div id="2" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">แก้ไขประเภทงานซ่อม</h4>
                            </div>
                            <form name="updatejob" action="/updatejob" method="POST">
                                <div class="modal-body">
                                    <input type="hidden" name="id" id="i">
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อประเภทงานซ่อม:</label>
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
                <div id="1" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">เพิ่มประเภทงานซ่อม</h4>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อประเภทงานซ่อม:</label>
                                        <input type="text" class="form-control" id="name">
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" onclick="insertJob()">บันทึก</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- Modal -->
                <div id="4" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">แก้ไขประเภทงานซ่อม</h4>
                            </div>
                            <form name="updateRequest" action="/updateRequest" method="POST">
                                <div class="modal-body">
                                    <input type="hidden" name="id" id="iddd">
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label class="control-label mb-10">ชื่อประเภทการแจ้ง:</label>
                                            <input type="text" class="form-control" id="namex" name="name">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label mb-10">ประเภทงานซ่อม:</label>
                                            <select class="form-control" id="drop1" name="jobType">
                                                    <option value="">== เลือกประเภทงานซ่อม ==</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" id="jobTypeId" name="jobTypeId">
                                        </div>
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
                <div id="3" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">เพิ่มประเภทงานซ่อม</h4>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อประเภทการแจ้ง:</label>
                                        <input type="text" class="form-control" id="namee" name="">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ประเภทงานซ่อม:</label>
                                        <select class="form-control" id="drop">
                                                <option value="">== เลือกประเภทงานซ่อม ==</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="hidden" class="form-control" id="aaa" name="">
                                    </div>
                                </div>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" onclick="inserNotification()">บันทึก</button>
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
        <input id="xx" type="hidden">
        <!-- Sweet-Alert  -->
        <script src="vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            function insertJob() {
                var jobTypeBean = {
                    name: $('#name').val(),
                }
                $.ajax({
                    type: "POST",
                    url: "/insertJob",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(jobTypeBean),
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
                    url: "/JobId",
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
                        url: "/deleteJob/" + id,
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

            function inserNotification() {
                var requestTypeBean = {
                    name: $('#namee').val(),
                    jobType: $('#drop').val(),
                    jobTypeId: $('#aaa').val(),
                }
                console.log(requestTypeBean)
                $.ajax({
                    type: "POST",
                    url: "/insertRequest",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(requestTypeBean),
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

            function gotoUp(id) {
                document.getElementById("xx").value = id;
                var testBean = {
                    "a": $('#xx').val()
                };
                console.log(testBean)
                $.ajax({
                    type: "POST",
                    url: "/RequesId",
                    data: JSON.stringify(testBean),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        console.log('ทำงานแล้ว')
                        $('#iddd').val(msg.id);
                        $('#namex').val(msg.name);
                        $('#drop1').val(msg.jobType);
                        $('#jobTypeId').val(msg.jobTypeId);
                    }
                });
            };

            function gotoDel(id) {
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
                        url: "/deleteRequest/" + id,
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
        </script>
        <script>
            $(document).ready(function() {
                $.ajax({
                    type: "GET",
                    url: "/JoblistTabel",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        for (var i = 0; i < msg.length; i++) {
                            $('#drop').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                            $('#drop1').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                        }
                    }
                });
                $('#drop').change(function() {
                    var testBean = {
                        "a": $('#drop').val()
                    };
                    $.ajax({
                        type: "POST",
                        url: "/RequesfindById",
                        data: JSON.stringify(testBean),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#aaa').val(msg.jobTypeId);

                        }
                    });
                });
                $('#drop1').change(function() {
                    var testBean = {
                        "a": $('#drop1').val()
                    };
                    $.ajax({
                        type: "POST",
                        url: "/RequesfindById",
                        data: JSON.stringify(testBean),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#jobTypeId').val(msg.jobTypeId);
                        }
                    });
                });
                var table = $('#datable_1').DataTable({
                    "sAjaxSource": "/JoblistTabel",
                    "sAjaxDataProp": "",
                    "order": [
                        [0, "asc"]
                    ],
                    "aoColumns": [{
                        "mData": "id"
                    }, {
                        "mData": "name"
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return '<a onclick="gotoUpdate(' + "'" + full.id + "'" + ')" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#2"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return ' <a onclick="gotoDetele(' + "'" + full.id + "'" + ')" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span>' + '</a>';

                        }
                    }, ]
                });
                var table = $('#job').DataTable({
                    "sAjaxSource": "/RequestTabel",
                    "sAjaxDataProp": "",
                    "order": [
                        [0, "asc"]
                    ],
                    "aoColumns": [{
                        "mData": "id"
                    }, {
                        "mData": "name"
                    }, {
                        "mData": "jobType"
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return '<a onclick="gotoUp(' + "'" + full.id + "'" + ')" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#4"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return ' <a onclick="gotoDel(' + "'" + full.id + "'" + ')" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span>' + '</a>';

                        }
                    }, ]
                })
            });
        </script>
    </body>

    </html>