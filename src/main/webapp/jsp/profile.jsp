<%@page import="com.bru.model.MemberBean"%>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <jsp:include page="../layout/menu.jsp"></jsp:include>
            <title>Profile</title>
            <!-- Bootstrap Dropify CSS -->
            <link href="vendors/bower_components/dropify/dist/css/dropify.min.css" rel="stylesheet" type="text/css" />
            <%
MemberBean bean = null;
bean = (MemberBean) request.getSession().getAttribute("login");
%>

        </head>

        <body>
            <div class="page-wrapper" style="min-height: 980px;">
                <div class="container-fluid pt-25">
                    <!-- ซ้าย -->
                    <div class="col-md-4 col-sm-12 col-xs-12 form-group">

                    </div>
                    <!-- กลาง -->
                    <div class="col-md-4 col-sm-12 col-xs-12 form-group">
                        <div class="panel panel-default card-view  pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body  pa-0">
                                    <div class="profile-box">
                                        <div class="profile-cover-pic">
                                            <div class="fileupload btn btn-default">
                                                <span class="btn-text">edit</span>
                                                <input class="upload" type="file">
                                            </div>
                                            <div class="profile-image-overlay"></div>
                                        </div>
                                        <div class="profile-info text-center">
                                            <div class="profile-img-wrap">
                                                <img class="inline-block mb-10" src="dist/img/mock1.jpg" alt="user">
                                                <div class="fileupload btn btn-default">
                                                    <span class="btn-text">edit</span>
                                                    <input class="upload" type="file">
                                                </div>
                                            </div>
                                            <h5 class="block mt-10 mb-5 weight-500 capitalize-font txt-primary">
                                                <label id="n"></label>
                                            </h5>
                                            <h6 class="block capitalize-font pb-20">ตำแหน่ง :
                                                <label id="r"></label>
                                            </h6>
                                        </div>
                                        <div class="social-info">
                                            <button class="btn btn-primary btn-block  btn-anim mt-30" data-toggle="modal" data-target="#myModal"><i class="fa fa-pencil"></i><span class="btn-text">แก้ไขโปรไฟล์</span></button>
                                            <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                            <h5 class="modal-title" id="myModalLabel">แก้ไขโปรไฟล์</h5>
                                                        </div>
                                                        <form action="/updateprofile" id="updateprofile" name="updateprofile" method="GET">
                                                            <div class="modal-body">
                                                                <!-- Row -->
                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        <div class="">
                                                                            <div class="panel-wrapper collapse in">
                                                                                <div class="panel-body pa-0">
                                                                                    <div class="col-sm-12 col-xs-12">
                                                                                        <div class="form-wrap">

                                                                                            <div class="form-body overflow-hide">
                                                                                                <input type="hidden" id="id" name="id">
                                                                                                <div class="form-group">
                                                                                                    <label class="control-label mb-10">ชื่อ - สกุล</label>
                                                                                                    <div class="input-group">
                                                                                                        <div class="input-group-addon"><i class="icon-user"></i></div>
                                                                                                        <input type="text" class="form-control" id="name" name="name">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <label class="control-label mb-10" for="exampleInputEmail_1">ที่อยู่</label>
                                                                                                    <div class="input-group">
                                                                                                        <div class="input-group-addon"><i class="icon-home"></i></div>
                                                                                                        <textarea class="form-control" rows="3" placeholder="ที่อยู่" id="address" name="address"></textarea>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <label class="control-label mb-10">โทรศัพท์</label>
                                                                                                    <div class="input-group">
                                                                                                        <div class="input-group-addon"><i class="icon-phone"></i></div>
                                                                                                        <input type="text" class="form-control" data-mask="(999) 999-9999" id="phone" name="phone">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <label class="control-label mb-10">เพศ</label>
                                                                                                    <div>
                                                                                                        <div class="radio">
                                                                                                            <input type="radio" name="gender" id="r1" value="ชาย">
                                                                                                            <label for="radio_1">
                                                                                                                    ชาย
                                                                                                                    </label>
                                                                                                        </div>
                                                                                                        <div class="radio">
                                                                                                            <input type="radio" name="gender" id="r2" value="หญิง">
                                                                                                            <label for="radio_2">
                                                                                                                    หญิง
                                                                                                                    </label>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <label class="control-label mb-10" for="exampleInputEmail_1">Email</label>
                                                                                                    <div class="input-group">
                                                                                                        <div class="input-group-addon"><i class="icon-envelope-open"></i></div>
                                                                                                        <input type="email" class="form-control" id="email" name="email">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <label class="control-label mb-10" for="exampleInputpwd_1">Password</label>
                                                                                                    <div class="input-group">
                                                                                                        <div class="input-group-addon"><i class="icon-lock"></i></div>
                                                                                                        <input type="text" class="form-control" id="password" name="password">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <label class="control-label mb-10">ตำแหน่ง:</label>
                                                                                                    <div class="input-group">
                                                                                                        <div class="input-group-addon"><i class="icon-layers"></i></div>
                                                                                                        <select class="form-control" id="role" name="role">                                                                                                             
                                                                                                                    <option value="">== กรุณาเลือกตำแหน่ง ==</option>
                                                                                                                    <option value="พนักงาน">พนักงาน</option>
                                                                                                                    <option value="ช่างซ่อม">ช่างซ่อม</option>
                                                                                                                    <option value="admin">admin</option>
                                                                                                                </select>
                                                                                                    </div>

                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <label class="control-label mb-10">วันที่เข้างาน:</label>
                                                                                                    <div class="input-group">
                                                                                                        <div class="input-group-addon"><i class="icon-calender"></i></div>
                                                                                                        <input type="date" class="form-control" id="joiningDate" name="joiningDate">
                                                                                                    </div>

                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                    <label class="control-label mb-10">การใช้งาน:</label>
                                                                                                    <div>
                                                                                                        <div class="radio">
                                                                                                            <input type="radio" name="status" id="r3" value="ใช้งาน">
                                                                                                            <label for="radio_3">
                                                                                                                    ใช้งาน
                                                                                                                </label>
                                                                                                        </div>
                                                                                                        <div class="radio">
                                                                                                            <input type="radio" name="status" id="r4" value="เลิกใช้งาน">
                                                                                                            <label for="radio_4">
                                                                                                                    เลิกใช้งาน
                                                                                                                </label>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="submit" class="btn btn-success waves-effect">บันทึก</button>
                                                                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">ยกเลิก</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ขวา -->
                    <div class="col-md-4 col-sm-12 col-xs-12 form-group">

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

        </body>


        <!-- JavaScripts -->
        <script>
            $(document).ready(function() {

                $.ajax({
                    type: "GET",
                    url: "/profileid",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(msg) {
                        console.log('ทำงานแล้ว')
                        $('#id').val(msg.id);
                        $('#email').val(msg.email);
                        $('#password').val(msg.password);
                        $('#name').val(msg.name);
                        $('#n').append(msg.name);
                        $('#phone').val(msg.phone);
                        $('#address').val(msg.address);
                        $('#role').val(msg.role);
                        $('#r').append(msg.role);
                        $('#joiningDate').val(msg.joiningDate);
                        if (msg.gender == "ชาย") {
                            document.getElementById('r1').checked = true;
                        } else if (msg.gender == "หญิง") {
                            document.getElementById('r2').checked = true;
                        }
                        if (msg.status == "ใช้งาน") {
                            document.getElementById('r3').checked = true;
                        } else if (msg.status == "เลิกใช้งาน") {
                            document.getElementById('r4').checked = true;
                        }
                    }
                });
            });
        </script>
        <!-- Bootstrap Core JavaScript -->
        <script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

        <!-- Bootstrap Daterangepicker JavaScript -->
        <script src="vendors/bower_components/dropify/dist/js/dropify.min.js"></script>

        <!-- Form Flie Upload Data JavaScript -->
        <script src="dist/js/form-file-upload-data.js"></script>

        <!-- Slimscroll JavaScript -->
        <!-- <script src="dist/js/jquery.slimscroll.js"></script> -->

        <!-- Fancy Dropdown JS -->
        <!-- <script src="dist/js/dropdown-bootstrap-extended.js"></script> -->

        <!-- Owl JavaScript -->
        <!-- <script src="vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script> -->

        <!-- Switchery JavaScript -->
        <!-- <script src="vendors/bower_components/switchery/dist/switchery.min.js"></script> -->


        </html>