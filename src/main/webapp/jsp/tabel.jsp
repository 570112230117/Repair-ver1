<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <title>Repair_edit</title>
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
                                                            <th>เลขที่ใบแจ้งซ่อม</th>
                                                            <th>วันที่รับซ่อม</th>
                                                            <th>ชื่อ - สกุล</th>
                                                            <th>โทรศัพท์</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>ปัญหา</th>
                                                            <th>ผู้ดำเนินการ</th>
                                                            <th>สถานะ</th>
                                                            <th>แก้ไข</th>
                                                            <th>รายละเอียด</th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>เลขที่ใบแจ้งซ่อม</th>
                                                            <th>วันที่รับซ่อม</th>
                                                            <th>ชื่อ - สกุล</th>
                                                            <th>โทรศัพท์</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>ปัญหา</th>
                                                            <th>ผู้ดำเนินการ</th>
                                                            <th>สถานะ</th>
                                                            <th>แก้ไข</th>
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
        <input id="xx" type="hidden">
    </body>
    <script>
        function gotoUpdate(id) {
            document.getElementById("xx").value = id;
            var testBean = {
                "a": $('#xx').val()
            };
            // $.ajax({
            //     type: "POST",
            //     url: "",
            //     data: JSON.stringify(testBean),
            //     contentType: "application/json; charset=utf-8",
            //     dataType: "json",
            //     success: function(msg) {
            //         console.log('ทำงานแล้ว')
            //     }
            // });
        };


        $(document).ready(function() {
            var table = $('#datable_1').DataTable({
                "sAjaxSource": "/repairtabel",
                "sAjaxDataProp": "",
                "order": [
                    [0, "desc"]
                ],
                "aoColumns": [{
                    "mData": "id"
                }, {
                    "mData": "date"
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
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<span class="label label-default">' + full.status + '</span>';
                    }
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<a onclick="gotoUpdate(' + "'" + full.id + "'" + ')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
                    }
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<a class="btn btn-info btn-xs"><span class="icon-list"></span></a>';
                    }
                }]
            })
        });
    </script>

    </html>