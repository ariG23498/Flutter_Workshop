from flask import Flask,jsonify,make_response,request
import json

app = Flask(__name__)

@app.route("/")
def home():
    return "Hey there!"

@app.route("/getData/")
def getdata():
    # Read the data from the json file
    with open("data.json", "r") as read_file:
        data = json.load(read_file)
    # Return a response and the status code as 200 ^_^
    return make_response(jsonify(data),200)
    
@app.route("/setData/",methods=["POST"])
def setdata():
    # Read the data from the json file
    # The file is a list of dictionaries
    with open("data.json", "r") as read_file:
        data = json.load(read_file)
    # Get the data that has been posted
    # which is a dictionary
    data_posted = request.get_json()
    # append to the list the newly entered dictionary
    data.append(data_posted)
    # Open the file in write mode
    # And dump the data
    with open("data.json", "w") as write_file:
        json.dump(data,write_file)
    # Return a happy status ^_^
    return make_response(jsonify({"success":True}),200)
    
if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=False, port=8000)