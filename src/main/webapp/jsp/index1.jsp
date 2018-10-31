<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <title>Dashboard</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css' integrity='sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz' crossorigin='anonymous'>
        <style>
            html,
            body,
            h1,
            h2,
            h3,
            h4,
            h5 {
                font-family: "Raleway", sans-serif
            }
        </style>
    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper" style="min-height: 1000px;">
            <div class="container-fluid pt-25">
                <div class="w3-row-padding w3-margin-bottom">
                    <div class="w3-quarter">
                        <div class="w3-container w3-red w3-padding-16">
                            <div class="w3-left"><i class="fa fa-comment w3-xxxlarge"></i></div>
                            <div class="w3-right">
                                <h3 style="color: white" id="1"></h3>
                            </div>
                            <div class="w3-clear"></div>
                            <h4 style="color: white">แจ้งซ่อม</h4>
                        </div>
                    </div>
                    <div class="w3-quarter">
                        <div class="w3-container w3-blue w3-padding-16">
                            <div class="w3-left"><i class="fa fa-eye w3-xxxlarge"></i></div>
                            <div class="w3-right">
                                <h3 style="color: white" id="2"></h3>
                            </div>
                            <div class="w3-clear"></div>
                            <h4 style="color: white">รอตรวจสอบ</h4>
                        </div>
                    </div>
                    <div class="w3-quarter">
                        <div class="w3-container w3-teal w3-padding-16">
                            <div class="w3-left"><i class="fa fa-share-alt w3-xxxlarge"></i></div>
                            <div class="w3-right">
                                <h3 style="color: white" id="3"></h3>
                            </div>
                            <div class="w3-clear"></div>
                            <h4 style="color: white">อยู่ระหว่างซ่อม</h4>
                        </div>
                    </div>
                    <div class="w3-quarter">
                        <div class="w3-container w3-orange w3-text-white w3-padding-16">
                            <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
                            <div class="w3-right">
                                <h3 style="color: white" id="4"></h3>
                            </div>
                            <div class="w3-clear"></div>
                            <h4 style="color: white">รอเสนอราคา</h4>
                        </div>
                    </div>

                </div>
                <br>
                <div class="w3-panel">
                    <div class="w3-row-padding" style="margin:0 -16px">
                        <div class="w3-third" style="margin-top: 3%">
                            <div id="piechart"></div>
                        </div>
                        <div class="w3-twothird">
                            <h5 class="text-center">สถิติการซ่อมแยกตามหมวดหมู่อุปกรณ์</h5>
                            <table class="w3-table w3-striped w3-white">
                                <tr>
                                    <td><i class="fa fa-laptop w3-text-red w3-large"></i></td>
                                    <td>NOTEBOOK</td>
                                    <td><i id="NB"></i><i> ครั้ง</i></td>
                                </tr>
                                <tr>
                                    <td><i class="fas fa-desktop w3-text-Yellow w3-large"></i></td>
                                    <td>CASE</td>
                                    <td><i id="countCS"></i><i> ครั้ง</i></td>
                                </tr>
                                <tr>
                                    <td><i class="fas fa-print w3-text-yellow w3-large"></i></td>
                                    <td>PRINTER</td>
                                    <td><i id="countPT"></i><i> ครั้ง</i></td>
                                </tr>
                                <tr>
                                    <td><i class="far fa-save w3-text-red w3-large"></i></td>
                                    <td>เครื่องถ่ายฯ</td>
                                    <td><i id="countCY"></i><i> ครั้ง</i></td>
                                </tr>
                                <tr>
                                    <td><i class="fas fa-tv w3-text-blue w3-large"></i></td>
                                    <td>MONITER</td>
                                    <td><i id="countMT"></i><i> ครั้ง</i></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-send w3-text-Magenta w3-large"></i></td>
                                    <td>FAX</td>
                                    <td><i id="countFT"></i><i> ครั้ง</i></td>
                                </tr>
                                <tr>
                                    <td><i class="fas fa-camera w3-text-Cyan w3-large"></i></td>
                                    <td>กล้อง</td>
                                    <td><i id="countCM"></i><i> ครั้ง</i></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-institution w3-text-green w3-large"></i></td>
                                    <td>ตู้สาขา</td>
                                    <td><i id="countSK"></i><i> ครั้ง</i></td>
                                </tr>
                                <tr>
                                    <td><i class="fas fa-mobile w3-text-Red w3-large"></i></td>
                                    <td>โทรศัพท์</td>
                                    <td><i id="countTN"></i><i> ครั้ง</i></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-share-alt w3-text-Blue w3-large"></i></td>
                                    <td>เครื่องอื่นๆ</td>
                                    <td><i id="countVE"></i><i> ครั้ง</i></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-envelope w3-text-green w3-large"></i></td>
                                    <td>ส่งซ่อม</td>
                                    <td><i id="countS0"></i><i> ครั้ง</i></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="w3-row-padding w3-margin-bottom">

                </div>

                <!-- Footer -->
                <footer class="footer container-fluid pl-30 pr-30">
                    <div class="row">
                        <div class="col-sm-12">
                            <p>2017 &copy; Elmer. Pampered by Hencework</p>
                        </div>
                    </div>
                </footer>
            </div>

            <script>
                $(document).ready(function() {
                    $.ajax({
                        type: "GET",
                        url: "/COUNTC1",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#1').append(msg.repairStatus);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/COUNTC2",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#2').append(msg.repairStatus);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/COUNTC3",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#3').append(msg.repairStatus);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/COUNTC4",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#4').append(msg.repairStatus);
                        }
                    });
                    var int2;
                    $.ajax({
                        type: "GET",
                        url: "/countNB",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#NB').append(msg.deviceCategory);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/countCS",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#countCS').append(msg.deviceCategory);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/countPT",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#countPT').append(msg.deviceCategory);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/countCY",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#countCY').append(msg.deviceCategory);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/countMT",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#countMT').append(msg.deviceCategory);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/countFT",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#countFT').append(msg.deviceCategory);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/countCM",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#countCM').append(msg.deviceCategory);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/countSK",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#countSK').append(msg.deviceCategory);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/countTN",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#countTN').append(msg.deviceCategory);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/countVE",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#countVE').append(msg.deviceCategory);
                        }
                    });
                    $.ajax({
                        type: "GET",
                        url: "/countS0",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(msg) {
                            $('#countS0').append(msg.deviceCategory);
                        }
                    });
                });
            </script>
            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
            <script type="text/javascript">
                // Load google charts
                google.charts.load('current', {
                    'packages': ['corechart']
                });
                google.charts.setOnLoadCallback(drawChart);

                // Draw the chart and set the chart values


                function drawChart() {
                    var data = google.visualization.arrayToDataTable([

                        ['Task', 'Hours per Day'],
                        ['NOTEBOOK', 3],
                        ['CASE', 2],
                        ['PRINTER', 1],
                        ['ส่งซ่อม', 1],
                    ]);

                    // Optional; add a title and set the width and height of the chart
                    var options = {
                        'title': 'จำนวนอุปกรณ์',
                        'width': 520,
                        'height': 420
                    };

                    // Display the chart inside the <div> element with id="piechart"
                    var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                    chart.draw(data, options);
                }
            </script>
    </body>

    </html>