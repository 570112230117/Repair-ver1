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
                                                            <th>วันที่แจ้งซ่อม</th>
                                                            <th>ชื่อลูกค้า</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>อาการเสีย</th>
                                                            <th>ผู้ดำเนินการซ่อม</th>
                                                            <th>สถานะ</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>วันที่แจ้งซ่อม</th>
                                                            <th>ชื่อลูกค้า</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>อาการเสีย</th>
                                                            <th>ผู้ดำเนินการซ่อม</th>
                                                            <th>สถานะ</th>
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
                <div id="modaldevice" class="modal fade" role="dialog">
                    <div class="modal-dialog modal-lg">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">รายละเอียด</h4>
                            </div>
                            <div class="modal-body">
                                <div class="device-view">
                                    <div>
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-pills" role="tablist">
                                            <li role="presentation" class="active">
                                                <a href="#detail" aria-controls="detail" role="tab" data-toggle="tab"> ข้อมูลอุปกรณ์</a>
                                            </li>
                                            <li role="presentation">
                                                <a href="#history" aria-controls="settings" role="tab" data-toggle="tab">ประวัติการซ่อม</a>
                                            </li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane active" id="detail">
                                                <br>
                                                <h4>ข้อมูลอุปกรณ์</h4>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <table id="w0" class="table table-striped table-bordered detail-view">
                                                            <tbody>
                                                                <tr>
                                                                    <th>วันที่เริ่มใช้งาน</th>
                                                                    <td width="60%" id="deviceDate"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>หมวดหมู่อุปกรณ์</th>
                                                                    <td id="deviceCategory"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>รุ่นอุปกรณ์</th>
                                                                    <td id="generation"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>ระยะเวลารับประกัน</th>
                                                                    <td id="warranty"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>CPU</th>
                                                                    <td id="cpu"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>HardDisk</th>
                                                                    <td id="harddisk"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>Display</th>
                                                                    <td id="display"></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>

                                                    </div>
                                                    <div class="col-md-6">
                                                        <table id="w1" class="table table-striped table-bordered detail-view">
                                                            <tbody>
                                                                <tr>
                                                                    <th>ผู้ใช้งานอุปกรณ์</th>
                                                                    <td width="60%" id="custromerId"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>ยี่ห้ออุปกรณ์</th>
                                                                    <td id="brand"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>หมายเลขเครื่อง</th>
                                                                    <td id="serialnumber"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>ราคา</th>
                                                                    <td id="price"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>Memory</th>
                                                                    <td id="memory"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>Graphics</th>
                                                                    <td id="graphics"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>OS</th>
                                                                    <td id="os"></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <table id="w2" class="table table-striped table-bordered detail-view">
                                                    <tbody>
                                                        <tr>
                                                            <th>รายละเอียดเพิ่มเติม</th>
                                                            <td width="80%" id="note"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div role="tabpanel" class="tab-pane" id="history">
                                                <br>
                                                <div class="table-responsive">
                                                    <div id="w5" class="grid-view">
                                                        <table class="table report-table" width="100%" id="ta">
                                                            <colgroup>
                                                                <col style="width:10%">
                                                                <col style="width:25%">
                                                                <col style="width:25%">
                                                                <col style="width:25%">
                                                                <col style="width:15%">
                                                                <col>
                                                            </colgroup>
                                                            <thead>
                                                                <!-- <tr>
                                                                    <th>วันที่แจ้งซ่อม</th>
                                                                    <th class="text-left">ชื่อลูกค้า</th>
                                                                    <th>อาการเสีย</th>
                                                                    <th>ผู้ดำเนินการซ่อม</th>
                                                                    <th>สถานะ</th>
                                                                </tr> -->
                                                            </thead>
                                                            <tbody>
                                                                <!-- <tr>
                                                                    <td>No. PT1800006<br>2561-11-11 03:39:09</td>
                                                                    <td>วิทยา ทองคำ<br><small>ฝ่ายเทคโนโลยีสารสนเทศ</small></td>
                                                                    <td>เปิด Word แล้ว ภาษาไทยเป็นต่างดาว</td>
                                                                    <td>ผู้ดูแลระบบ2</td>
                                                                    <td width="10%">รอตรวจสอบ</td>
                                                                </tr> -->
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
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
        function gotodevice(id) {
            var testBean = {
                "a": id
            };
            console.log(testBean)
            $.ajax({
                type: "POST",
                url: "/Editdevice",
                data: JSON.stringify(testBean),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    console.log(msg)
                    $('#deviceDate').text(msg.deviceDate);
                    $('#custromerId').text(msg.custromerId);
                    $('#deviceCategory').text(msg.deviceCategory);
                    $('#brand').text(msg.brand);
                    $('#generation').text(msg.generation);
                    $('#serialnumber').text(msg.serialnumber);
                    $('#warranty').text(msg.warranty);
                    $('#price').text(msg.price);
                    $('#note').text(msg.note);
                    $('#cpu').text(msg.cpu);
                    $('#memory').text(msg.memory);
                    $('#harddisk').text(msg.harddisk);
                    $('#graphics').text(msg.graphics);
                    $('#display').text(msg.display);
                    $('#os').text(msg.os);

                }
            });
            $('#ta').empty();
            $.ajax({
                type: "POST",
                url: "/repairtabelID",
                data: JSON.stringify(testBean),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    console.log(msg)
                    var table = '';
                    table += '<tr>';
                    table += '<th>วันที่แจ้งซ่อม</th>';
                    table += '<th class="text-left">ชื่อลูกค้า</th>';
                    table += '<th>อาการเสีย</th>';
                    table += '<th>ผู้ดำเนินการซ่อม</th>';
                    table += '<th>รายละเอียดการซ่อม</th>';
                    table += '<th>สถานะ</th>';
                    table += '</tr>';
                    for (var i = 0; i < msg.length; i++) {
                        table += '<tr>';
                        table += '<td>No. ' + msg[i].reprirId + '<br>' + msg[i].date + '</td>';
                        table += '<td>' + msg[i].name + '<br>' + msg[i].phone + '</td>';
                        table += '<td>' + msg[i].problem + '</td>';
                        table += '<td>' + msg[i].technician + '</td>';
                        table += '<td>' + msg[i].technicialNoteDetail + '</td>';
                        table += '<td width="10%">' + msg[i].status + '</td>';
                        table += '</tr>';
                    }
                    $('#ta').append(table);
                }
            });
        };

        // function gotoUpdate(id) {
        //     document.getElementById("xx").value = id;
        //     var testBean = {
        //         "a": $('#xx').val()
        //     };
        //     console.log(testBean)
        //     $('#ta').empty();
        //     $.ajax({
        //         type: "POST",
        //         url: "/history",
        //         data: JSON.stringify(testBean),
        //         contentType: "application/json; charset=utf-8",
        //         dataType: "json",
        //         success: function(msg) {
        //             console.log(msg)
        //             var table = '';
        //             table += '<tr>';
        //             table += '<th class="text-center">วันที่ทำรายการ</th>';
        //             table += '<th class="text-center">สถานะ</th>';
        //             table += '<th class="text-center">รวมค่าบริการ</th>';
        //             table += '<th class="text-center">ผู้ดำเนินการ</th>';
        //             table += '/<tr>';
        //             for (var i = 0; i < msg.length; i++) {

        //                 table += '<tr class="text-center">';
        //                 table += '<td>' + msg[i].completionDate + '</td>';
        //                 table += '<td>' + msg[i].repairStatus + '</td>';
        //                 table += '<td>' + msg[i].sum + '</td>';
        //                 table += '<td>' + msg[i].technician + '</td>';
        //                 table += '</tr>';

        //             }
        //             $('#ta').append(table);

        //         }
        //     });
        // };


        $(document).ready(function() {
            var table = $('#datable_1').DataTable({
                "sAjaxSource": "/repairtabel",
                "sAjaxDataProp": "",
                // dom: 'Bfrtip',
                // buttons: [
                //     'copy', 'csv', 'excel', 'pdf', 'print'
                // ],
                "aoColumns": [{
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<p>' + "No. " + full.reprirId + "" + '<br>' + full.date + '</p>';
                    }
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<p>' + full.name + '<br>' + full.phone + '</p>';
                    }
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<a onclick="gotodevice(' + full.device + ')" data-toggle="modal" data-target="#modaldevice"><img src="dist/img/if_computer.png" width="40" height="40"></a>';
                    }
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