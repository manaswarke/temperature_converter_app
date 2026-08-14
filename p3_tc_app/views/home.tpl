<html>
<head>
    <title>Temperature Converter App by Kamal Sir</title>
    <style>
        * {
            font-size: 40px;
            text-align: center;
        }
        body {
            background-color: lightcyan;
        }
    </style>
    <script>
        function check(event) {
            let temp = document.getElementById("id_temp");
            let msg = document.getElementById("id_msg");

            if (temp.value == "") {
                alert("temp cannot be empty");
                msg.innerHTML = "";
                temp.focus();
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h1>Temperature Converter App</h1>
    <form method="POST" onsubmit="return check(event)">
        <label>Temperature</label>
        <br/>
        <input type="number" step="0.01" name="temp" placeholder="Enter Temperature" id="id_temp" />
        <br/><br/>
        <label>Select One</label>
        <br/>
        <input type="radio" name="choice" value="c2f" checked="true" />Cel 2 Fah
        <input type="radio" name="choice" value="f2c" />Fah 2 Cel
        <br/><br/>
        <input type="submit" value="Convert" />
    </form>
    <h2 id="id_msg">
        {{ msg }}
    </h2>
</body>
</html>