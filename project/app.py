from flask import Flask, render_template
from flask import request
from transformers import pipeline



nlp_token_class = pipeline('ner')
nlp_qa = pipeline('question-answering')

app = Flask(__name__)


@app.route("/chat")
def chat():
    return render_template("index.html")
'''
/*
@app.route("/chatmessage")
def chat_message():
    msz = request.args.get("msz").lower()
    
    
    file = open("covid19.txt",'r')
    context = file.read().lower()
    questions = [msz]
    ans = nlp_qa(context=[context]*len(questions),question=questions)
    start = "\033[1m"
    end = "\033[0;0m"
    #elif ans["score"]*100>=30:
    
    elif ans["score"]*100>=30:
        return ans["answer"]
    else:
       return "I have no Idea!"


app.run(port=5000)
*/
'''
import random

greeting_input_texts = ("hi","hey", "heys", "hello", "morning", "evening","greetings",)
greeting_replie_texts = ["hey", "hey hows you?", "nods", "hello there", "hello", "Welcome, how are you",]

@app.route("/chatmessage")
def chat_message():
    msz = request.args.get("msz").lower()
    print(msz)
    file = open("covid19.txt",'r')
    context = file.read()
    #questions = [msz]
    pairs =[
    ['my name is (.*)', ['Hello ! % 1']],
    ['(hi|hello|hey|holla|hola)', ['Hey there !', 'Hi there !', 'Hey !']],
    ['(.*) your name ?', ['My name is GSOP_Chatbot']],
    ['(.*) do you do ?', ['We created this chatbot for learning purpose !']],
    ['(.*) created you ?', ['GSOP']]
	]
    for i in range(0,len(pairs)):
        if msz.lower() in pairs[i][0]:
            return str(random.choice(pairs[i][1]))
    if "question" in msz.lower():
        return "Please tell me How can I help you"
    for word in msz.split():
        if word.lower() in greeting_input_texts:
            return str(random.choice(greeting_replie_texts))
        else:
            questions = [msz]
            response = nlp_qa(context=[context]*len(questions), question=questions)
            #if response["score"]*100>=30:
            return response["answer"]
            #else:
                #return "I have no Idea!"

app.run(port=5000)