<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>

    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper" style="min-height: 980px;">
            <div class="container-fluid pt-25">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">ตารางการแจ้งซ่อม <small>รวมรายการแจ้งซ่อมทั้งหมด <span class="label label-danger">0</span> รายการ</small></h6>

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
                                                            <th>เลขที่ใบแจ้งซ่อม</th>
                                                            <th>ชื่อ - สกุล</th>
                                                            <th>โทรศัพท์</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>ปัญหา</th>
                                                            <th>ผู้ดำเนินการ</th>
                                                            <th>สถานะ</th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>เลขที่ใบแจ้งซ่อม</th>
                                                            <th>ชื่อ - สกุล</th>
                                                            <th>โทรศัพท์</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>ปัญหา</th>
                                                            <th>ผู้ดำเนินการ</th>
                                                            <th>สถานะ</th>
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
        <script>
            $(document).ready(function() {
                var table = $('#datable_1').DataTable({
                    "sAjaxSource": "/repairtabel",
                    "sAjaxDataProp": "",
                    "order": [
                        [0, "asc"]
                    ],
                    "aoColumns": [{
                        "mData": "id"
                    }, {
                        "mData": "name"
                    }, {
                        "mData": "phone"
                    }, {
                        "mData": "device"
                    }, {
                        "mData": "problem"
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) {
                            return null;
                        }
                    }, {
                        "mData": "status"
                    }, ]
                })
            });
        </script>
    </body>

    </html>