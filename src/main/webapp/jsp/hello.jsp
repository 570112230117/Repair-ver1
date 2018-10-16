<html>

<head>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {

            $("#txtNumberA,#txtNumberB,,#txtNumberC").keyup(function() {

                if (isNaN($("#txtNumberA").val())) {
                    alert('Please input Number A is number');
                    $("#txtNumberA").val('');
                }

                if (isNaN($("#txtNumberB").val())) {
                    alert('Please input Number B is number');
                    $("#txtNumberB").val('');
                }

                if (isNaN($("#txtNumberC").val())) {
                    alert('Please input Number C is number');
                    $("#txtNumberC").val('');
                }

                $("#txtNumberD").val(parseFloat($("#txtNumberA").val()) + parseFloat($("#txtNumberB").val()) + parseFloat($("#txtNumberC").val()));
            });
        });
    </script>
</head>

<body>
    Number A <input type="text" id="txtNumberA" value=""> <br> Number B <input type="text" id="txtNumberB" value=""> <br> Number C <input type="text" id="txtNumberC" value=""> <br> A + B + C = <input type="text" id="txtNumberD" value=""><br>
</body>

</html>