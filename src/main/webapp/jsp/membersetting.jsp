<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html >
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MemberSetting</title>

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
                                    <h6 class="panel-title txt-dark">พนักงาน / ช่างซ่อม</h6>

                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <!-- Trigger the modal with a button -->
                                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal">เพิ่มพนักงาน</button>
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <div id="datable_1_wrapper" class="dataTables_wrapper">
                                                <table id="datable_1" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                    <!-- Header Table -->
                                                    <thead>
                                                        <tr>
                                                            <th>รหัส</th>
                                                            <th>ชื่อ</th>
                                                            <th>อีเมล์</th>
                                                            <th>เบอร์โทรศัพท์</th>
                                                            <th>ตำแหน่ง</th>
                                                            <th>การใช้งาน</th>
                                                            <th>แก้ไข</th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>รหัส</th>
                                                            <th>ชื่อ</th>
                                                            <th>อีเมล์</th>
                                                            <th>เบอร์โทรศัพท์</th>
                                                            <th>ตำแหน่ง</th>
                                                            <th>การใช้งาน</th>
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
                                <h4 class="modal-title">แก้ไขพนักงาน</h4>
                            </div>
                            <form action="/updatemember" name="updatemember" method="POST">
                                <div class="modal-body">
                                    <input type="hidden" id="i" name="id">
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อ - สกุล:</label>
                                        <input type="text" class="form-control" id="n" name="name" placeholder="ชื่อ - สกุล">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ที่อยู่:</label>
                                        <textarea class="form-control" rows="3" name="address" id="a"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">เบอร์โทรศัพท์:</label>
                                        <input type="text" class="form-control" data-mask="(999) 999-9999" id="p" name="phone">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">เพศ:</label>
                                        <div>
                                            <div class="radio">
                                                <input type="radio" name="gender" id="r1" value="ชาย">
                                                <label for="radio_1">
                                                    ชาย
                                                    </label>
                                            </div>
                                            <div class="radio">
                                                <input type="radio" name="gender" id="r2" value="หญิง">
                                                <label for="radio_2">
                                                    หญิง
                                                    </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">อีเมล:</label>
                                        <input type="email" class="form-control" id="e" placeholder="อีเมล" name="email">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">รหัสผ่าน:</label>
                                        <input type="text" class="form-control" id="pass" placeholder="รหัสผ่าน" name="password">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ตำแหน่ง:</label>
                                        <select class="form-control" id="r" name="role">
                                                <option value="">== กรุณาเลือกตำแหน่ง ==</option>
                                                <option value="พนักงาน">พนักงาน</option>
                                                <option value="ช่างซ่อม">ช่างซ่อม</option>
                                                <option value="admin">admin</option>
                                            </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">การใช้งาน:</label>
                                        <div>
                                            <div class="radio">
                                                <input type="radio" name="status" id="r3" value="ใช้งาน">
                                                <label for="radio_3">
                                                        ใช้งาน
                                                    </label>
                                            </div>
                                            <div class="radio">
                                                <input type="radio" name="status" id="r4" value="เลิกใช้งาน">
                                                <label for="radio_4">
                                                        เลิกใช้งาน
                                                    </label>
                                            </div>
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
                <div id="Modal" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">เพิ่มพนักงาน</h4>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อ - สกุล:</label>
                                        <input type="text" class="form-control" id="name" placeholder="ชื่อ - สกุล">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ที่อยู่:</label>
                                        <textarea class="form-control" rows="3" id="address"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">เบอร์โทรศัพท์:</label>
                                        <input type="text" class="form-control" data-mask="(999) 999-9999" id="phone">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">เพศ:</label>
                                        <div>
                                            <div class="radio">
                                                <input type="radio" name="radio1" id="radio_1" value="option1">
                                                <label for="radio_1">
                                                ชาย
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <input type="radio" name="radio1" id="radio_2" value="option2">
                                                <label for="radio_2">
                                                หญิง
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">อีเมล:</label>
                                        <input type="email" class="form-control" id="email" placeholder="อีเมล">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">รหัสผ่าน:</label>
                                        <input type="password" class="form-control" id="password" placeholder="รหัสผ่าน">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ตำแหน่ง:</label>
                                        <select class="form-control" id="role">
                                            <option value="">== กรุณาเลือกตำแหน่ง ==</option>
                                            <option value="พนักงาน">พนักงาน</option>
                                            <option value="ช่างซ่อม">ช่างซ่อม</option>
                                            <option value="admin">admin</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">การใช้งาน:</label>
                                        <div>
                                            <div class="radio">
                                                <input type="radio" name="radio2" id="radio_3" value="option1">
                                                <label for="radio_3">
                                                    ใช้งาน
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <input type="radio" name="radio2" id="radio_4" value="option2">
                                                <label for="radio_4">
                                                    เลิกใช้งาน
                                                </label>
                                            </div>
                                        </div>
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
            var gender = "";
            var status = "";

            $(document).ready(function() {
                $("#radio_1").change(function() {
                    gender = "ชาย";
                });
                $("#radio_2").change(function() {
                    gender = "หญิง";
                });
                $("#radio_3").change(function() {
                    status = "ใช้งาน";
                });
                $("#radio_4").change(function() {
                    status = "เลิกใช้งาน";
                });

            });

            function gotoUpdate(id) {
                document.getElementById("xx").value = id;
                var testBean = {
                    "a": $('#xx').val()
                };
                $.ajax({
                    type: "POST",
                    url: "/memberid",
                    data: JSON.stringify(testBean),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        console.log('ทำงานแล้ว')
                        $('#i').val(msg.id);
                        $('#e').val(msg.email);
                        $('#pass').val(msg.password);
                        $('#n').val(msg.name);
                        $('#p').val(msg.phone);
                        $('#a').val(msg.address);
                        $('#r').val(msg.role);
                        if (msg.gender == "ชาย") {
                            document.getElementById('r1').checked = true;
                        } else if (msg.gender == "หญิง") {
                            document.getElementById('r2').checked = true;
                        }
                        if (msg.status == "ใช้งาน") {
                            document.getElementById('r3').checked = true;
                        } else if (msg.status == "เลิกใช้งาน") {
                            document.getElementById('r4').checked = true;
                        }
                    }
                });
            };

            function insertConfirm() {
                var memberBean = {
                    email: $('#email').val(),
                    password: $('#password').val(),
                    name: $('#name').val(),
                    phone: $('#phone').val(),
                    address: $('#address').val(),
                    gender: gender,
                    role: $('#role').val(),
                    status: status,
                }
                $.ajax({
                    type: "POST",
                    url: "/insertmember",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(memberBean),
                    dataType: "json",
                    success: function(msg) {
                        console.log("success")
                            // window.location.reload();
                    },
                    error: function() {
                        console.log("error")
                        $('#Modal').modal('hide')
                        $('datable_1').html(msg);
                        // window.location.reload();
                    }
                });
            }
        </script>
        <script>
            $(document).ready(function() {
                var table = $('#datable_1').DataTable({
                    "sAjaxSource": "/listmember",
                    "sAjaxDataProp": "",
                    "order": [
                        [0, "asc"]
                    ],
                    "aoColumns": [{
                        "mData": "id"
                    }, {
                        "mData": "name"
                    }, {
                        "mData": "email"
                    }, {
                        "mData": "phone"
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            if (full.role == 'พนักงาน') {
                                return '<span class="label label-primary">' + full.role + '</span>';
                            } else if (full.role == 'ช่างซ่อม') {
                                return '<span class="label label-warning">' + full.role + '</span>';
                            } else if (full.role == 'admin') {
                                return '<span class="label label-danger">' + full.role + '</span>';
                            }
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            if (full.status == 'ใช้งาน') {
                                return '<span class="label label-success ">' + full.status + '</span>';
                            } else if (full.status == 'เลิกใช้งาน') {
                                return '<span class="label label-danger ">' + full.status + '</span>';
                            }
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return ' <a onclick="gotoUpdate(' + "'" + full.id + "'" + ')" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';

                        }
                    }, ]
                })
            });
        </script>
        <!-- Bootstrap Core JavaScript -->
        <script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
    </body>

    </html>