<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html >
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <title>Insert title here</title>
        <!--alerts CSS -->
        <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper" style="min-height: 980px;">
            <div class="container-fluid">
                <div class="row heading-bg">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h5 class="txt-dark">ตั้งค่าสถานะ</h5>
                    </div>
                    <!-- Breadcrumb -->
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a>ตั้งค่า</a></li>
                            <li class="active"><span>ตั้งค่าสถานะ</span></li>
                        </ol>
                    </div>
                    <!-- /Breadcrumb -->
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">ตั้งค่าสถานะ</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <!-- Trigger the modal with a button -->
                                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal">เพิ่มสถานะ</button>
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <div id="datable_1_wrapper" class="dataTables_wrapper">
                                                <table id="datable_1" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                    <!-- Header Table -->
                                                    <thead>
                                                        <tr>
                                                            <th>id</th>
                                                            <th>ชื่อสถานะ</th>
                                                            <th>Role</th>
                                                            <th>แก้ไข</th>
                                                            <th>ลบ</th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>id</th>
                                                            <th>ชื่อสถานะ</th>
                                                            <th>Role</th>
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

                <!-- Modal -->
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">แก้ไขสถานะ</h4>
                            </div>
                            <form name="updatestatus" action="/updatestatus" method="POST">
                                <div class="modal-body">
                                    <input type="hidden" name="id" id="i">
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อสถานะ:</label>
                                        <input type="text" class="form-control" id="n" name="name">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ROLE:</label>
                                        <select class="form-control" id="r" name="role">
                                            <option value="พนักงาน">พนักงาน</option>
                                            <option value="ช่างซ่อม">ช่างซ่อม</option>
                                            </select>
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
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">เพิ่มสถานะ</h4>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อสถานะ:</label>
                                        <input type="text" class="form-control" id="name">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ROLE:</label>
                                        <select class="form-control" id="ROLE">
                                            <option value="พนักงาน">พนักงาน</option>
                                            <option value="ช่างซ่อม">ช่างซ่อม</option>
                                            </select>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" onclick="insertConfirm()">บันทึก</button>
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
            function insertConfirm() {
                var repairStatusBean = {
                    name: $('#name').val(),
                    role: $('#ROLE').val(),
                }
                $.ajax({
                    type: "POST",
                    url: "/insertstatus",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(repairStatusBean),
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
                    url: "/liststatus",
                    data: JSON.stringify(testBean),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        console.log(msg)
                        $('#i').val(msg.id);
                        $('#n').val(msg.name);
                        $('#r').val(msg.role);

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
                        url: "/deletestatus/" + id,
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
                var table = $('#datable_1').DataTable({
                    "sAjaxSource": "/repairstatus",
                    "sAjaxDataProp": "",
                    "order": [
                        [0, "asc"]
                    ],
                    "aoColumns": [{
                        "mData": "id"
                    }, {
                        "mData": "name"
                    }, {
                        "mData": "role"
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
            });
        </script>
    </body>

    </html>