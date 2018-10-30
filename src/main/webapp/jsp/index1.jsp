<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <jsp:include page="../layout/menu.jsp"></jsp:include>
        <title>Dashboard</title>

        <style>
            * {
                box-sizing: border-box
            }
            
            .container {
                width: 100%;
                background-color: #ddd;
            }
            
            .skills {
                text-align: right;
                padding: 10px;
                color: white;
            }
            
            .html {
                width: 90%;
                background-color: #4CAF50;
            }
            
            .css {
                width: 80%;
                background-color: #2196F3;
            }
            
            .js {
                width: 65%;
                background-color: #f44336;
            }
            
            .php {
                width: 60%;
                background-color: #808080;
            }
        </style>
    </head>

    <body>
        <!-- Main Content -->
        <div class="page-wrapper" style="min-height: 1000px;">
            <div class="container-fluid pt-25">
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">จำนวนอุปกรณ์</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="form-group">
                                            <div id="piechart"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">สถิติการซ่อมแยกตามหมวดหมู่</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12">
                                            <div class="form-wrap">
                                                <p> NOTEBOOK</p>
                                                <div class="form-group">
                                                    <div class="skills html">90%</div>
                                                </div>

                                                <p> CASE</p>
                                                <div class="form-group">
                                                    <div class="skills css">80%</div>
                                                </div>

                                                <p>PRINTER</p>
                                                <div class="form-group">
                                                    <div class="skills js">65%</div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                        ['Work', 8],
                        ['Eat', 2],
                        ['TV', 4],
                        ['Gym', 2],
                        ['Sleep', 8]
                    ]);

                    // Optional; add a title and set the width and height of the chart
                    var options = {
                        'title': 'My Average Day',
                        'width': 550,
                        'height': 400
                    };

                    // Display the chart inside the <div> element with id="piechart"
                    var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                    chart.draw(data, options);
                }
            </script>
    </body>

    </html>