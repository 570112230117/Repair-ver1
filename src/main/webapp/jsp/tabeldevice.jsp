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
                                                            <th>รหัสอุปกรณ์</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>หมายเลขซีเรียล</th>
                                                            <th>ผู้ใช้งานอุปกรณ์</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <!-- Footer Table -->
                                                    <tfoot>
                                                        <tr>
                                                            <th>รหัสอุปกรณ์</th>
                                                            <th>ชื่ออุปกรณ์</th>
                                                            <th>หมายเลขซีเรียล</th>
                                                            <th>ผู้ใช้งานอุปกรณ์</th>
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
                                                <label class="control-label mb-10 text-left">รหัสอุปกรณ์</label>
                                                <input type="text " class="form-control " id="deviceId" placeholder=" " disabled>
                                            </div>

                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12" id="error_repairtype">
                                                <label class="control-label mb-10 text-left">หมวดหมู่อุปกรณ์:</label>
                                                <select class="form-control" id="repairtype">
                                                            <option value="">== เลือกหมวดหมู่อุปกรณ์ ==</option>
                                                            </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">ยี่ห้ออุปกรณ์</label>
                                                <select class="form-control" id="brand">
                                                                  
                                                                    </select>
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">รุ่นอุปกรณ์</label>
                                                <input type="text" class="form-control" id="generation" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">หมายเลขซีเรียล</label>
                                                <input type="text" class="form-control" id="serialnumber" placeholder="">
                                            </div>
                                            <div class="span1"></div>
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">ระยะเวลารับประกัน</label>
                                                <input type="text" class="form-control" id="warranty" placeholder="">
                                            </div>
                                        </div>
                                        <!-- /Row -->
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                <label class="control-label mb-10 text-left">ราคา</label>
                                                <input type="number" class="form-control" id="price" placeholder="">
                                            </div>
                                            <div class="span1"></div>
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
                    console.log('ทำงานแล้ว')
                    $('#deviceId').val(msg.deviceId);
                    $('#repairtype').val(msg.deviceCategory);
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
                url: "/repairtype",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    for (var i = 0; i < msg.length; i++) {
                        $('#repairtype').append('<option value="' + msg[i].initials + '">' + msg[i].name + '</option>');
                    }
                }
            });
            $('#repairtype').change(function() {
                $('#brand').empty();
                var testBean = {
                    "a": $('#repairtype').val()
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
                    "mData": "id"
                }, {
                    "mData": "device"
                }, {
                    "mData": "serialnumber"
                }, {
                    "mData": "customer"
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