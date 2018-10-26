<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <title>Customer</title>
        <!--alerts CSS -->
        <link href="vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">
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
                                    <h6 class="panel-title txt-dark">ตั้งค่าลูกค้า</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <!-- Trigger the modal with a button -->
                                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Modal">เพิ่มลูกค้า</button>
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <div id="datable_1_wrapper" class="dataTables_wrapper">
                                                <table id="datable_1" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                    <!-- Header Table -->
                                                    <thead>
                                                        <tr>
                                                            <th>รหัส</th>
                                                            <th>ชื่อลูกค้า</th>
                                                            <th>ที่อยู่</th>
                                                            <th>เบอร์โทร</th>
                                                            <th>แก้ไข</th>
                                                            <th>ลบ</th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>รหัส</th>
                                                            <th>ชื่อลูกค้า</th>
                                                            <th>ที่อยู่</th>
                                                            <th>เบอร์โทร</th>
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
                                <h4 class="modal-title">แก้ไขลูกค้า</h4>
                            </div>
                            <form name="updatemodal" action="/updatemodal" method="POST">
                                <div class="modal-body">
                                    <input type="hidden" name="id" id="i">
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อลูกค้า:</label>
                                        <input type="text" class="form-control" id="n" name="name">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ที่อยู่:</label>
                                        <textarea class="form-control" rows="5" id="a" name="address"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">เบอร์โทร:</label>
                                        <input type="text" class="form-control" data-mask="(999) 999-9999" id="t" name="phone">
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
            $(document).ready(function() {
                var table = $('#datable_1').DataTable({
                    "sAjaxSource": "/listcustomer",
                    "sAjaxDataProp": "",
                    "order": [
                        [0, "desc"]
                    ],
                    "aoColumns": [{
                        "mData": "id"
                    }, {
                        "mData": "name"
                    }, {
                        "mData": "address"
                    }, {
                        "mData": "phone"
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return '<a onclick="gotoUpdate(' + "'" + full.id + "'" + ')"  class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return '<a onclick="gotoDetele(' + "'" + full.id + "'" + ')" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash" ></span>' + '</a>';
                        }
                    }, ]
                })
            });
        </script>
        <script>
            function gotoUpdate(id) {
                document.getElementById("xx").value = id;
                var testBean = {
                    "a": $('#xx').val()
                };
                $.ajax({
                    type: "POST",
                    url: "/modal",
                    data: JSON.stringify(testBean),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        console.log('ทำงานแล้ว')
                        $('#i').val(msg.id);
                        $('#n').val(msg.name);
                        $('#a').val(msg.address);
                        $('#t').val(msg.phone);

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
                        url: "/deletemodal/" + id,
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

            function insertConfirm() {
                var customerBean = {
                    id: $('#id').val(),
                    name: $('#name').val(),
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
        <!-- Sweet-Alert  -->
        <script src="vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
    </body>

    </html>