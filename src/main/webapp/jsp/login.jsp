<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <%@page import="com.bru.model.MemberBean"%>
        <html lang="en">

        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
            <title>Login</title>
            <meta name="description" content="Elmer is a Dashboard & Admin Site Responsive Template by hencework." />
            <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Elmer Admin, Elmeradmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
            <meta name="author" content="hencework" />

            <!-- Favicon -->
            <link rel="shortcut icon" href="favicon.ico">
            <link rel="icon" href="favicon.ico" type="image/x-icon">

            <!-- vector map CSS -->
            <link href="vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css" />



            <!-- Custom CSS -->
            <link href="dist/css/style.css" rel="stylesheet" type="text/css">
            <%
	String result = "";
	result = (String) request.getAttribute("messessError");
%>
                <%
	MemberBean bean = null;
	bean = (MemberBean) request.getSession().getAttribute("login");
%>
        </head>

        <body>
            <!-- Main Content -->
            <div class="page-wrapper pa-0 ma-0 auth-page">
                <div class="container-fluid">
                    <div class="sp-logo-wrap pull-left">
                        <a class="inline-block btn btn-primary  btn-rounded btn-outline" href="/">กลับ</a>
                    </div>

                    <!-- Row -->
                    <div class="table-struct full-width">
                        <div class="table-cell vertical-align-middle auth-form-wrap">
                            <div class="auth-form  ml-auto mr-auto no-float">
                                <div class="row">
                                    <div class="col-sm-12 col-xs-12">
                                        <div class="mb-30">
                                            <div class="logo-wrap" style="text-align: center">
                                                <img class="brand-img" style="width: 200px" src="/dist/img/LOGO_OA1.png" alt="brand" />
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <form action="/welcome" name="welcome" method="POST">
                                                <div class="form-group">
                                                    <label class="control-label mb-10" for="exampleInputEmail_2">Email address</label>
                                                    <input type="email" class="form-control" name="email" required="" id="email" placeholder="Enter email">
                                                </div>
                                                <div class="form-group">
                                                    <label class="pull-left control-label mb-10" for="exampleInputpwd_2">Password</label>
                                                    <div class="clearfix"></div>
                                                    <input type="password" class="form-control" name="password" required="" id="password" placeholder="Enter pwd">
                                                </div>
                                                <%
									if (result.equals("F")) {
								%>
                                                    <div class="alert alert-danger alert-dismissable">
                                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">�</button>
                                                        <i class="zmdi zmdi-block pr-15 pull-left"></i>
                                                        <p class="pull-left">ผิดพลาด</p>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                    <%
									}
								%>

                                                        <div class="form-group text-center">
                                                            <button type="submit" class="btn btn-primary  btn-rounded">เข้าสู่ระบบ</button>
                                                        </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Row -->
                </div>

            </div>
            <!-- /Main Content -->

            </div>
            <!-- /#wrapper -->

            <!-- JavaScript -->

            <!-- jQuery -->
            <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
            <script src="vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

            <!-- Slimscroll JavaScript -->
            <script src="dist/js/jquery.slimscroll.js"></script>

            <!-- Init JavaScript -->
            <script src="dist/js/init.js"></script>
        </body>

        </html>