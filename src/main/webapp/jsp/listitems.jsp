<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <jsp:include page="../layout/menuuser.jsp"></jsp:include>
        <title>listitems</title>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
        <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
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
                                                            <th>วันเวลาที่แจ้ง</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>ชื่อ - สกุล</th>
                                                            <th>ปัญหา</th>
                                                            <th>สาเหตุ / วิธีแก้ไข</th>
                                                            <th>ผู้ดำเนินการ</th>
                                                            <th>สถานะ</th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>วันเวลาที่แจ้ง</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>ชื่อ - สกุล</th>
                                                            <th>ปัญหา</th>
                                                            <th>สาเหตุ / วิธีแก้ไข</th>
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
                        "mData": "lastName"
                    }, {
                        "mData": "email"
                    }, {
                        "mData": "phone"
                    }, {
                        "mData": "active"
                    }, {
                        "mData": "active"
                    }, ]
                })
            });
        </script>
    </body>

    </html>