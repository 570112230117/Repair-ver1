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
                                                    <button onclick="window.location.href='/device'" class="btn btn-success btn-anim btn-sm"><i class="icon-rocket"></i><span class="btn-text">เพิ่มอุปกรณ์</span></button>
                                                </div>
                                                <table id="datable_1" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                    <!-- Header Table -->
                                                    <thead>
                                                        <tr>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>หมายเลขซีเรียล</th>
                                                            <th>ประเภทอุปกรณ์</th>
                                                            <th>ยี่ห้ออุปกรณ์</th>
                                                            <th>รุ่นอุปกรณ์</th>
                                                            <th>ผู้ใช้งานอุปกรณ์</th>
                                                            <th>รายละเอียด</th>

                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>หมายเลขซีเรียล</th>
                                                            <th>ประเภทอุปกรณ์</th>
                                                            <th>ยี่ห้ออุปกรณ์</th>
                                                            <th>รุ่นอุปกรณ์</th>
                                                            <th>ผู้ใช้งานอุปกรณ์</th>
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
                "aoColumns": [{
                    "mData": "devicename"
                }, {
                    "mData": "serialnumber"
                }, {
                    "mData": "devicetype"
                }, {
                    "mData": "brand"
                }, {
                    "mData": "generation"
                }, {
                    "mData": "customer"
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return null;
                    }
                }]
            })
        });
    </script>

    </html>