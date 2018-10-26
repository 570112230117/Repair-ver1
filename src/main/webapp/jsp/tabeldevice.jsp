<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <title>Tabel Device</title>

    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper" style="min-height: 1000px;">
            <div class="container-fluid pt-25">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">ตารางทะเบียนอุปกรณ์</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <div id="datable_1_wrapper" class="dataTables_wrapper">
                                                <div class="pull-left">
                                                    <button onclick="window.location.href='/device'" class="btn btn-info btn-anim btn-sm"><i class="icon-rocket"></i><span class="btn-text">เพิ่มอุปกรณ์</span></button>
                                                </div>
                                                <br><br><br>
                                                <table id="datable_1" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                    <!-- Header Table -->
                                                    <thead>
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>หมายเลขซีเรียล</th>
                                                            <th>ประเภทอุปกรณ์</th>
                                                            <th>ผู้ใช้งานอุปกรณ์</th>
                                                            <th>ประวัติการซ่อม</th>
                                                            <th>รายละเอียด</th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>หมายเลขซีเรียล</th>
                                                            <th>ประเภทอุปกรณ์</th>
                                                            <th>ผู้ใช้งานอุปกรณ์</th>
                                                            <th>ประวัติการซ่อม</th>
                                                            <th>รายละเอียด</th>
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
    </body>
    <script>
        $(document).ready(function() {
            var table = $('#datable_1').DataTable({
                "sAjaxSource": "/devicelist",
                "sAjaxDataProp": "",
                "order": [
                    [0, "asc"]
                ],
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ],
                "aoColumns": [{
                    "mData": "id"
                }, {
                    "mData": "devicename"
                }, {
                    "mData": "serialnumber"
                }, {
                    "mData": "devicetype"
                }, {
                    "mData": "customer"
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<a class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
                    }
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<a class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
                    }
                }, ]
            })
        });
    </script>
    <!-- Data table JavaScript -->
    <script src="vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/bower_components/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="vendors/bower_components/jszip/dist/jszip.min.js"></script>
    <script src="vendors/bower_components/pdfmake/build/pdfmake.min.js"></script>
    <script src="vendors/bower_components/pdfmake/build/vfs_fonts.js"></script>
    <script src="vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="dist/js/export-table-data.js"></script>

    </html>