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
                        <th style="width: 20%;">รหัสลูกค้า</th>
                        <th style="width: 30%;" id="customerID"></th>
                        <th style="width: 30%;">เลขที่ใบซ่อม</th>
                        <th style="width: 25%;" id="repairId"></th>
                    </tr>
                    <tr>
                        <th>คุณ</th>
                        <th id="customerName"></th>
                        <th>วันที่รับเครื่อง</th>
                        <th id="repairrepairDate"></th>
                    </tr>
                    <tr>
                        <th>ที่อยู่</th>
                        <th id="customerAddress"></th>
                        <th>ประมาณการซ่อมเสร็จ</th>
                        <th id="repaircompleteDate"></th>
                    </tr>
                    <tr>
                        <th>โทรศัพท์</th>
                        <th id="customePhone"></th>
                        <th>พนักงานรับเรื่อง</th>
                        <th id="repairmemberId"></th>
                    </tr>
                </table>
                <hr class="light-grey-hr">
                <table>
                    <tr>
                        <th style="width: 15%;">ประเภทการแจ้งซ่อม</th>
                        <th style="width: 20%;" id="repairtype"></th>
                        <th style="width: 15%;">หมวดหมู่อุปกรณ์</th>
                        <th style="width: 25%;" id="had"></th>
                    </tr>
                    <tr>
                        <th>ยี่ห้ออุปกรณ์</th>
                        <th id="devicebrand"></th>
                        <th>รุ่นอุปกรณ์</th>
                        <th id="devicegeneration"></th>
                    </tr>
                    <tr>
                        <th>หมายเลขซีเรียล</th>
                        <th id="deviceserialnumber"></th>
                        <th>อุปกรณ์ที่นำมาด้วย</th>
                        <th id="accessories1"></th>
                    </tr>
                    <tr>
                        <th>อาการเสีย</th>
                        <th id="repairproblem"></th>
                        <th>ราคาประเมิน</th>
                        <th id="repairLimit1"></th>
                    </tr>
                </table>
                <br>
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
                <br> <br><br>
                <hr class="light-grey-hr">
                <div style="margin-top: 2%">
                    <h6 class="text-center">ใบเครื่องที่ซ่อม</h6>
                </div>
                <div class="text-center">
                    <label>คุณ</label> <label id="customerName2"></label>
                </div>
                <table style="margin-top: 1%">
                    <tr>
                        <th style="width: 20%;">รหัสลูกค้า</th>
                        <th style="width: 30%;" id="customerID1"></th>
                        <th style="width: 30%;">เลขที่ใบซ่อม</th>
                        <th style="width: 25%;" id="repairId1"></th>
                    </tr>
                    <tr>
                        <th>คุณ</th>
                        <th id="customerName1"></th>
                        <th>วันที่รับเครื่อง</th>
                        <th id="repairrepairDate1"></th>
                    </tr>
                    <tr>
                        <th>ที่อยู่</th>
                        <th id="customerAddress1"></th>
                        <th>วันนัดหมาย</th>
                        <th id="repaircompleteDate1"></th>
                    </tr>
                    <tr>
                        <th>โทรศัพท์</th>
                        <th id="customePhone1"></th>
                        <th>พนักงานรับเรื่อง</th>
                        <th id="repairmemberId1"></th>
                    </tr>
                </table>
                <hr class="light-grey-hr">
                <table>
                    <tr>
                        <th style="width: 15%;">ประเภทการแจ้งซ่อม</th>
                        <th style="width: 20%;" id="repairtype2"></th>
                        <th style="width: 15%;">หมวดหมู่อุปกรณ์</th>
                        <th style="width: 25%;" id="had1"></th>
                    </tr>
                    <tr>
                        <th>ยี่ห้ออุปกรณ์</th>
                        <th id="devicebrand1"></th>
                        <th>รุ่นอุปกรณ์</th>
                        <th id="devicegeneration1"></th>
                    </tr>
                    <tr>
                        <th>หมายเลขซีเรียล</th>
                        <th id="deviceserialnumber1"></th>
                        <th>อุปกรณ์ที่นำมาด้วย</th>
                        <th id="accessories2"></th>
                    </tr>
                    <tr>
                        <th>อาการเสีย</th>
                        <th id="repairproblem1"></th>
                        <th>ราคาประเมิน</th>
                        <th id="repairLimit2"></th>
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
                        <th>ค่าบริการ :</th>
                        <th id="input21"></th>
                        <th>ช่างที่แก้ไข</th>
                        <th id="technician1"></th>
                    </tr>
                    <tr>
                        <th>รวม :</th>
                        <th id="show1"></th>
                        <th>สถานะ</th>
                        <th id="status1"></th>
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
                            // $('#deviceid').append(msg.deviceId);
                            $('#had').append(msg.deviceCategory);
                            $('#deviceCategory').append(msg.deviceCategory);
                            $('#devicebrand').append(msg.brand);
                            $('#devicegeneration').append(msg.generation);
                            $('#deviceserialnumber').append(msg.serialnumber);
                            $('#devicewarranty').append(msg.warranty);
                            $('#deviceprice').append(msg.price);
                            $('#devicenote').append(msg.note);
                            //
                            // $('#deviceid11').append(msg.deviceId);
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
                            $('#repairId').append(msg.repairID);
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
                            $('#repairtype').append(msg.jobType);
                            $('#accessories1').append(msg.accessories);
                            $('#repairLimit1').append(msg.repairLimit);
                            //
                            $('#repairId1').append(msg.repairID);
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
                            $('#repairtype2').append(msg.jobType);
                            $('#accessories2').append(msg.accessories);
                            $('#repairLimit2').append(msg.repairLimit);
                        }
                    });

                });
            </script>
        </body>

        </html>