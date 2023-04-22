from flask import Flask, render_template,request, jsonify
import pandas as pd
import numpy as np
import os
import sys
#sys.path.append('..')
import model


app = Flask(__name__)
app.config['TEMPLATES_AUTO_RELOAD'] = True

model.testFunc('Print this out using Model.py functions')

#View for homepage
@app.route('/', methods=['GET','POST'])
def homepage(): 
    return render_template('webapp/app.html')



#View that will take in stock name from a get Request and return the data in JSON for TensorflowJS to deal with
@app.route('/getData',methods=['GET','POST'])
def getData():
    x=np.random.normal(0,1,20)
    y=np.random.normal(0,4,20)
    content=pd.DataFrame([x,y])
    return str(content.to_json())







if __name__=="__main__":
    app.run(host='0.0.0.0',port=8080)