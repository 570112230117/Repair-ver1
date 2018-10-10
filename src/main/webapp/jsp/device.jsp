<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html >
    <html>

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <title>Device</title>
    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper">
            <div class="container-fluid pt-25">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">ข้อมูลอุปกรณ์</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12">
                                            <div class="form-wrap">
                                                <form action="#">
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">รหัสอุปกรณ์</label>
                                                                <input type="text" class="form-control" placeholder="NB1800001">
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">หมวดหมู่อุปกรณ์:</label>
                                                                <select class="form-control">
                                                                            <option value="">== กรุณาเลือก ==</option>
                                                                            <option value="2">COMPUTER (PC)</option>
                                                                            <option value="4">COMPUTER (AIO)</option>
                                                                            <option value="5">NOTEBOOK</option>
                                                                            <option value="6">MONITOR</option>
                                                                            <option value="7">UPS</option>
                                                                            <option value="8">PRINTER</option>
                                                                            <option value="9">FINGER SCANNER</option>
                                                                            <option value="10">PROJECTER</option>
                                                                            <option value="11">IPAD</option>
                                                                            <option value="13">COMPUTER (SERVER)</option>
                                                                            <option value="14">OTHER</option>
                                                                            <option value="15">FAX</option>
                                                                            <option value="16">External Harddisk</option>
                                                                            <option value="17">VGA</option>
                                                                            <option value="18">TEST</option>
                                                                          </select>
                                                            </div>
                                                        </div>
                                                        <!-- /Row -->
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">ชื่ออุปกรณ์</label>
                                                                <input type="text" class="form-control" placeholder="ASUS VIVOBOOK S510UQ-BQ282T (GOLD) (S510UQ-BQ282T)">
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">ผู้ใช้งานอุปกรณ์</label>
                                                                <input type="text" class="form-control" placeholder="ผู้ใช้งานอุปกรณ์">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">หมายเลขซีเรียล</label>
                                                                <input type="text" class="form-control" placeholder="43857-0259">
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">หน่วยงาน / แผนก</label>
                                                                <input type="text" class="form-control" placeholder="หน่วยงาน / แผนก">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">ราคา</label>
                                                                <input type="text" class="form-control" placeholder="12990">
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">วันที่เริ่มใช้งาน</label>
                                                                <input type="date" class="form-control" placeholder="วันที่เริ่มใช้งาน">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="control-label mb-10 text-left">หมายเหตุ</label>
                                                        <textarea class="form-control" rows="5"></textarea>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">รายละเอียด Hardware</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12">
                                            <div class="form-wrap">
                                                <form action="#">
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">ยี่ห้ออุปกรณ์</label>
                                                                <input type="text" class="form-control" placeholder="ASUS">
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">ซีพียู</label>
                                                                <input type="text" class="form-control" placeholder="INTEL PENTIUM N4200">
                                                            </div>
                                                        </div>
                                                        <!-- /Row -->
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">รุ่นอุปกรณ์</label>
                                                                <input type="text" class="form-control" placeholder="VIVOBOOK">
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">หน่วยความจำ (แรม)</label>
                                                                <input type="text" class="form-control" placeholder="4 GB">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">หน้าจอ</label>
                                                                <input type="text" class="form-control" placeholder="15.6 FHD VGA">
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">ฮาร์ดดิสก์</label>
                                                                <input type="text" class="form-control" placeholder="1 TB">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">เม้าส์</label>
                                                                <input type="text" class="form-control" placeholder="LOGITECH LG-G900">
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">คีย์บอร์ด</label>
                                                                <input type="text" class="form-control" placeholder="LOGITECH G213 PRODIGY">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">ตัวแทนจำหน่าย/ผู้ขาย</label>
                                                                <input type="text" class="form-control" placeholder="บริษัท คอมเซเว่น จำกัด">
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">การรับประกัน</label>
                                                                <input type="text" class="form-control" placeholder="2Y">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">เลข IP</label>
                                                                <input type="text" class="form-control" placeholder="192.168.2.12">
                                                            </div>
                                                            <div class="span1"></div>
                                                            <div class="col-md-6 col-xs-12">
                                                                <label class="control-label mb-10 text-left">Mac Address</label>
                                                                <input type="text" class="form-control" placeholder="D6-EA-E5-6F-BC-58">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label mb-10 text-left">รายละเอียดเพิ่มเติม</label>
                                                        <textarea class="form-control" rows="5"></textarea>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">รายละเอียด Software</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12">
                                            <div class="form-wrap">
                                                <form action="#">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default card-view">
                                                                <div class="panel-heading">
                                                                    <div class="pull-left">
                                                                        <h6 class="panel-title txt-dark">Windows</h6>
                                                                    </div>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                                <div class="panel-wrapper collapse in">
                                                                    <div class="panel-body">
                                                                        <div class="row">
                                                                            <div class="col-sm-12">
                                                                                <div class="checkbox checkbox-primary">
                                                                                    <input id="" type="checkbox">
                                                                                    <label> Windows 10 Home 64 bit Eng (OEM)</label>
                                                                                </div>
                                                                                <div class="checkbox checkbox-primary">
                                                                                    <input id="" type="checkbox">
                                                                                    <label> Windows 10 PRO 64 bit Eng (OEM)</label>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default card-view">
                                                                <div class="panel-heading">
                                                                    <div class="pull-left">
                                                                        <h6 class="panel-title txt-dark">Microsoft Office</h6>
                                                                    </div>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                                <div class="panel-wrapper collapse in">
                                                                    <div class="panel-body">
                                                                        <div class="row">
                                                                            <div class="col-sm-12">
                                                                                <div class="checkbox checkbox-primary">
                                                                                    <input id="" type="checkbox">
                                                                                    <label> Microsoft office Home and Student v2007</label>
                                                                                </div>
                                                                                <div class="checkbox checkbox-primary">
                                                                                    <input id="" type="checkbox">
                                                                                    <label> Microsoft office Personal 2016 (ต่อปี)</label>
                                                                                </div>
                                                                                <div class="checkbox checkbox-primary">
                                                                                    <input id="" type="checkbox">
                                                                                    <label> Microsoft office Home 2016 (ต่อปี)</label>
                                                                                </div>
                                                                                <div class="checkbox checkbox-primary">
                                                                                    <input id="" type="checkbox">
                                                                                    <label> Microsoft office Home&Business 2016</label>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-success mr-10">Submit</button>
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
            <!-- /Main Content -->
        </div>
        <!-- /#wrapper -->

    </body>

    </html>