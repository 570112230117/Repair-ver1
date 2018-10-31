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

                <!-- Modal -->
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog" style="width: 70%">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">ประวัติการทำรายการ</h4>
                            </div>
                            <div class="modal-body">
                                <table class="table table-bordered" id="ta">

                                </table>
                            </div>
                            <div class="modal-footer">
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
    </body>
    <script>
        function gotoUpdate(id) {
            document.getElementById("xx").value = id;
            var testBean = {
                "a": $('#xx').val()
            };
            console.log(testBean)
            $('#ta').empty();
            $.ajax({
                type: "POST",
                url: "/history",
                data: JSON.stringify(testBean),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    console.log(msg)
                    var table = '';
                    table += '<tr>';
                    table += '<th class="text-center">วันที่ทำรายการ</th>';
                    table += '<th class="text-center">สถานะ</th>';
                    table += '<th class="text-center">รวมค่าบริการ</th>';
                    table += '<th class="text-center">ผู้ดำเนินการ</th>';
                    table += '/<tr>';
                    for (var i = 0; i < msg.length; i++) {

                        table += '<tr class="text-center">';
                        table += '<td>' + msg[i].completionDate + '</td>';
                        table += '<td>' + msg[i].repairStatus + '</td>';
                        table += '<td>' + msg[i].sum + '</td>';
                        table += '<td>' + msg[i].technician + '</td>';
                        table += '</tr>';

                    }
                    $('#ta').append(table);

                }
            });
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
                        return '<a onclick="gotoUpdate(' + "'" + full.id + "'" + ')" class="btn btn-info btn-xs" data-toggle="modal" data-target="#myModal"><span class="icon-list"></span></a>';
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