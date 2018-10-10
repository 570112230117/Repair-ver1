<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                var country = ["aaa", "Bangladesh", "Denmark", "Hong Kong", "Indonesia", "Netherlands", "New Zealand", "South Africa"];
                $("#country").select2({
                    data: country
                });
            });
        </script>
    </head>

    <body>
        <h1>DropDown with Search using jQuery</h1>
        <div>
            <select id="country" style="width:300px;">
                <!-- Dropdown List Option -->
                </select>
        </div>
    </body>

    </html>