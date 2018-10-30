<%@page import="com.bru.model.AmnuayBean"%>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!DOCTYPE html >
        <html>

        <head>
            <jsp:include page="../layout/menu.jsp"></jsp:include>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Report</title>
            <% 
            AmnuayBean bean = null;
            bean = (AmnuayBean) request.getSession().getAttribute("repairbean");
            %>
        </head>

        <body onload="window.print()">
            <input type="hidden" id="idd" value="<%=bean.getId() %>">
            <input type="hidden" id="custo" value="<%=bean.getCustomer() %>">
            <input type="hidden" id="deviceID" value="<%=bean.getDevice() %>">

            <div class="container-fluid">
                <div style="margin-top: 2%">
                    <h6 class="text-center">ใบรับซ่อมสินค้า</h6>
                    <h6 class="text-center">THONG CHAI OA SALE & SERVICE</h6>
                </div>
                <div class="text-center">
                    <label>68/13 ถ.ธานี ต.ในเมือง อ.เมือง จ.บุรีรัมย์ โทรศัพท์ 044-612189,621464-5 FAX 044-620905</label>
                </div>
                <table style="margin-top: 1%">
                    <tr>
                        <th style="width: 25%;">รหัสลูกค้า</th>
                        <th style="width: 25%;" id="customerID"></th>
                        <th style="width: 35%;">เลขที่ใบซ่อม</th>
                        <th style="width: 25%;" id="repairId"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">คุณ</th>
                        <th style="width: 25%;" id="customerName"></th>
                        <th style="width: 35%;">วันที่ / เวลารับ</th>
                        <th style="width: 25%;" id="repairrepairDate"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">ที่อยู่</th>
                        <th style="width: 25%;" id="customerAddress"></th>
                        <th style="width: 35%;">ประมาณการซ่อมเสร็จ</th>
                        <th style="width: 25%;" id="repaircompleteDate"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">โทรศัพท์</th>
                        <th style="width: 25%;" id="customePhone"></th>
                        <th style="width: 35%;">พนักงานรับเรื่อง</th>
                        <th style="width: 25%;" id="repairmemberId"></th>
                    </tr>
                </table>
                <hr class="light-grey-hr">
                <table>
                    <tr>
                        <th style="width: 25%;">รหัสอุปกรณ์</th>
                        <th style="width: 25%;" id="deviceid"></th>
                        <th style="width: 35%;">หมวดหมู่อุปกรณ์</th>
                        <th style="width: 25%;" id="had"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">ยี่ห้ออุปกรณ์</th>
                        <th style="width: 25%;" id="devicebrand"></th>
                        <th style="width: 35%;">รุ่นอุปกรณ์</th>
                        <th style="width: 25%;" id="devicegeneration"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">หมายเลขซีเรียล</th>
                        <th style="width: 25%;" id="deviceserialnumber"></th>
                        <th style="width: 35%;">หมายเหตุ</th>
                        <th style="width: 25%;" id="devicenote"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">อาการเสีย</th>
                        <th style="width: 25%;" id="repairproblem"></th>
                        <th style="width: 35%;"></th>
                        <th style="width: 25%;"></th>
                    </tr>
                </table>
                <br><br>
                <div class="pull-left">
                    <label>ลงชื่อ:</label><label>_________________________ ลูกค้า</label>
                </div>
                <div class="pull-right">
                    <label>ลงชื่อ:</label><label>_________________________ ผู้รับเรื่อง</label>
                </div>
                <br><br>
                <div class="text-center">
                    <p>ขอให้ลูกค้าติดต่อรับเครื่องซ่อม ภายในเวลา 6 เดือน นับจากวันที่นำเครื่องมาซ่อม หากเกินระยะเวลาที่กำหนดไว้แล้ว</p>
                    <p>**จะถือว่าลูกค้าไม่ต้องการเครื่องแล้ว ดังนั้น หากเกิดความเสียหาย หรือสูญหาย ทางห้างฯไม่ขอรับผิดชอบใดๆทั้งสิน**</p>
                    <p>***ทางห้างฯ ขอปฎิเสธ ไม่มีส่วนเกี่ยวข้องและความผิดชอบใดๆ ต่อ Hardware,Software,Data,File***</p>
                    <p>*** หรือสิ่งใด ที่เป็นการละเมิดลิขสิทธิ์ หรือ ผิดกฎหมาย***</p>
                </div>
                <br><br>
                <hr class="light-grey-hr">
                <div style="margin-top: 2%">
                    <h6 class="text-center">ใบเครื่องที่ซ่อม</h6>
                </div>
                <div class="text-center">
                    <label>คุณ</label> <label id="customerName2"></label>
                </div>
                <table style="margin-top: 1%">
                    <tr>
                        <th style="width: 25%;">รหัสลูกค้า</th>
                        <th style="width: 25%;" id="customerID1"></th>
                        <th style="width: 35%;">เลขที่ใบซ่อม</th>
                        <th style="width: 25%;" id="repairId1"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">คุณ</th>
                        <th style="width: 25%;" id="customerName1"></th>
                        <th style="width: 35%;">วันที่ / เวลารับ</th>
                        <th style="width: 25%;" id="repairrepairDate1"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">ที่อยู่</th>
                        <th style="width: 25%;" id="customerAddress1"></th>
                        <th style="width: 35%;">วันนัดหมาย</th>
                        <th style="width: 25%;" id="repaircompleteDate1"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">โทรศัพท์</th>
                        <th style="width: 25%;" id="customePhone1"></th>
                        <th style="width: 35%;">พนักงานรับเรื่อง</th>
                        <th style="width: 25%;" id="repairmemberId1"></th>
                    </tr>
                </table>
                <hr class="light-grey-hr">
                <table>
                    <tr>
                        <th style="width: 25%;">รหัสอุปกรณ์</th>
                        <th style="width: 25%;" id="deviceid11"></th>
                        <th style="width: 35%;">หมวดหมู่อุปกรณ์</th>
                        <th style="width: 25%;" id="had1"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">ยี่ห้ออุปกรณ์</th>
                        <th style="width: 25%;" id="devicebrand1"></th>
                        <th style="width: 35%;">รุ่นอุปกรณ์</th>
                        <th style="width: 25%;" id="devicegeneration1"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">หมายเลขซีเรียล</th>
                        <th style="width: 25%;" id="deviceserialnumber1"></th>
                        <th style="width: 35%;">หมายเหตุ</th>
                        <th style="width: 25%;" id="devicenote1"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">อาการเสีย</th>
                        <th style="width: 25%;" id="repairproblem1"></th>
                        <th style="width: 35%;"></th>
                        <th style="width: 25%;"></th>
                    </tr>
                </table>
                <hr class="light-grey-hr">
                <table>
                    <tr>
                        <th style="width: 25%;">ค่าอะไหล่ : </th>
                        <th style="width: 25%;" id="input11"></th>
                        <th style="width: 35%;">รายละเอียดที่ซ่อม</th>
                        <th style="width: 25%;" id="xxx1"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">ค่าบริการ :</th>
                        <th style="width: 25%;" id="input21"></th>
                        <th style="width: 35%;">ช่างที่แก้ไข</th>
                        <th style="width: 25%;" id="technician1"></th>
                    </tr>
                    <tr>
                        <th style="width: 25%;">รวม :</th>
                        <th style="width: 25%;" id="show1"></th>
                        <th style="width: 35%;">สถานะ</th>
                        <th style="width: 25%;" id="status1"></th>
                    </tr>
                </table>
                <br>
                <div class="pull-left">
                    <label>ลงชื่อ:</label><label>_________________________ ลูกค้า</label>
                </div>
                <div class="pull-right">
                    <label>ลงชื่อ:</label><label>_________________________ ผู้รับเรื่อง</label>
                </div>
                <br>
                <div class="text-center">
                    <p>*กรุณาแจ้งรายละเอียดการซ่อม-ช่างผู้ซ่อมไว้โดยลพเอียดและหากต้งอเปลี่ยนอะไหล่ กรุณาเสนอราคาลูกค้าก่อนทุกครั้ง</p>
                    <p>*********หากเครื่องซ่อมเสร็จแล้ว กรุณา โทรแจ้งให้ลูกค้าทราบภายในเวลา 7 วัน หรือ ไปส่งที่สำนักงาน*********</p>
                </div>
            </div>




            <script>
                $(document).ready(function() {
                    document.getElementById('idd').value;
                    document.getElementById('custo').value;
                    document.getElementById('deviceID').value;
                    var testBean = {
                        "a": $('#custo').val(),
                        "b": $('#deviceID').val(),
                        "id": $('#idd').val(),
                    };

                    $.ajax({
                        type: "POST",
                        url: "/CustomerfindById",
                        data: JSON.stringify(testBean),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#customerID').append(msg.id);
                            $('#customerName').append(msg.name);
                            $('#customerAddress').append(msg.address);
                            $('#customePhone').append(msg.phone);
                            //
                            $('#customerID1').append(msg.id);
                            $('#customerName1').append(msg.name);
                            $('#customerAddress1').append(msg.address);
                            $('#customePhone1').append(msg.phone);
                            // 
                            $('#customerName2').append(msg.name);
                        }
                    });
                    $.ajax({
                        type: "POST",
                        url: "/deviceID",
                        data: JSON.stringify(testBean),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#deviceid').append(msg.deviceId);
                            $('#had').append(msg.deviceCategory);
                            $('#deviceCategory').append(msg.deviceCategory);
                            $('#devicebrand').append(msg.brand);
                            $('#devicegeneration').append(msg.generation);
                            $('#deviceserialnumber').append(msg.serialnumber);
                            $('#devicewarranty').append(msg.warranty);
                            $('#deviceprice').append(msg.price);
                            $('#devicenote').append(msg.note);
                            //
                            $('#deviceid11').append(msg.deviceId);
                            $('#had1').append(msg.deviceCategory);
                            $('#deviceCategory1').append(msg.deviceCategory);
                            $('#devicebrand1').append(msg.brand);
                            $('#devicegeneration1').append(msg.generation);
                            $('#deviceserialnumber1').append(msg.serialnumber);
                            $('#devicewarranty1').append(msg.warranty);
                            $('#deviceprice1').append(msg.price);
                            $('#devicenote1').append(msg.note);
                        }
                    });
                    $.ajax({
                        type: "POST",
                        url: "/repairEdit",
                        data: JSON.stringify(testBean),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#repairId').append(msg.id);
                            $('#repairmemberId').append(msg.memberId);
                            $('#repairrepairDate').append(msg.repairDate);
                            $('#repaircompleteDate').append(msg.completeDate);
                            $('#repairproblem').append(msg.problem);
                            // $('#status').html(msg.repairStatus);
                            $("#status").append("<option value='" + msg.repairStatus + "'>" + msg.repairStatus + "</option>");
                            $('#technician').append(msg.technician);
                            $('#input1').append(msg.spareparts);
                            $('#input2').append(msg.serviceCharge);
                            $('#show').append(msg.sum);
                            $('#repairdetails').append(msg.repairDetails);
                            //
                            $('#repairId1').append(msg.id);
                            $('#repairmemberId1').append(msg.memberId);
                            $('#repairrepairDate1').append(msg.repairDate);
                            $('#repaircompleteDate1').append(msg.completeDate);
                            $('#repairproblem1').append(msg.problem);
                            $('#status1').append(msg.repairStatus);
                            // $("#status").append("<option value='" + msg.repairStatus + "'>" + msg.repairStatus + "</option>");
                            $('#technician1').append(msg.technician);
                            $('#input11').append(msg.spareparts);
                            $('#input21').append(msg.serviceCharge);
                            $('#show1').append(msg.sum);
                            $('#xxx1').append(msg.repairDetails);

                        }
                    });

                });
            </script>
        </body>

        </html>