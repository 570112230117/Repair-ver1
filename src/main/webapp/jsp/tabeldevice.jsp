<%@page import="java.text.SimpleDateFormat"%>
    <%@page import="java.util.Calendar"%>
        <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <!DOCTYPE html>
            <html>

            <head>
                <jsp:include page="../layout/menu.jsp"></jsp:include>
                <!-- <title>Tabel Device</title> -->
                <% Calendar c = Calendar.getInstance();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String currentDate = df.format(c.getTime());
			%>
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
                                                            <button class="btn btn-info btn-anim btn-sm" data-toggle="modal" data-target="#adddevice"><i class="icon-rocket"></i><span class="btn-text">เพิ่มอุปกรณ์</span></button>
                                                        </div>
                                                        <br><br><br>
                                                        <table id="datable_1" class="table table-hover display  pb-30 dataTable" role="grid" aria-describedby="datable_1_info">
                                                            <!-- Header Table -->
                                                            <thead>
                                                                <tr>
                                                                    <th></th>
                                                                    <th>หมายเลขเครื่อง</th>
                                                                    <th>ชื่ออุปกรณ์</th>
                                                                    <th>ผู้ครอบครองอุปกรณ์</th>
                                                                    <th>ข้อมูลอุปกรณ์ & ประวัติการซ่อม</th>
                                                                    <th>แก้ไข</th>
                                                                </tr>
                                                            </thead>
                                                            <!-- Footer Table -->
                                                            <tfoot>
                                                                <tr>
                                                                    <th></th>
                                                                    <th>หมายเลขเครื่อง</th>
                                                                    <th>ชื่ออุปกรณ์</th>
                                                                    <th>ผู้ครอบครองอุปกรณ์</th>
                                                                    <th>ข้อมูลอุปกรณ์&ประวัติการซ่อม</th>
                                                                    <th>แก้ไข</th>
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
                        <div id="adddevice" class="modal fade" role="dialog">
                            <div class="modal-dialog" style="width: 70%">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">เพิ่มอุปกรณ์ :<small class="text-danger">*** กรุณากรอกข้อมูลรายละเอียดอุปกรณ์ หากไม่มีขีดเครื่องหมาย (-)</small></h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-6 col-xs-12">
                                                    <label class="control-label mb-10 text-left">วันที่เริ่มใช้งาน</label>
                                                    <input type="text" class="form-control" id="deviceDate" value="<%out.println(currentDate); %>" disabled>
                                                </div>
                                                <div class="span1"></div>
                                                <div class="col-md-6 col-xs-12">
                                                    <label class="control-label mb-10 text-left">ผู้ครอบครองอุปกรณ์</label>
                                                    <div class="input-group mb-15">
                                                        <select class="form-control select2 select2-hidden-accessible" id="customerdevice">
                                                            <option value="">== เลือกผู้ครอบครองอุปกรณ์ ==</option>
                                                            </select>
                                                        <span class="input-group-btn">
                                                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#ModalDevice">+</button>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-6 col-xs-12" id="error_repairtype">
                                                    <label class="control-label mb-10 text-left">หมวดหมู่อุปกรณ์:</label>
                                                    <select class="form-control" id="Devicecategory">
                                                            <option value="">== เลือกหมวดหมู่อุปกรณ์ ==</option>
                                                            </select>
                                                </div>
                                                <div class="span1"></div>
                                                <div class="col-md-6 col-xs-12" id="error_brand">
                                                    <label class="control-label mb-10 text-left">ยี่ห้ออุปกรณ์</label>
                                                    <select class="form-control" id="addbrand">
                                                <option value="">== เลือกยี่ห้ออุปกรณ์ ==</option>
                                                </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-6 col-xs-12" id="error_generation">
                                                    <label class="control-label mb-10 text-left">รุ่นอุปกรณ์</label>
                                                    <input type="text" class="form-control" id="generation" placeholder="รุ่นอุปกรณ์">
                                                </div>
                                                <div class="span1"></div>
                                                <div class="col-md-6 col-xs-12">
                                                    <label class="control-label mb-10 text-left">หมายเลขเครื่อง</label>
                                                    <input type="text" class="form-control" id="serialnumber" placeholder="หมายเลขเครื่อง">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-6 col-xs-12">
                                                    <label class="control-label mb-10 text-left">ระยะเวลารับประกัน</label>
                                                    <input type="text" class="form-control" id="warranty" placeholder="ระยะเวลารับประกัน">
                                                </div>
                                                <div class="span1"></div>
                                                <div class="col-md-6 col-xs-12">
                                                    <label class="control-label mb-10 text-left">ราคา</label>
                                                    <input type="number" class="form-control" id="price" placeholder="ราคา">
                                                </div>
                                            </div>
                                            <!-- /Row -->
                                        </div>

                                        <div class="form-group">
                                            <div id="1">
                                                <div class="col-md-6 col-xs-12" id="CPU">
                                                </div>
                                                <div class="span1"></div>
                                                <div class="col-md-6 col-xs-12" id="Memory">
                                                </div>
                                            </div>
                                            <!-- /Row -->
                                        </div>
                                        <div class="form-group">
                                            <div id="2">
                                                <div class="col-md-6 col-xs-12" id="HardDisk">
                                                </div>
                                                <div class="span1"></div>
                                                <div class="col-md-6 col-xs-12" id="Graphics">
                                                </div>
                                            </div>
                                            <!-- /Row -->
                                        </div>
                                        <div class="form-group">
                                            <div id="3">
                                                <div class="col-md-6 col-xs-12" id="Display">
                                                </div>
                                                <div class="span1"></div>
                                                <div class="col-md-6 col-xs-12" id="OS">
                                                </div>
                                            </div>
                                            <!-- /Row -->
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label mb-10 text-left">รายละเอียดเพิ่มเติม</label>
                                            <textarea class="form-control" rows="4" id="note"></textarea>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary" onclick="insertdevice()">บันทึก</button>
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
                                        <h4 class="modal-title">แก้ไขอุปกรณ์</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-wrap ">
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-md-6 col-xs-12">
                                                        <label class="control-label mb-10 text-left">วันที่เริ่มใช้งาน</label>
                                                        <input type="text" class="form-control" id="deviceDatelist" disabled>
                                                    </div>
                                                    <div class="span1"></div>
                                                    <div class="col-md-6 col-xs-12">
                                                        <label class="control-label mb-10 text-left">ผู้ครอบครองอุปกรณ์</label>
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
                                                        <input type="text" class="form-control" id="generationlist" placeholder="">
                                                    </div>
                                                    <div class="span1"></div>
                                                    <div class="col-md-6 col-xs-12">
                                                        <label class="control-label mb-10 text-left">หมายเลขซีเรียล</label>
                                                        <input type="text" class="form-control" id="serialnumberlist" placeholder="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-md-6 col-xs-12">
                                                        <label class="control-label mb-10 text-left">ระยะเวลารับประกัน</label>
                                                        <input type="text" class="form-control" id="warrantylist" placeholder="">
                                                    </div>
                                                    <div class="span1"></div>
                                                    <div class="col-md-6 col-xs-12">
                                                        <label class="control-label mb-10 text-left">ราคา</label>
                                                        <input type="number" class="form-control" id="pricelist" placeholder="">
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
                                                <label class="control-label mb-10 text-left">รายละเอียดเพิ่มเติม</label>
                                                <textarea class="form-control" rows="4" id="notelist"></textarea>
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
                        <div id="ModalDevice" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">เพิ่มลูกค้า</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" id="id">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label mb-10">ชื่อลูกค้า:</label>
                                            <input type="text" class="form-control" id="name" placeholder="ชื่อผู้แจ้ง">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label mb-10">ที่อยู่:</label>
                                            <textarea class="form-control" rows="5" id="address"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label mb-10">เบอร์โทร:</label>
                                            <input type="text" placeholder="" data-mask="(999) 999-9999" class="form-control" id="phone">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary" onclick="insertcustomer()">บันทึก</button>
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
                                                                            <th>ผู้ครอบครองอุปกรณ์</th>
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
                        <input id="idlist" type="hidden">
                    </div>
                </div>
            </body>
            <script>
                function insertcustomer() {
                    var customerBean = {
                        name: $('#name').val(),
                        address: $('#address').val(),
                        phone: $('#phone').val(),
                    }
                    console.log(customerBean)
                    $.ajax({
                        type: "POST",
                        url: "/insertcutromer",
                        contentType: "application/json; charset=utf-8",
                        data: JSON.stringify(customerBean),
                        dataType: "json",
                        success: function(msg) {
                            console.log("success")
                            window.location.reload();
                        },
                        error: function() {
                            console.log("error")
                            $('#Modal').modal('hide')
                            window.location.reload();
                        }
                    });
                };

                function insertdevice() {
                    var deviceBean = {
                        deviceCategory: $('#Devicecategory').val(),
                        brand: $('#addbrand').val(),
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
                        custromerId: $('#customerdevice').val(),
                        deviceDate: $('#deviceDate').val(),
                    }
                    console.log(deviceBean)
                    $.ajax({
                        type: "POST",
                        url: "/insertdevice",
                        contentType: "application/json; charset=utf-8",
                        data: JSON.stringify(deviceBean),
                        dataType: "json",
                        success: function(msg) {
                            console.log(msg)
                            window.location.reload();
                        },
                        error: function() {
                            $('#modaldevice').modal('hide')
                            window.location.reload();
                        }
                    });
                };

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
                            $('#cID').text("(" + msg.custromerId + ") คุณ " + msg.custromerName);
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
                        id: $('#idlist').val(),
                        deviceCategory: $('#category').val(),
                        brand: $('#brand').val(),
                        generation: $('#generationlist').val(),
                        serialnumber: $('#serialnumberlist').val(),
                        warranty: $('#warrantylist').val(),
                        price: $('#pricelist').val(),
                        cpu: $('#cpu').val(),
                        memory: $('#memory').val(),
                        harddisk: $('#harddisk').val(),
                        graphics: $('#graphics').val(),
                        display: $('#display').val(),
                        os: $('#os').val(),
                        note: $('#notelist').val(),
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
                            $('#idlist').val(msg.id);
                            // $('#category').append('<option value="' + msg.deviceCategory + '">' + msg.deviceCategory + '</option>');
                            $('#category').val(msg.deviceCategory);
                            // $('#brand').val(msg.brand);
                            $('#brand').append('<option value="' + msg.brand + '">' + msg.brand + '</option>');
                            $('#generationlist').val(msg.generation);
                            $('#serialnumberlist').val(msg.serialnumber);
                            $('#warrantylist').val(msg.warranty);
                            $('#pricelist').val(msg.price);
                            $('#cpu').val(msg.cpu);
                            $('#memory').val(msg.memory);
                            $('#harddisk').val(msg.harddisk);
                            $('#graphics').val(msg.graphics);
                            $('#display').val(msg.display);
                            $('#os').val(msg.os);
                            $('#notelist').val(msg.note);
                            $('#customer').val(msg.custromerId);
                            $('#deviceDatelist').val(msg.deviceDate);
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
                                $('#Devicecategory').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
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
                                    $('#addbrand').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                                }
                            }
                        });
                    });
                    $('#Devicecategory').change(function() {
                        $('#addbrand').empty();
                        var testBean = {
                            "a": $('#Devicecategory').val()
                        };
                        $.ajax({
                            type: "POST",
                            url: "/brand",
                            data: JSON.stringify(testBean),
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function(msg) {
                                $('#addbrand').append('<option value="">== เลือกยี่ห้ออุปกรณ์ ==</option>');
                                for (var i = 0; i < msg.length; i++) {

                                    $('#addbrand').append('<option value="' + msg[i].name + '">' + msg[i].name + '</option>');
                                }
                            }
                        });
                    });
                    $('#Devicecategory').change(function() {
                        $('#CPU').empty();
                        $('#Memory').empty();
                        $('#HardDisk').empty();
                        $('#Graphics').empty();
                        $('#Display').empty();
                        $('#OS').empty();

                        if ('NOTEBOOK' == $('#Devicecategory').val()) {
                            $('#1').addClass("row");
                            $('#2').addClass("row");
                            $('#3').addClass("row");
                            $('#CPU').append('<label class="control-label mb-10 text-left ">CPU</label><input type="text" class="form-control" placeholder="CPU" id="cpu">');
                            $('#Memory').append('<label class="control-label mb-10 text-left">Memory</label><input type="text" class="form-control" placeholder="Memory" id="memory">');
                            $('#HardDisk').append('<label class="control-label mb-10 text-left">HardDisk</label><input type="text" class="form-control"  placeholder="HardDisk" id="harddisk">');
                            $('#Graphics').append('<label class="control-label mb-10 text-left">Graphics</label><input type="text " class="form-control" placeholder="Graphics" id="graphics">');
                            $('#Display').append('<label class="control-label mb-10 text-left">Display</label><input type="text " class="form-control" placeholder="Display" id="display">');
                            $('#OS').append('<label class="control-label mb-10 text-left">OS</label><input type="text" class="form-control" placeholder="OS" id="os">');

                        } else if ('COMPUTER' == $('#Devicecategory').val()) {
                            $('#1').addClass("row");
                            $('#2').addClass("row");
                            $('#3').addClass("row");
                            $('#CPU').append('<label class="control-label mb-10 text-left ">CPU</label><input type="text" class="form-control" placeholder="CPU" id="cpu">');
                            $('#Memory').append('<label class="control-label mb-10 text-left">Memory</label><input type="text" class="form-control" placeholder="Memory" id="memory">');
                            $('#HardDisk').append('<label class="control-label mb-10 text-left">HardDisk</label><input type="text" class="form-control"  placeholder="HardDisk" id="harddisk">');
                            $('#Graphics').append('<label class="control-label mb-10 text-left">Graphics</label><input type="text " class="form-control" placeholder="Graphics" id="graphics">');
                            $('#Display').append('<label class="control-label mb-10 text-left">Display</label><input type="text " class="form-control" placeholder="Display" id="display">');
                            $('#OS').append('<label class="control-label mb-10 text-left">OS</label><input type="text" class="form-control" placeholder="OS" id="os">');

                        } else {
                            $('#1').removeClass("row");
                            $('#2').removeClass("row");
                            $('#3').removeClass("row");
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/listcustomer",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            for (var i = 0; i < msg.length; i++) {
                                $('#customer').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                $('#customerdevice').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                            }
                        }
                    });
                    var table = $('#datable_1').DataTable({
                        "sAjaxSource": "/devicelist",
                        "sAjaxDataProp": "",
                        "order": [
                            [0, "asc"]
                        ],
                        "aoColumns": [{
                            "mData": "",
                            "mRender": function(data, type, full) {
                                return '<input type="hidden"  value="' + full.id + '">';
                            }
                        }, {
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
                                return '<center><a onclick="gotodevice(' + full.id + ')" data-toggle="modal" data-target="#modaldevice"><img src="dist/img/if_computer.png" width="40" height="40"></a></center>';
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

            <!-- Bootstrap Core JavaScript -->
            <script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

            </html>