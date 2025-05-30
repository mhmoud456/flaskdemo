from flask import Flask
app=Flask(__name__)
@app.route('/')
def home():
    return"thisssss wooooooorks"
if __name__=='__main__':
  #  app.run(debug=True)
    #gunicorn app:app --bind 0.0.0.0:$PORT
   
#if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

