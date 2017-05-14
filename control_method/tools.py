# -*- coding:UTF-8 -*-
import hashlib
import numpy as np
from django.core.mail import send_mail



def forCheckbox(data, attr):
    temp = dict(data.iterlists())
    json_data = temp[attr]
    tempstr = ''
    for item in json_data:
        tempstr = tempstr + str(item)
    return tempstr

def randomStr():
    str = ''
    s = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    for i in xrange(24):
        str = str + s[np.random.randint(len(s))]
    return str

def forCheckbox2(data, attr):
    temp = dict(data.iterlists())
    json_data = temp[attr]
    tempstr = []
    for item in json_data:
        tempstr.append(item)
    return tempstr

def exceptionRecord(a,b,c):
    print str(c)+"EXP!!!!!"+b

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


def WordToPinyin(data):
    result = ''
    if data == '植物园':
        result = 'zhiWuYuan'
    elif data == '云岗':
        result = 'yunGang'
    elif data == '榆垡':
        result = 'yuFa'
    elif data == '永乐店':
        result = 'yongLeDian'
    elif data == '永定门内':
        result = 'yongDingMenNei'
    elif data == '亦庄':
        result = 'yiZhuang'
    elif data == '延庆':
        result = 'yanQing'
    elif data == '西直门北':
        result = 'xiZhiMenBei'
    elif data == '万寿西宫':
        result = 'wanShouXiGong'
    elif data == '万柳':
        result = 'wanLiu'
    elif data == '通州':
        result = 'tongZhou'
    elif data == '天坛':
        result = 'tianTan'
    elif data == '顺义':
        result = 'shunYi'
    elif data == '前门':
        result = 'qianMen'
    elif data == '平谷':
        result = 'pingGu'
    elif data == '农展馆':
        result = 'nongZhanGuan'
    elif data == '南三环':
        result = 'nanSanHuan'
    elif data == '密云水库':
        result = 'miYunShuiKu'
    elif data == '密云':
        result = 'miYun'
    elif data == '门头沟':
        result = 'menTouGou'
    elif data == '琉璃河':
        result = 'liuLiHe'
    elif data == '怀柔':
        result = 'huaiRou'
    elif data == '官园':
        result = 'guanYuan'
    elif data == '古城':
        result = 'guCheng'
    elif data == '丰台花园':
        result = 'fengTaiHuaYuan'
    elif data == '房山':
        result = 'fangShan'
    elif data == '东四环':
        result = 'dongSiHuan'
    elif data == '东四':
        result = 'dongSi'
    elif data == '东高村':
        result = 'dongGaoCun'
    elif data == '定陵':
        result = 'dingLing'
    elif data == '大兴':
        result = 'daXing'
    elif data == '昌平':
        result = 'changPing'
    elif data == '北部新区':
        result = 'beiBuXinQu'
    elif data == '八达岭':
        result = 'baDaLing'
    elif data == '奥体中心':
        result = 'aoTiZhongXin'
    return result
