<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.text.SimpleDateFormat" %>
        <%@ page import="java.util.Calendar" %>
            <!DOCTYPE html>
            <html>

            <head>
                <jsp:include page="../layout/menuuser.jsp"></jsp:include>
                <title>Forms</title>
            </head>

            <body>
                <!-- Main Content -->
                <div class="page-wrapper">
                    <div class="container-fluid pt-25">
                        <div class="col-md-3 col-sm-12 col-xs-12 form-group">

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
                                                <input type="text" class="form-control" id="" disabled value="<% Calendar c = Calendar.getInstance();
                                                    SimpleDateFormat df = new SimpleDateFormat(" yyyy-MM-dd HH:mm:ss ");
                                                    String currentDate = df.format(c.getTime());
                                                    out.println(currentDate); %>">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label mb-10">ชื่อผู้แจ้ง:</label>
                                                <input type="text" class="form-control" id="" placeholder="ชื่อผู้แจ้ง">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label mb-10 text-left">ที่อยู่:</label>
                                                <textarea class="form-control" rows="5"></textarea>
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
                                                <label class="control-label mb-10 text-left">ปัญหา:</label>
                                                <select class="form-control">
                                                                        <option>== กรุณาเลือก ==</option>
                                                                        <option>ลงวินโดว์</option>
                                                                        <option>น๊อตหลุด</option>
                                                                        <option>harddisk read error</option>                                                                                    
                                                                        <option>เปิดโปรแกรม Excel ไม่ได้</option>
                                                                        <option>เปิดไม่ติด</option>
                                                                        <option>ทดสอบ</option>
                                                                        <option>อื่นๆ</option>                                                                       
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
                            <div class="text-center">
                                <button type="submit" class="btn btn-success mr-10">Submit</button>
                                <button type="submit" class="btn btn-default">Cancel</button>
                            </div>
                        </div>


                        <div class="col-md-3 col-sm-12 col-xs-12 form-group">

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
                <!-- JavaScript -->
                <!-- Bootstrap Core JavaScript -->
                <script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

                <script>
                    $(document).ready(function() {
                        $.ajax({
                            type: "GET",
                            url: "/repairtype",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function(msg) {
                                for (var i = 0; i < msg.length; i++) {
                                    $('#repairtype').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                }
                            }
                        });
                    });
                </script>
            </body>

            </html>