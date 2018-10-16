<%@page import="com.bru.model.AmnuayBean"%>
    <%@page import="com.bru.model.RepairBean"%>
        <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <!DOCTYPE html>
            <html>

            <head>
                <jsp:include page="../layout/menu.jsp"></jsp:include>
                <meta http-equiv="Content-Type" content=text/html; charset=UTF-8>
                <title>Repair_edit</title>

                <% AmnuayBean bean = null;
        bean = (AmnuayBean) request.getAttribute("repairbean");
        %>
            </head>

            <body>
                <div class="page-wrapper" style="min-height: 1000px;">
                    <div class="container-fluid">
                        <div class="row heading-bg">
                            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                                <h5 class="txt-dark">แก้ไขข้อมูลการซ่อม เลขที่
                                    <%=bean.getId() %>
                                </h5>
                            </div>
                            <!-- Breadcrumb -->
                            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                                <ol class="breadcrumb">
                                    <li><a>ตารางการแจ้งซ่อม</a></li>
                                    <li class="active"><span>แก้ไขข้อมูลการซ่อม</span></li>
                                </ol>
                            </div>
                            <!-- /Breadcrumb -->
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default card-view">
                                    <div class="panel-heading">
                                        <div class="pull-left">
                                            <h6 class="panel-title txt-dark">ข้อมูลผู้แจ้ง</h6>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="panel-wrapper collapse in">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-wrap">
                                                        <form class="form-horizontal" role="form">
                                                            <div class="form-body">
                                                                <div class="row">
                                                                    <div class="col-md-4">

                                                                    </div>
                                                                    <!--/span-->
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <h5>
                                                                                <%=bean.getType() %>
                                                                            </h5>
                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->

                                                                    <div class="col-md-4">

                                                                    </div>
                                                                    <!--/span-->
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label col-md-3">ลูกค้า:</label>
                                                                            <div class="col-md-9">
                                                                                <p class="form-control-static">
                                                                                    <%=bean.getCustomer() %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label col-md-3">เลขที่ใบรับซ่อม:</label>
                                                                            <div class="col-md-9">
                                                                                <p class="form-control-static">
                                                                                    <%=bean.getId() %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->
                                                                </div>
                                                                <!-- /Row -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label col-md-3">คุณ:</label>
                                                                            <div class="col-md-9">
                                                                                <p class="form-control-static">
                                                                                    <%=bean.getName()%>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label col-md-3">วันที่ / เวลารับ:</label>
                                                                            <div class="col-md-9">
                                                                                <p class="form-control-static">
                                                                                    <%=bean.getDate() %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->
                                                                </div>
                                                                <!-- /Row -->
                                                                <!-- /Row -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label col-md-3">โทรศัพท์:</label>
                                                                            <div class="col-md-9">
                                                                                <p class="form-control-static">
                                                                                    <%=bean.getPhone() %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label col-md-3">ประมานการซ่อมเสร็จ:</label>
                                                                            <div class="col-md-9">
                                                                                <p class="form-control-static">
                                                                                    <%=bean.getComplete() %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->
                                                                </div>
                                                                <!-- /Row -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label col-md-3">สถานที่ส่ง:</label>
                                                                            <div class="col-md-9">
                                                                                <p class="form-control-static">

                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label col-md-3">พนักงานรับเรื่อง:</label>
                                                                            <div class="col-md-9">
                                                                                <p class="form-control-static">
                                                                                    <%=bean.getMember() %>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->
                                                                </div>
                                                                <!-- /Row -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">

                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label class="control-label col-md-3">S/N:</label>
                                                                            <div class="col-md-9">
                                                                                <p class="form-control-static"> xxx </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--/span-->
                                                                </div>
                                                                <!-- /Row -->
                                                                <!-- <div class="seprator-block"></div> -->
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
                            <div class="col-sm-12">
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
                                                                                                <option><%=bean.getType() %></option>
                                                                                                </select>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label mb-10 text-left">ชื่ออุปกรณ์:</label>
                                                    <select class="form-control" id="deviceName">
                                                                                                    <option><%=bean.getDevice() %></option>
                                                                                           
                                                                                                     </select>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label mb-10 text-left">ปัญหา:</label> <select class="form-control" id="problem">
                                                                                                <option><%=bean.getProblem() %></option>
                                                                                                </select>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10 text-left">อื่นๆ:</label>
                                                    <textarea class="form-control" rows="4" id="other"><%=bean.getOther() %></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="panel panel-default card-view">
                                    <div class="panel-heading">
                                        <div class="pull-left">
                                            <h6 class="panel-title txt-dark">ผลการแก้ไข</h6>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="panel-wrapper collapse in">
                                        <div class="panel-body">
                                            <div class="form-wrap">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label mb-10">วันที่เสร็จ:</label>
                                                            <input type="date" class="form-control" id="">
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label mb-10">ช่างที่แก้ไข:</label>
                                                            <input type="text" class="form-control" id="repairmem" disabled>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10">รายละเอียดการซ่อม:</label>
                                                    <textarea class="form-control" rows="4" id=""></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10 text-left">สถานะ:</label>
                                                    <select class="form-control" id="repairstatus">
                                                                    <option><%=bean.getStatus() %></option>
                                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10">ค่าอะไหล่:</label>
                                                    <input type="number" class="form-control" id="input1" placeholder="0" onkeyup='nStr()'>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10">ค่าบริการ:</label>
                                                    <input type="number" class="form-control" id="input2" placeholder="0" onkeyup='nStr()'>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10">รวม:</label>
                                                    <label class="form-control" id="show" color=""></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-success mr-10">บันทึก</button>
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
                </div>

                <script>
                    function nStr() {
                        var int1 = document.getElementById('input1').value;
                        var int2 = document.getElementById('input2').value;
                        var n1 = parseInt(int1);
                        var n2 = parseInt(int2);
                        var show = document.getElementById('show');

                        if (isNaN(n1)) {
                            document.getElementById("show").setAttribute("color", "red");
                            show.innerHTML = "ERROR"
                            if (int2.length > 0) {
                                if (isNaN(int1)) {
                                    document.getElementById("show").setAttribute("color", "red");
                                    show.innerHTML = "ERROR"
                                } else if (isNaN(int2)) {
                                    document.getElementById("show").setAttribute("color", "red");
                                    show.innerHTML = "ERROR"
                                } else if (int1.length > 0) {
                                    document.getElementById("show").setAttribute("color", "Blue");
                                    show.innerHTML = n1 + n2;
                                } else if (int2.length > 0) {
                                    document.getElementById("show").setAttribute("color", "Blue");
                                    show.innerHTML = n2;
                                }
                            }
                        } else if (int1.length > 0) {
                            if (isNaN(int2)) {
                                document.getElementById("show").setAttribute("color", "red");
                                show.innerHTML = "ERROR"
                            } else if (int2.length > 0) {
                                document.getElementById("show").setAttribute("color", "Blue");
                                show.innerHTML = n1 + n2;
                            } else if (int1.length > 0) {
                                document.getElementById("show").setAttribute("color", "Blue");
                                show.innerHTML = n1;
                            }
                        }
                    }
                </script>
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
                                $('#repairmem').val(msg.name);

                            }
                        });

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
                            $('#problem').empty();
                            var testBean = {
                                "a": $('#repairtype').val()
                            };
                            $.ajax({
                                type: "POST",
                                url: "/problem",
                                data: JSON.stringify(testBean),
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function(msg) {
                                    $('#problem').append('<option value="">== กรุณาเลือก ==</option>');
                                    for (var i = 0; i < msg.length; i++) {
                                        $('#problem').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                    }
                                }
                            });
                        });
                    });
                </script>
            </body>

            </html>