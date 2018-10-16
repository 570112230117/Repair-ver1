<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html >
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>repairsetting</title>
    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper" style="min-height: 980px;">
            <div class="container-fluid">
                <div class="row heading-bg">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h5 class="txt-dark">ตั้งค่าปัญหา</h5>
                    </div>
                    <!-- Breadcrumb -->
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a>ตั้งค่า</a></li>
                            <li class="active"><span>ตั้งค่าปัญหา</span></li>
                        </ol>
                    </div>
                    <!-- /Breadcrumb -->
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">ตั้งค่าปัญหา</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <!-- Trigger the modal with a button -->
                                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal">เพิ่มปัญหา</button>
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <div id="datable_1_wrapper" class="dataTables_wrapper">
                                                <table id="datable_1" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                    <!-- Header Table -->
                                                    <thead>
                                                        <tr>
                                                            <th>รหัส</th>
                                                            <th>ชื่อปัญหา</th>
                                                            <th>ประเภทงานซ่อม</th>
                                                            <!-- <th>ชื่อย่อประเภทงานซ่อม</th> -->
                                                            <th>แก้ไข</th>
                                                            <th>ลบ</th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>รหัส</th>
                                                            <th>ชื่อปัญหา</th>
                                                            <th>ประเภทงานซ่อม</th>
                                                            <!-- <th>ชื่อย่อประเภทงานซ่อม</th> -->
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
                                <h4 class="modal-title">แก้ไขพนักงาน</h4>
                            </div>
                            <form name="updateproblem" action="/updateproblem" method="POST">
                                <div class="modal-body">
                                    <input type="hidden" name="id" id="aa">
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อปัญหา:</label>
                                        <input type="text" class="form-control" id="bb" name="name">
                                    </div>
                                    <div class="form-group">
                                        <div class="form-group">
                                            <label class="control-label mb-10">ประเภทงานซ่อม:</label>
                                            <select class="form-control" id="repairtype" name="typeName">
                                                        <option>== กรุณาเลือก ==</option>
                                                        
                                                    </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <!-- <label class="control-label mb-10">ชื่อย่อประเภทงานซ่อม:</label> -->
                                        <input type="hidden" class="form-control" id="n" name="typeInitials">
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
                                <h4 class="modal-title">เพิ่มปัญหา</h4>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <input type="hidden" class="form-control" id="id">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อปัญหา:</label>
                                        <input type="text" class="form-control" id="name" placeholder="ชื่อปัญหา">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ประเภทงานซ่อม:</label>
                                        <select class="form-control" id="r">
                                            <option>== กรุณาเลือก ==</option>
                                            
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <!-- <label class="control-label mb-10">ชื่อย่อประเภทงานซ่อม:</label> -->
                                        <input type="hidden" class="form-control" id="aaa" disabled>
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
        <script>
            function insertConfirm() {
                var problemBean = {
                    id: $('#id').val(),
                    name: $('#name').val(),
                    typeName: $('#r').val(),
                    typeInitials: $('#aaa').val(),
                }
                $.ajax({
                    type: "POST",
                    url: "/insertproblem",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(problemBean),
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
                    url: "/problemid",
                    data: JSON.stringify(testBean),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        console.log('ทำงานแล้ว')
                        $('#aa').val(msg.id);
                        $('#bb').val(msg.name);
                        $('#repairtype').val(msg.typeName);
                        $('#n').val(msg.typeInitials);

                    }
                });
            };

            function gotoDetele(id) {
                $.ajax({
                    type: "DELETE",
                    url: "/deleteproblem/" + id,
                    success: function(msg) {
                        console.log("เย้ๆ")
                    },
                    error: function() {
                        console.log("error")
                        window.location.reload();
                    }
                });
            };
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
                            $('#r').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                        }
                    }
                });

                $('#r').change(function() {
                    var testBean = {
                        "a": $('#r').val()
                    };
                    $.ajax({
                        type: "POST",
                        url: "/initials",
                        data: JSON.stringify(testBean),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#aaa').val(msg.typeInitials);

                        }
                    });
                });
            });

            $(document).ready(function() {
                $.ajax({
                    type: "GET",
                    url: "/repairtype",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        for (var i = 0; i < msg.length; i++) {
                            $('#repairtype').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                        }
                    }
                });

                $('#repairtype').change(function() {
                    var testBean = {
                        "a": $('#repairtype').val()
                    };
                    $.ajax({
                        type: "POST",
                        url: "/initials",
                        data: JSON.stringify(testBean),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#n').val(msg.typeInitials);

                        }
                    });
                });
            });
        </script>

        <script>
            $(document).ready(function() {
                var table = $('#datable_1').DataTable({
                    "sAjaxSource": "/problemtabel",
                    "sAjaxDataProp": "",
                    "order": [
                        [0, "asc"]
                    ],
                    "aoColumns": [{
                        "mData": "id"
                    }, {
                        "mData": "name"
                    }, {
                        "mData": "typeName"
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return '<a onclick="gotoUpdate(' + "'" + full.id + "'" + ')" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return '<a onclick="gotoDetele(' + "'" + full.id + "'" + ')" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span>' + '</a>';
                        }
                    }, ]
                })
            });
        </script>
    </body>

    </html>