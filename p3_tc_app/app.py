from bottle import *

application = Bottle()

@application.route("/", method=["POST", "GET"])
def home():
    if request.method == "POST":
        try:
            temp = float(request.forms.get("temp"))
        except ValueError:
            msg = "temp shud be in numbers only"
            return template("home.tpl", msg=msg)
            
        choice = request.forms.get("choice")
        if choice == "c2f":
            ans = (temp * 1.9) + 32
            msg = str(temp) + " in cel = " + str(round(ans, 2)) + " in fah"
        elif choice == "f2c":
            ans = (temp - 32) / 1.9
            msg = str(temp) + " in fah = " + str(round(ans, 2)) + " in cel"
        return template("home.tpl", msg=msg)
        
    else:
        return template("home.tpl", msg="")

# run(application, host="localhost", port=4050, debug=True, reloader=True)