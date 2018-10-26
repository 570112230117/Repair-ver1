<%@page import="com.bru.model.AmnuayBean"%>
    <%@page import="com.bru.model.RepairBean"%>
        <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <!DOCTYPE html>
            <html>

            <head>
                <jsp:include page="../layout/menu.jsp"></jsp:include>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                            <input type="hidden" id="idd" value="<%=bean.getId() %>">
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
                                                                        <label class="control-label col-md-3">ที่อยู่:</label>
                                                                        <div class="col-md-9">
                                                                            <p class="form-control-static">
                                                                                <%=bean.getAddress() %>
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
                                                                        <label class="control-label col-md-3">สถานที่ส่ง:</label>
                                                                        <div class="col-md-9">
                                                                            <p class="form-control-static">
                                                                                <%=bean.getCompany() %>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--/span-->
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="control-label col-md-3">S/N:</label>
                                                                        <div class="col-md-9">
                                                                            <p class="form-control-static"> </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--/span-->
                                                            </div>
                                                            <!-- /Row -->
                                                            <!-- <div class="seprator-block"></div> -->
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <form action="/updaterepairedit" name="updaterepairedit" method="POST">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel panel-default card-view">
                                        <div class="panel-heading">
                                            <div class="pull-left">
                                                <h6 class="panel-title txt-dark">ข้อมูลปัญหา</h6>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>

                                        <input type="hidden" name="id" value="<%=bean.getId() %>">
                                        <div class="panel-wrapper collapse in">
                                            <div class="panel-body">
                                                <div class="form-wrap">
                                                    <div class="form-group ">
                                                        <label class="control-label mb-10 text-left">ประเภทงานซ่อม:</label>
                                                        <select class="form-control" id="repairtype" name="rapairType">
                                                                                                <option value=""><%=bean.getType() %></option>
                                                                                                </select>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label mb-10 text-left">ชื่ออุปกรณ์:</label>
                                                        <select class="form-control" id="deviceName" name="deviceName">
                                                                                                    <option value=""><%=bean.getDevice() %></option>
                                                                                           
                                                                                                     </select>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label mb-10 text-left">ปัญหา:</label> <select class="form-control" id="problem" name="problem">
                                                                                                <option value=""><%=bean.getProblem() %></option>
                                                                                                </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label mb-10 text-left">อื่นๆ:</label>
                                                        <textarea class="form-control" rows="4" id="other" name="other"></textarea>
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
                                                                <input type="date" class="form-control" id="datecompletion" name="datecompletion">
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label mb-10">ช่างที่แก้ไข:</label>
                                                                <input type="text" class="form-control" id="repairmem" name="memberrole" disabled>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label mb-10">รายละเอียดการซ่อม:</label>
                                                        <textarea class="form-control" rows="4" id="repairdetails" name="repairdetails"></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label mb-10 text-left">สถานะ:</label>
                                                        <select class="form-control" id="repairstatus" name="repairStatus">
                                                                    <option value=""><%=bean.getStatus() %></option>
                                                                    </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label mb-10">ค่าอะไหล่:</label>
                                                        <input type="number" class="form-control" id="input1" placeholder="0" onkeyup='nStr()' value="<%=bean.getSpareparts() %>" name="spareparts">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label mb-10">ค่าบริการ:</label>
                                                        <input type="number" class="form-control" id="input2" placeholder="0" onkeyup='nStr()' value="<%=bean.getServicecharge() %>" name="servicecharge">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label mb-10">รวม:</label>
                                                        <input type="number" class="form-control" id="show" placeholder="0" value="<%=bean.getSum() %>" name="sum">
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
                        </form>

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
                        var elem = document.getElementById('idd').value;
                        // var xxxx = {
                        //     kkk: $('#idd').val(),

                        // }
                        // console.log("ไอดี" + $('#idd').val())
                        console.log(elem)
                    });
                </script>
                <script>
                    // function insertConfirm() {
                    //     var repairBean = {
                    //         id: $('#id').val(),
                    //         rapairType: $('#repairtype').val(),
                    //         deviceName: $('#deviceName').val(),
                    //         problem: $('#problem').val(),
                    //         other: $('#other').val(),
                    //         datecompletion: $('#datecompletion').val(),
                    //         memberrole: $('#repairmem').val(),
                    //         repairdetails: $('#repairdetails').val(),
                    //         repairStatus: $('#repairstatus').val(),
                    //         spareparts: $('#input1').val(),
                    //         servicecharge: $('#input2').val(),
                    //         sum: $('#show').val(),

                    //     }

                    //     $.ajax({
                    //         type: "POST",
                    //         url: "/updaterepairedit",
                    //         contentType: "application/json; charset=utf-8",
                    //         data: JSON.stringify(repairBean),
                    //         dataType: "json",
                    //         success: function(msg) {
                    //             console.log(msg)
                    //             window.location.href = msg.page;
                    //         },
                    //         error: function() {
                    //             window.location.href = "/tabel";

                    //         }
                    //     });

                    // }

                    function nStr() {
                        var int1 = document.getElementById('input1').value;
                        var int2 = document.getElementById('input2').value;
                        var n1 = parseInt(int1);
                        var n2 = parseInt(int2);
                        var sumx;
                        if (sumx = n1 + n2) {
                            $('#show').val(sumx);
                        } else if (sumx = n1) {
                            $('#show').val(sumx);
                        } else if (sumx = n2) {
                            $('#show').val(sumx);
                        } else if (sumx = 'NaN') {
                            $('#show').val('');
                        }
                        console.log(sumx)
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
                                    // $('#id').val(msg.id);
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
                            $('#deviceName').empty();
                            var testBean = {
                                "a": $('#repairtype').val()
                            };
                            $.ajax({
                                type: "POST",
                                url: "/testdevice",
                                data: JSON.stringify(testBean),
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function(msg) {
                                    $('#deviceName').append('<option value="">== กรุณาเลือก ==</option>');
                                    for (var i = 0; i < msg.length; i++) {
                                        $('#deviceName').append('<option value="' + msg[i].id + '">' + msg[i].name + '</option>');
                                    }
                                }
                            });
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