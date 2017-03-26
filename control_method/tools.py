# -*- coding:UTF-8 -*-
import hashlib
from django.core.mail import send_mail

def md5(str):
    m = hashlib.md5()
    m.update(str)
    return m.hexdigest()


def dictPackage(keys,values):
    message={}
    i = 0
    for key in keys:
        message[key] = values[i]
        i=i+1

    return message

def sendEmail(mail,password):
    try:
        subject = "密码找回"
        content = "密码："+password
        send_mail(subject, content, 'no-reply@medicalassistant.top',[mail], fail_silently=False)
        return True
    except:
        return False

def toString(message):
    if type(message) == list:
        for index in range(len(message)):
            d = message[index]
            for i in d:
                if type(d[i]) != str:
                    d[i] = str(d[i])
            message[index] = d
    else:
        for i in message:
            if type(i) != str:
                message[i] = str(message[i])
    return message





def getFields():
    keys=[]
    while True:
        key = raw_input()
        if key == 'q':
            break
        keys.append(key)
    for key in keys:
        print "\'"+key+"\'"+",",

def updateField():
    keys = []
    while True:
        key = raw_input()
        if key == 'q':
            break
        keys.append(key)
    for key in keys:
        print "obj." + key +" = data[" + "\'" + key + "\'" + "]"

def addField():
    keys = []
    while True:
        key = raw_input()
        if key == 'q':
            break
        keys.append(key)
    for key in keys:
        print key + " = data[" + "\'" + key + "\'" + "],",



def get_values_listHandle():
    line = ""
    str = raw_input()
    line = line + str
    while str != "":
        str = raw_input()
        line = line + str


    i = 0
    while i < len(line):
        if line[i] == "'" or line[i] == " ":
            line = line[:i]+line[i+1:]
        else:
            i = i + 1

    arr = line.split(',')
    print 'value = []'
    for item in arr:
        print 'value.append(obj.'+item+')'


#getFields()
#updateField()
#addField()
#get_values_listHandle()


