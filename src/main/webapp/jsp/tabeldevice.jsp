<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <!-- <title>Tabel Device</title> -->
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
                                                            <th>หมายเลขเครื่อง</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>ผู้ใช้งานอุปกรณ์</th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>หมายเลขเครื่อง</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>ผู้ใช้งานอุปกรณ์</th>
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
                                <h4 class="modal-title">แก้ไขอุปกรณ์</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-wrap ">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">วันที่เริ่มใช้งาน</label>
                                                <input type="text" class="form-control" id="deviceDate" placeholder="" disabled>
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">ผู้ใช้งานอุปกรณ์</label>
                                                <select class="form-control" id="customer">
                                                                    <option value="">== เลือกผู้แจ้ง ==</option>
                                                                 </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">หมวดหมู่อุปกรณ์:</label>
                                                <select class="form-control" id="category">
                                                <option value="">== เลือกหมวดหมู่อุปกรณ์ ==</option>
                                                </select>
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">ยี่ห้ออุปกรณ์</label>
                                                <select class="form-control" id="brand">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">รุ่นอุปกรณ์</label>
                                                <input type="text" class="form-control" id="generation" placeholder="">
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">หมายเลขซีเรียล</label>
                                                <input type="text" class="form-control" id="serialnumber" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">ระยะเวลารับประกัน</label>
                                                <input type="text" class="form-control" id="warranty" placeholder="">
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">ราคา</label>
                                                <input type="number" class="form-control" id="price" placeholder="">
                                            </div>
                                        </div>
                                        <!-- /Row -->
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left ">CPU</label>
                                                <input type="text" class="form-control" id="cpu">
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">Memory</label>
                                                <input type="text" class="form-control" id="memory">
                                            </div>
                                        </div>
                                        <!-- /Row -->
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">HardDisk</label>
                                                <input type="text" class="form-control" id="harddisk">
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">Graphics</label>
                                                <input type="text " class="form-control" id="graphics">
                                            </div>
                                        </div>
                                        <!-- /Row -->
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">Display</label>
                                                <input type="text " class="form-control" id="display">
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">OS</label>
                                                <input type="text" class="form-control" id="os">
                                            </div>
                                        </div>
                                        <!-- /Row -->
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10 text-left">หมายเหตุ</label>
                                        <textarea class="form-control" rows="4" id="note"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary" onclick="updatedevice()">บันทึก</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
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
                                                                    <td width="60%" id="dete"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>หมวดหมู่อุปกรณ์</th>
                                                                    <td id="deviceCategory"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>รุ่นอุปกรณ์</th>
                                                                    <td id="gt"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>ระยะเวลารับประกัน</th>
                                                                    <td id="wt"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>CPU</th>
                                                                    <td id="cp"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>HardDisk</th>
                                                                    <td id="hd"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>Display</th>
                                                                    <td id="dp"></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>

                                                    </div>
                                                    <div class="col-md-6">
                                                        <table id="w1" class="table table-striped table-bordered detail-view">
                                                            <tbody>
                                                                <tr>
                                                                    <th>ผู้ใช้งานอุปกรณ์</th>
                                                                    <td width="60%" id="cID"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>ยี่ห้ออุปกรณ์</th>
                                                                    <td id="br"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>หมายเลขเครื่อง</th>
                                                                    <td id="serial"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>ราคา</th>
                                                                    <td id="pr"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>Memory</th>
                                                                    <td id="me"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>Graphics</th>
                                                                    <td id="gr"></td>
                                                                </tr>
                                                                <tr>
                                                                    <th>OS</th>
                                                                    <td id="oss"></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <table id="w2" class="table table-striped table-bordered detail-view">
                                                    <tbody>
                                                        <tr>
                                                            <th>รายละเอียดเพิ่มเติม</th>
                                                            <td width="80%" id="no"></td>
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
                <!-- Footer -->
                <footer class="footer container-fluid pl-30 pr-30">
                    <div class="row">
                        <div class="col-sm-12">
                            <p>2017 &copy; Elmer. Pampered by Hencework</p>
                        </div>
                    </div>
                </footer>
                <!-- /Footer -->
                <input id="xx" type="hidden">
            </div>
        </div>
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
                    $('#dete').text(msg.deviceDate);
                    $('#cID').text(msg.custromerId);
                    $('#deviceCategory').text(msg.deviceCategory);
                    $('#br').text(msg.brand);
                    $('#gt').text(msg.generation);
                    $('#serial').text(msg.serialnumber);
                    $('#wt').text(msg.warranty);
                    $('#pr').text(msg.price);
                    $('#no').text(msg.note);
                    $('#cp').text(msg.cpu);
                    $('#me').text(msg.memory);
                    $('#hd').text(msg.harddisk);
                    $('#gr').text(msg.graphics);
                    $('#dp').text(msg.display);
                    $('#oss').text(msg.os);

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


        function updatedevice() {
            var deviceBean = {
                deviceId: $('#deviceId').val(),
                deviceCategory: $('#repairtype').val(),
                brand: $('#brand').val(),
                generation: $('#generation').val(),
                serialnumber: $('#serialnumber').val(),
                warranty: $('#warranty').val(),
                price: $('#price').val(),
                cpu: $('#cpu').val(),
                memory: $('#memory').val(),
                harddisk: $('#harddisk').val(),
                graphics: $('#graphics').val(),
                display: $('#display').val(),
                os: $('#os').val(),
                note: $('#note').val(),
                custromerId: $('#customer').val(),
            }
            console.log(deviceBean)
            $.ajax({
                type: "POST",
                url: "/updatedevice",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(deviceBean),
                dataType: "json",
                success: function(msg) {
                    console.log(msg)
                    window.location.href = msg.page;
                },
                error: function() {
                    window.location.href = "/tabeldevice";
                }
            });
        }

        function gotoUpdate(id) {
            document.getElementById("xx").value = id;
            var testBean = {
                "a": $('#xx').val()
            };
            $('#brand').empty();
            console.log(testBean)
            $.ajax({
                type: "POST",
                url: "/Editdevice",
                data: JSON.stringify(testBean),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    console.log(msg)
                        // $('#category').append('<option value="' + msg.deviceCategory + '">' + msg.deviceCategory + '</option>');
                    $('#category').val(msg.deviceCategory);
                    // $('#brand').val(msg.brand);
                    $('#brand').append('<option value="' + msg.brand + '">' + msg.brand + '</option>');
                    $('#generation').val(msg.generation);
                    $('#serialnumber').val(msg.serialnumber);
                    $('#warranty').val(msg.warranty);
                    $('#price').val(msg.price);
                    $('#cpu').val(msg.cpu);
                    $('#memory').val(msg.memory);
                    $('#harddisk').val(msg.harddisk);
                    $('#graphics').val(msg.graphics);
                    $('#display').val(msg.display);
                    $('#os').val(msg.os);
                    $('#note').val(msg.note);
                    $('#customer').val(msg.custromerId);
                    $('#deviceDate').val(msg.deviceDate);
                }
            });
        };
        $(document).ready(function() {
            $.ajax({
                type: "GET",
                url: "/Devicecategory",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    for (var i = 0; i < msg.length; i++) {
                        $('#category').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                    }
                }
            });
            $('#category').change(function() {
                $('#brand').empty();
                var testBean = {
                    "a": $('#category').val()
                };
                $.ajax({
                    type: "POST",
                    url: "/brand",
                    data: JSON.stringify(testBean),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        $('#brand').append('<option value="">== เลือกยี่ห้ออุปกรณ์ ==</option>');
                        for (var i = 0; i < msg.length; i++) {
                            $('#brand').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                        }
                    }
                });
            });
            $.ajax({
                type: "GET",
                url: "/listcustomer",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    for (var i = 0; i < msg.length; i++) {
                        $('#customer').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');

                    }
                }
            });


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
                    "mData": "serialnumber"
                }, {
                    "mData": "deviceName"
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<p>' + "(" + full.cID + ") คุณ " + full.cName + '<br>' + full.cPhone + '</p>';
                    }
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<a onclick="gotodevice(' + full.id + ')" data-toggle="modal" data-target="#modaldevice"><img src="dist/img/if_computer.png" width="40" height="40"></a>';
                    }
                }, {
                    "mData": "",
                    "mRender": function(data, type, full) {
                        return '<a onclick="gotoUpdate(' + "'" + full.id + "'" + ')" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-edit"></span>' + '</a> ';
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