<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html >
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>แก้ไขอุปกรณ์</title>
        <link href="vendors/bower_components/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="dist/css/style.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper" style="min-height: 980px;">
            <div class="container-fluid pt-25">
                <div class="row heading-bg">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h5 class="txt-dark">ทะเบียนอุปกรณ์</h5>
                    </div>
                    <!-- Breadcrumb -->
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="/tabeldevice">ตารางทะเบียนอุปกรณ์</a></li>
                            <li class="active"><span>ทะเบียนอุปกรณ์</span></li>
                        </ol>
                    </div>
                    <!-- /Breadcrumb -->
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">รายละเอียดอุปกรณ์ : <small class="text-danger">*** กรุณากรอกข้อมูลรายละเอียดอุปกรณ์ หากไม่มีขีดเครื่องหมาย (-)</small></h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12">
                                            <div class="form-wrap ">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10 text-left">วันที่เริ่มใช้งาน</label>
                                                            <input type="text" class="form-control" id="deviceDate" placeholder="วันที่เริ่มใช้งาน" disabled>
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10 text-left">ผู้ใช้งานอุปกรณ์</label>
                                                            <select class="form-control select2 select2-hidden-accessible " id="customer">
                                                                        <option value="">== เลือกผู้แจ้ง ==</option>
                                                                     </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10 text-left">รหัสอุปกรณ์</label>
                                                            <input type="text " class="form-control " id="deviceId" placeholder="รหัสอุปกรณ์ ">
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
                                                                        <option value="">== เลือกยี่ห้ออุปกรณ์ ==</option>
                                                                        </select>
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10 text-left">รุ่นอุปกรณ์</label>
                                                            <input type="text" class="form-control" id="generation" placeholder="รุ่นอุปกรณ์">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10 text-left">หมายเลขซีเรียล</label>
                                                            <input type="text" class="form-control" id="serialnumber" placeholder="หมายเลขซีเรียล">
                                                        </div>
                                                        <div class="span1"></div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10 text-left">ระยะเวลารับประกัน</label>
                                                            <input type="text" class="form-control" id="warranty" placeholder="ระยะเวลารับประกัน">
                                                        </div>
                                                    </div>
                                                    <!-- /Row -->
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-12">
                                                            <label class="control-label mb-10 text-left">ราคา</label>
                                                            <input type="number" class="form-control" id="price" placeholder="ราคา">
                                                        </div>
                                                        <div class="span1"></div>
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
                                                    <label class="control-label mb-10 text-left">หมายเหตุ</label>
                                                    <textarea class="form-control" rows="4" id="note"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-success mr-10" onclick="insertdevice()">ยืนยัน</button>
                    <button type="submit" class="btn btn-default">ยกเลิก</button>
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
            <!-- /Main Content -->
        </div>
    </body>

    </html>