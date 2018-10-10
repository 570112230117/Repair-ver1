<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html >
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <title>Welcome To Repair</title>
    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper">
            <div class="container-fluid pt-25">
                <div class="col-sm-12">
                    <div class="form-group">
                        <h4>แก้ไขข้อมูลการซ่อม เลขที่ NB18xxxxx</h4>
                    </div>
                </div>

                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                    <div class="panel panel-default card-view">
                        <div class="panel-heading">
                            <div class="pull-left">
                                <h6 class="panel-title txt-dark">ข้อมูลผู้แจ้ง</h6>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div class="form-wrap">
                                    <div class="form-group">
                                        <label class="control-label mb-10">วันที่แจ้ง:</label>
                                        <input type="text" class="form-control" id="" disabled value="">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ชื่อผู้แจ้ง:</label>
                                        <input type="text" class="form-control" id="" placeholder="ชื่อผู้แจ้ง">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">เบอร์ที่สามารถติดต่อได้:</label>
                                        <input type="text" placeholder="" data-mask="(999) 999-9999" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default card-view">
                        <div class="panel-heading">
                            <div class="pull-left">
                                <h6 class="panel-title txt-dark">ข้อมูลปัญหา</h6>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div class="form-wrap">
                                    <div class="form-group ">
                                        <label class="control-label mb-10 text-left">ประเภทงานซ่อม:</label>
                                        <select class="form-control" id="repairtype">
                                                                <option>== กรุณาเลือก ==</option>
                                                                
                                                            </select>
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label mb-10 text-left">ชื่ออุปกรณ์:</label>
                                        <select class="form-control" id="a">
                                                                <option>== กรุณาเลือก ==</option> 
                                                                <option>ไม่มี</option>
                                                                <option>HU2E98FCSB0F9PX - N/B SAMSUNG รุ่น NP350U4X-908TH</option>
                                                                <option>HRDB54331M - ปริ้นเตอร์ CANON รุ่น IP2770/HRDB54331M</option>
                                                                <option>EKCH014356 - ปริ้นเตอร์ EPSON รุ่น LQ-630/EKCH014356</option>
                                                                <option>E75675D7N430420 - ปริ้นเตอร์ BROTHER รุ่น MFC-L6900DW/E75675D7N430420</option>
                                                                <option>LXTVR0C01012100d7B20 - โน๊ตบุ๊ค ACER รุ่น 4740G-382G</option>                                                                                                                     
                                            </select>
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label mb-10 text-left">ปัญหา:</label>
                                        <select class="form-control" id="problem">      
                                                    <option>== กรุณาเลือก ==</option>                                                                                                                                                                                                    
                                                                    </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10 text-left">อื่นๆ:</label>
                                        <textarea class="form-control" rows="5"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                    <div class="panel panel-default card-view">
                        <div class="panel-heading">
                            <div class="pull-left">
                                <h6 class="panel-title txt-dark">ผู้ดำเนินการ </h6>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div class="form-wrap">
                                    <div class="form-group">
                                        <label class="control-label mb-10">วันที่ซ่อม:</label>
                                        <input type="date" class="form-control" id="">
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label mb-10">ผู้ดำเนินการ:</label>
                                        <input type="text" class="form-control" placeholder="นาย xxx" id="" disabled>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default card-view">
                        <div class="panel-heading">
                            <div class="pull-left">
                                <h6 class="panel-title txt-dark">ผลการแก้ไข </h6>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div class="form-wrap">
                                    <div class="form-group">
                                        <label class="control-label mb-10">วันที่เสร็จ:</label>
                                        <input type="date" class="form-control" id="">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10 text-left">สาเหตุ / วิธีแก้ไข:</label>
                                        <textarea class="form-control" rows="5"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label mb-10">ค่าใช้จ่าย:</label>
                                        <input type="text" class="form-control" id="" placeholder="0">
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label mb-10 text-left">สถานะ:</label>
                                        <select class="form-control" id="repairstatus">
                                                    <option>== กรุณาเลือก ==</option>
                                                                                                                                                      
                                                </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-success mr-10" onclick="insertConfirm()">Submit</button>
                    <button type="submit" class="btn btn-default">Cancel</button>
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
                $.ajax({
                    type: "GET",
                    url: "/repairstatus",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        for (var i = 0; i < msg.length; i++) {
                            $('#repairstatus').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                        }
                    }
                });
            });
        </script>
    </body>

    </html>