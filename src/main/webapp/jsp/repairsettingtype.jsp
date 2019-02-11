<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html >
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <title>Insert title here</title>
    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper" style="min-height: 980px;">
            <div class="container-fluid">
                <div class="row heading-bg">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h5 class="txt-dark">ตั้งค่าหมวดหมู่อุปกรณ์</h5>
                    </div>
                    <!-- Breadcrumb -->
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a>ตั้งค่า</a></li>
                            <li class="active"><span>ตั้งค่าหมวดหมู่อุปกรณ์</span></li>
                        </ol>
                    </div>
                    <!-- /Breadcrumb -->
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">ตั้งค่าหมวดหมู่อุปกรณ์</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <div id="datable_1_wrapper" class="dataTables_wrapper">
                                                <table id="datable_1" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                    <!-- Header Table -->
                                                    <thead>
                                                        <tr>
                                                            <th>รหัส</th>
                                                            <th>ชื่อหมวดหมู่อุปกรณ์</th>
                                                            <th>ชื่อย่อหมวดหมู่อุปกรณ์</th>
                                                            <th>แก้ไข</th>

                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>รหัส</th>
                                                            <th>ชื่อหมวดหมู่อุปกรณ์</th>
                                                            <th>ชื่อย่อหมวดหมู่อุปกรณ์</th>
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
                                <h4 class="modal-title">ตั้งค่าหมวดหมู่อุปกรณ์</h4>
                            </div>
                            <form action="/updatetype" name="updatetype" id="updatetype" method="POST">
                                <div class="modal-body">
                                    <input type="hidden" id="id" name="id">
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อหมวดหมู่อุปกรณ์:</label>
                                        <input type="text" class="form-control" id="name" name="name">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อย่อหมวดหมู่อุปกรณ์:</label>
                                        <input type="text" class="form-control" id="initials" name="initials">
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
            function gotoUpdate(id) {
                document.getElementById("xx").value = id;
                var testBean = {
                    "a": $('#xx').val()
                };
                $.ajax({
                    type: "POST",
                    url: "/problemm",
                    data: JSON.stringify(testBean),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        console.log('ทำงานแล้ว')
                        $('#id').val(msg.id);
                        $('#name').val(msg.name);
                        $('#initials').val(msg.initials);
                    }
                });
            };


            $(document).ready(function() {
                var table = $('#datable_1').DataTable({
                    "sAjaxSource": "/Devicecategory",
                    "sAjaxDataProp": "",
                    "order": [
                        [0, "asc"]
                    ],
                    "aoColumns": [{
                        "mData": "id"
                    }, {
                        "mData": "name"
                    }, {
                        "mData": "initials"
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return '<a onclick="gotoUpdate(' + "'" + full.id + "'" + ')" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
                        }
                    }, ]
                })
            });
        </script>
    </body>

    </html>