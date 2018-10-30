<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <!-- <title>Repair_edit</title> -->
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
                                    <h6 class="panel-title txt-dark">ตารางการแจ้งซ่อม</h6>

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
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>อาการเสีย</th>
                                                            <th>ผู้ดำเนินการซ่อม</th>
                                                            <th>สถานะ</th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>เลขที่ใบแจ้งซ่อม</th>
                                                            <th>วันที่รับซ่อม</th>
                                                            <th>ชื่อ - สกุล</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>อาการเสีย</th>
                                                            <th>ผู้ดำเนินการซ่อม</th>
                                                            <th>สถานะ</th>
                                                            <th></th>
                                                            <th></th>
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
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ],
                "aoColumns": [{
                    "mData": "id"
                }, {
                    "mData": "date"
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<p>' + full.name + '<br>' + full.phone + '</p>';
                    }
                }, {
                    "mData": "device"
                }, {
                    "mData": "problem"
                }, {
                    "mData": "technician",
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<span class="label label-default">' + full.status + '</span>';
                    }
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<a href="/' + full.id + '" ' + ' class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
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