# -*- coding:UTF-8 -*-
import numpy as np
import os
from Website.models import *
from django.core.exceptions import ObjectDoesNotExist
from control_method import tools
from operator import attrgetter
from itertools import chain
from django.db.models import Q
import json
from django.utils.timezone import now, timedelta


# 用户名/邮箱/手机号 重复性检验
# key : (userName,mail.cellphone,D_id,...)， value是对应字段的值
# 已被注册返回True，否则返回False

def checkExist(key,value):
    #TODO
    try:
        if key == 'userName':
            doc = UserInfo.objects.get(username=value)
        elif key == 'mail':
            doc = UserInfo.objects.get(mail=value)
        elif key == 'cellphone':
            doc = UserInfo.objects.get(cellphone=value)
        elif key == 'D_id':
            doc = UserInfo.objects.get(D_id=value)

        return True
    except Exception, e:
        tools.exceptionRecord('select.py','checkExist',e)
        return False
		
# 检验邀请码是否存在并可用		
def checkCode(code):
    try:
        print code
        obj = invitation.objects.get(code=code)
        if(obj.state=="1"):
            obj.state = "0"
            obj.save()
            return True
    except Exception, e:
        tools.exceptionRecord('select.py','checkCode',e)
        return False
		
# 通过用户名获取用户某个字段的信息
# key 就是字段名， 比如'password' 'D_id'.'mail','cellphone'
# 返回获取的值
def getUserInfo(userName,key):
    #TODO
    try:
        if key == 'password':
            result = UserInfo.objects.get(username=userName).password
        elif key == 'D_id':
            result = UserInfo.objects.get(username=userName).id
        elif key == 'mail':
            result = UserInfo.objects.get(username=userName).mail
        elif key == 'cellphone':
            result = UserInfo.objects.get(username=userName).cellphone
        else:
            return ""

        return result
    except Exception, e:
        tools.exceptionRecord('select.py','getUserInfo',e)
        return ""

# 获取医生的基本信息
# D_id为医生的编号
# 以字典形式返回获取到的基本信息
def getUserBasicInfo(D_id):
    message = {}
    # TODO
    try:
        obj = UserInfo.objects.get(id = D_id)
        value = []
        value.append(obj.id)
        value.append(obj.name)
        value.append(obj.sex)
        value.append(obj.cellphone)
        value.append(obj.email)
        value.append(obj.title)
        value.append(obj.hospital)
        value.append(obj.userGroup)
        value.append(obj.username)
        keys = ['D_id', 'name', 'sex', 'cellphone', 'mail', 'title', 'hospital', 'userGroup', 'userName']
        message = tools.dictPackage(keys,value)
    except Exception, e:
        tools.exceptionRecord('select.py','getUserBasicInfo',e)

    return message


# 获取医生的详细信息
# D_id为医生的编号
# 以字典形式返回获取到的详细信息
def getUserDetailedInfo(D_id):
    message = {}
    try:
        obj = UserInfo.objects.get(id=D_id)
        value = []
        value.append(obj.id)
        value.append(obj.name)
        value.append(obj.sex)
        value.append(str(obj.birthday))
        value.append(obj.username)
        value.append(obj.cellphone)
        value.append(obj.weChat)
        value.append(obj.email)
        value.append(obj.title)
        value.append(obj.hospital)
        value.append(obj.department)
        value.append(obj.userGroup)
        value.append(str(obj.registerDate))
        print value
        keys = ['D_id','name', 'sex', 'birthday','userName','cellphone','weChat','mail', 'title', 'hospital','department','userGroup','registerDate']
        # value[3] = value[3].strftime("%Y-%m-%d")
        # value[12] = value[12].strftime("%Y-%m-%d")
        message = tools.dictPackage(keys, value)
    except Exception, e:
        tools.exceptionRecord('select.py','getUserDetailedInfo',e)
        pass

    return message

#获取医生管理的实验组信息
#返回一个列表，列表中每个元素都是一个字典，存储着一个实验组的信息
def getExpGroups(D_id):
    list = []
    # TODO
    try:
        message = {}
        values = GroupInfo.objects.filter().values_list('id','name','description','date', 'D_id')
        keys = ['G_id','name','description','date', 'D_id']
        for value in values:
            # value[3] = value[3].strftime("%Y-%m-%d")
            message = tools.dictPackage(keys, value)
            message['date'] = str(message['date'])
            list.append(message)
        print list
    except Exception, e:
        tools.exceptionRecord('select.py','getExpGroups',e)
    return list

def getOneExpGroupInfo(G_id):
    # TODO
    try:
        message = {}
        obj = GroupInfo.objects.get(id = G_id)
        value = []
        value.append(obj.id)
        value.append(obj.name)
        value.append(obj.description)
        value.append(str(obj.date))
        value.append(obj.D_id)
        keys = ['G_id','name','description','date', 'D_id']

        message = tools.dictPackage(keys, value)
    except Exception, e:
        tools.exceptionRecord('select.py','getExpGroups',e)
    return message
#获取指定实验组中所有患者的基本信息
#返回一个列表，列表中每个元素都是一个字典，存储着一个患者的基本信息
def getExpGroupPatientsInfo(G_id):
    list = []
    message = {}
    try:
        patient_ids = PatientGroup.objects.filter(G_id=G_id).values_list('P_id')
        keys = ['P_id', 'name', 'sex', 'age', 'date']
        for patient_id in patient_ids:
            obj = PatientInfo.objects.get(P_id=patient_id[0])
            obj2 = PatientGroup.objects.get(P_id=patient_id[0],G_id=G_id)
            value = []
            value.append(obj.P_id)
            value.append(obj.name)
            value.append(obj.sex)
            value.append(obj.age)
            value.append(str(obj2.date))
            message = tools.dictPackage(keys, value)

            times = MedicalVisit.objects.get(P_id=patient_id[0])
            message['o_time'] = times.o_time
            message['e_time'] = times.e_time
            message['h_time'] = times.h_time

            #TODO
            #healthStatus

            list.append(message)

    except Exception, e:
        tools.exceptionRecord('select.py','getExpGroupPatientsInfo',e)

    return list
def getExpGroupPatientsID(G_id):
    try:
        patient_ids = PatientGroup.objects.filter(G_id=G_id).values_list('P_id')

    except Exception, e:
        tools.exceptionRecord('select.py','getExpGroupPatientsInfo',e)

    return patient_ids

#获取指定医生管理的所有患者的基本信息
#返回一个列表，列表中每个元素都是一个字典，存储着一个实验组的信息
def getPatientsBasicInfo():
    list = []
    message = {}
    # TODO
    try:

        values = PatientInfo.objects.all().values_list('P_id','name','sex','age', 'nation', 'registerTime', 'telephone', 'cellphone', 'IDCardNum')
        keys = ['P_id', 'name', 'sex','age', 'nation', 'registerTime', 'telephone', 'cellphone', 'IDCardNum']
        for value in values:
            message = tools.dictPackage(keys, value)
            time = MedicalVisit.objects.get(P_id=message['P_id'])
            message['registerTime'] = str(message['registerTime'])
            message['o_time'] = time.o_time
            message['e_time'] = time.e_time
            message['h_time'] = time.h_time
            message['percent'] = str(checkForInfoCompPercent(message['P_id']))
            list.append(message)
    except Exception, e:
        tools.exceptionRecord('select.py','getPatientsBasicInfo',e)
    return list

def getPatientName(P_id):
    message = {}
    try:
        name = PatientInfo.objects.get(P_id = P_id).name
        message['name'] = name
    except Exception, e:
        tools.exceptionRecord('select.py','getPatientName',e)
    return message

#获取指定医生管理的所有患者的基本信息
#还要返回患者所在实验组的信息
#注意判断一下P_id的正确性，失败返回一个空字典
def getPatientDetailedInfo(P_id):
    message={}
    # TODO
    try:
        obj = PatientInfo.objects.get(P_id = P_id)
        value = []
        value.append(obj.id)
        value.append(obj.P_id)
        value.append(obj.sign)
        value.append(obj.name)
        value.append(obj.sex)
        value.append(str(obj.birthday))
        value.append(obj.age)
        value.append(obj.nation)
        value.append(obj.height)
        value.append(obj.weight)
        value.append(str(obj.registerTime))
        value.append(obj.education)
        value.append(obj.career)
        value.append(obj.marriage)

        value.append(obj.province_h)
        value.append(obj.city_h)
        value.append(obj.county_h)
        value.append(obj.detail_h)

        value.append(obj.province)
        value.append(obj.city)
        value.append(obj.county)
        value.append(obj.activityAddr1)
        value.append(obj.activityAddr2)
        value.append(obj.actionAddr)
        value.append(obj.diastolicPressure)
        value.append(obj.systolicPressure)
        value.append(obj.neckCircu)
        value.append(obj.payment)
        value.append(obj.telephone)
        value.append(obj.cellphone)
        value.append(obj.partnerPhone)
        value.append(obj.IDCardNum)
        keys = ['id','P_id','sign','name','sex','birthday','age','nation','height','weight','registerTime','education',
                'career','marriage','province_h','city_h','county_h','detail_h','province','city','county','activityAddr1','activityAddr2','actionAddr',
                'diastolicPressure','systolicPressure','neckCircu','payment','telephone','cellphone','partnerPhone','IDCardNum']
        message = tools.dictPackage(keys, value)

        # group_id = PatientGroup.objects.get(P_id = P_id).G_id
        # group = GroupInfo.objects.get(id = group_id)
        # message['groupName'] = group.name
        # message['groupInfo'] = group.description
    except Exception, e:
        tools.exceptionRecord('select.py','getPatientDetailedInfo',e)
    return message


#获取指定患者的所有家属信息基本信息
#返回一个列表，列表中每个元素都是一个字典，存储着一个家属的信息
def getRelationInfos(P_id):
    list=[]
    message = {}
    # TODO
    try:
        values = RelationInfo.objects.filter(P_id = P_id).values_list('id','P_id','name','sex','telephone','cellphone','weChat','mail','homeAddr')
        keys = ['R_id','P_id','name','sex','telephone','cellphone','weChat','mail','homeAddr']
        for value in values:
            message = tools.dictPackage(keys, value)
            list.append(message)

    except Exception, e:
        tools.exceptionRecord('select.py','getRelationInfos',e)
    return list


#获取临床基本信息
def getBasicClinicInfos(type,S_id):
    list = []
    message = {}
    try:
        values = Clinic.objects.filter(type = type, S_id = S_id).values_list('id','lung3','date','detail')
        keys = ['Cli_id','lung3','date','detail']
        for value in values:
            message = tools.dictPackage(keys, value)
            message['date'] = str(message['date'])
            list.append(message)

    except Exception, e:
        tools.exceptionRecord('select.py','getBasicClinicInfos',e)
    print list
    return list

#获取问卷的基本信息
#返回值type:
#ESS   0
#MBQ   1
#SGRQ  2
def getBasicQuestionnaireInfos(type,S_id):
    list = []
    message = {}
    try:
        values = ESS.objects.filter(type = type, S_id = S_id).values_list('id','score','date')
        keys = ['ESS_id','score','date']
        for value in values:
            message = tools.dictPackage(keys, value)
            message['kind'] = 0
            message['date'] = str(message['date'])
            list.append(message)


        values = MBQ.objects.filter(type=type, S_id=S_id).values_list('id', 'BMI','date')
        keys = ['MBQ_id', 'BMI','date']
        for value in values:
            message = tools.dictPackage(keys, value)
            message['kind'] = 1
            message['date'] = str(message['date'])
            list.append(message)


        values = SGRQ.objects.filter(type=type, S_id=S_id).values_list('id','date')
        keys = ['SGRQ_id','date']
        for value in values:
            message = tools.dictPackage(keys, value)
            message['kind'] = 2
            message['date'] = str(message['date'])
            list.append(message)

    except Exception, e:
        tools.exceptionRecord('select.py','getBasicQuestionnaireInfos',e)

    return list

#获取某个病人所有的门诊的个数
def getPatientAllOutPatientServiceInfos(P_id):
    q = []
    try:
        values=OutPatientServiceInfo.objects.filter(P_id = P_id).values('id','date','place')
        q = list(values)
        print q
        q = sorted(q, key=lambda q:q['date'])
        for a in q:
            a['date'] = str(a['date'])
    except Exception,e:
        tools.exceptionRecord('select.py','getPatientAllOutPatientServiceInfos',e)

    return q

#获取某个病人某个的门诊的详细信息
def getPatientDetailedOutPatientServiceInfos(S_id):
    message = {}
    try:
        obj = OutPatientServiceInfo.objects.get(id = S_id)
        value = []
        value.append(obj.id)
        value.append(obj.P_id)
        value.append(str(obj.date))
        value.append(obj.place)
        value.append(obj.isStable)
        value.append(obj.isSymptom)
        value.append(obj.symptom)
        value.append(obj.physicalExam)
        value.append(obj.breathErr)
        value.append(obj.acuteExac)
        value.append(obj.disease)
        value.append(obj.useAbt)
        value.append(obj.abtType)
        value.append(obj.useJmzs)
        value.append(obj.hospital)
        value.append(obj.airRelate)
        value.append(obj.treatMethod)
        value.append(obj.medicine)

        keys = ['OPS_id','P_id','date','place','isStable','isSymptom', 'symptom','physicalExam','breathErr','acuteExac','disease',
                'useAbt','abtType','useJmzs','hospital','airRelate','treatMethod','medicine']

        message = tools.dictPackage(keys, value)

    except Exception, e:
        tools.exceptionRecord('select.py','getPatientDetailedOutPatientServiceInfos',e)

    return message

#获取某个病人所有的急诊的个数
def getPatientAllEmergCallInfos(P_id):
    q = []
    try:
        values=EmergCallInfo.objects.filter(P_id = P_id).values('id','date','place')
        q = list(values)
        print q
        q = sorted(q, key=lambda q:q['date'])
        for a in q:
            a['date'] = str(a['date'])
    except Exception, e:
        tools.exceptionRecord('select.py', 'getPatientAllEmergCallInfos', e)

    return q

# 获取某个病人某个的急诊的详细信息
def getPatientDetailedEmergCallInfos(S_id):
    message = {}
    try:
        obj = EmergCallInfo.objects.get(id = S_id)
        value = []
        value.append(obj.id)
        value.append(obj.P_id)
        value.append(str(obj.date))
        value.append(obj.place)
        value.append(obj.symptom)
        value.append(obj.acuteExac)
        value.append(obj.disease)
        value.append(obj.byxCheck)
        value.append(obj.byxResult)
        value.append(obj.ycWcTreat)
        value.append(obj.useAbt)
        value.append(obj.abtType)
        value.append(obj.useJmzs)
        value.append(obj.ecMethod)
        value.append(obj.ecDate)
        value.append(obj.hospital)
        value.append(obj.treatMethod)
        value.append(obj.airRelate)
        value.append(obj.medicine)

        keys = ['EC_id','P_id','date','place','symptom','acuteExac','disease','byxCheck','byxResult','ycWcTreat',
                'useAbt','abtType','useJmzs','ecMethod','ecDate','hospital','treatMethod','airRelate','medicine']
        message = tools.dictPackage(keys, value)


    except Exception, e:
        tools.exceptionRecord('select.py','getPatientDetailedEmergCallInfos',e)

    return message


#获取某个病人所有的住院的个数
def getPatientAllInHospitalInfos(P_id):
    q = []
    try:
        values=InHospitalInfo.objects.filter(P_id = P_id).values('id','date','place')
        q = list(values)
        print q
        q = sorted(q, key=lambda q:q['date'])
        for a in q:
            a['date'] = str(a['date'])
    except Exception,e:
        tools.exceptionRecord('select.py','getPatientAllInHospitalInfos',e)

    return q

#获取某个病人某个的住院的详细信息
def getPatientDetailedInHospitalInfos(S_id):
    message = {}
    try:
        obj = InHospitalInfo.objects.get(id = S_id)
        value = []
        value.append(obj.id)
        value.append(obj.P_id)
        value.append(str(obj.date))
        value.append(obj.place)
        value.append(obj.commonIcu)
        value.append(obj.symptom)
        value.append(obj.acuteExac)
        value.append(obj.disease)
        value.append(obj.byxCheck)
        value.append(obj.byxResult)
        value.append(obj.ycWcTreat)
        value.append(obj.useAbt)
        value.append(obj.abtType)
        value.append(obj.useJmzs)
        value.append(obj.hospitalDays)
        value.append(obj.airRelate)
        value.append(obj.treatMethod)
        value.append(obj.medicine)
        value.append(obj.docAdvice)

        keys = ['IH_id', 'P_id', 'date', 'place', 'commonIcu', 'symptom', 'acuteExac', 'disease', 'byxCheck',
                'byxResult', 'ycWcTreat', 'useAbt', 'abtType', 'useJmzs', 'hospitalDays', 'airRelate',
                'treatMethod', 'medicine', 'docAdvice']
        message = tools.dictPackage(keys, value)

    except Exception, e:
        tools.exceptionRecord('select.py','getPatientDetailedInHospitalInfos',e)

    return message


#获取指定的某个临床的详细信息
def getDetailedClinicInfo(Cli_id):
    message = {}
    try:
        obj = Clinic.objects.get(id = Cli_id)
        value = []
        value.append(obj.id)
        value.append(obj.P_id)
        value.append(obj.type)
        value.append(obj.S_id)
        value.append(obj.dangerType)
        value.append(obj.smoke1)
        value.append(obj.smoke2)
        value.append(obj.smoke3)
        value.append(obj.smoke4)
        value.append(obj.smoke5)
        value.append(obj.smoke6)
        value.append(obj.smoke7)
        value.append(obj.smoke8)
        value.append(obj.smoke9)
        value.append(obj.smoke10)
        value.append(obj.powder1)
        value.append(obj.powder2)
        value.append(obj.powder3)
        value.append(obj.biology1)
        value.append(obj.biology2)
        value.append(obj.hAir1)
        value.append(obj.hAir2)
        value.append(obj.gm1)
        value.append(obj.gm2)
        value.append(obj.drink1)
        value.append(obj.drink2)
        value.append(obj.drink3)
        value.append(obj.drink4)
        value.append(obj.lung1)
        value.append(obj.lung2)
        value.append(obj.lung3)
        value.append(obj.lung4)
        value.append(obj.lung5)
        value.append(obj.lung6)
        value.append(obj.lung7)
        value.append(obj.cure1)
        value.append(obj.cure2)
        value.append(obj.cure3)
        value.append(obj.cure4)
        value.append(obj.cure5)
        value.append(obj.cure6)
        value.append(obj.cure7)
        value.append(obj.cure8)
        value.append(obj.cure9)
        value.append(obj.cure10)
        value.append(obj.cure11)
        value.append(obj.cure12)
        value.append(obj.cure13)
        value.append(obj.cure14)
        value.append(obj.cure15)
        value.append(obj.cure16)
        value.append(obj.cure17)
        value.append(obj.cure18)
        value.append(obj.cure19)
        value.append(obj.cure20)
        value.append(obj.cure21)
        value.append(obj.cure22)
        value.append(obj.cure23)
        value.append(obj.cure24)
        value.append(obj.cure25)
        value.append(obj.cure26)
        value.append(obj.comp1)
        value.append(obj.comp2)
        value.append(obj.comp3)
        value.append(obj.comp4)
        value.append(obj.comp5)
        value.append(obj.comp6)
        value.append(str(obj.date))
        value.append(obj.detail)
        keys = ['Cli_id', 'P_id', 'type', 'S_id', 'dangerType', 'smoke1', 'smoke2', 'smoke3', 'smoke4', 'smoke5',
                'smoke6', 'smoke7', 'smoke8', 'smoke9', 'smoke10', 'powder1', 'powder2', 'powder3', 'biology1',
                'biology2', 'hAir1', 'hAir2', 'gm1', 'gm2', 'drink1', 'drink2', 'drink3', 'drink4', 'lung1', 'lung2',
                'lung3', 'lung4', 'lung5', 'lung6', 'lung7', 'cure1', 'cure2', 'cure3', 'cure4', 'cure5', 'cure6',
                'cure7', 'cure8', 'cure9', 'cure10', 'cure11', 'cure12', 'cure13', 'cure14', 'cure15', 'cure16',
                'cure17', 'cure18', 'cure19', 'cure20', 'cure21', 'cure22', 'cure23', 'cure24', 'cure25', 'cure26',
                'comp1', 'comp2', 'comp3', 'comp4', 'comp5', 'comp6' ,'date', 'detail']
        message = tools.dictPackage(keys, value)
    except Exception, e:
        tools.exceptionRecord('select.py','getDetailedClinicInfo',e)
    return message

#获取指定的某个问卷的详细信息
#type:
#ESS   0
#MBQ   1
#SGRQ  2
def getDetailedQuestionnaireInfo(type,Q_id):
    message = {}
    try:
        if type == 0:
            obj = ESS.objects.get(id = Q_id)
            value = []
            value.append(obj.id)
            value.append(obj.ess1)
            value.append(obj.ess2)
            value.append(obj.ess3)
            value.append(obj.ess4)
            value.append(obj.ess5)
            value.append(obj.ess6)
            value.append(obj.ess7)
            value.append(obj.ess8)
            value.append(obj.score)

            keys = ['ESS_id', 'ess1', 'ess2', 'ess3','ess4', 'ess5', 'ess6', 'ess7', 'ess8', 'score']
            message = tools.dictPackage(keys, value)
            message['type'] = 0

        elif type == 1:
            
            obj = MBQ.objects.get(id = Q_id)
            value = []
            value.append(obj.id)
            value.append(obj.q1)
            value.append(obj.q2)
            value.append(obj.q3)
            value.append(obj.q4)
            value.append(obj.q5)
            value.append(obj.q6)
            value.append(obj.q7)
            value.append(obj.q8)
            value.append(obj.q9)
            value.append(obj.q10)
            value.append(obj.BMI)
            
            keys = ['MBQ_id', 'q1', 'q2', 'q3','q4', 'q5', 'q6', 'q7', 'q8', 'q9', 'q10', 'BMI']
            message = tools.dictPackage(keys, value)
            message['type'] = 1
            
        elif type == 2:
            
            obj = SGRQ.objects.get(id = Q_id)
            value = []
            value.append(obj.id)
            value.append(obj.H1)
            value.append(obj.H2)
            value.append(obj.H3)
            value.append(obj.H4)
            value.append(obj.H5)
            value.append(obj.H6)
            value.append(obj.H7)
            value.append(obj.H8)
            value.append(obj.H9)
            value.append(obj.H10)
            value.append(obj.H11)
            value.append(obj.H12)
            value.append(obj.H13)
            value.append(obj.H14)
            value.append(obj.H15)
            value.append(obj.H16)
            value.append(obj.H17)
            value.append(obj.H18)
            value.append(obj.actEff)

            keys = ['SGRQ_id', 'H1', 'H2', 'H3', 'H4', 'H5', 'H6', 'H7', 'H8', 'H9', 'H10', 'H11',
                    'H12', 'H13', 'H14', 'H15', 'H16', 'H17', 'H18', 'actEff']
            message = tools.dictPackage(keys, value)
            message['type'] = 2

    except Exception, e:
        tools.exceptionRecord('select.py','getDetailedQuestionnaireInfo',e)

    return message


#获取某个附件信息
def getOneDetailedAttachInfos(A_id):
    message = {}
    try:
        obj = AttachInfo.objects.get(id = A_id)
        value = []
        value.append(obj.id)
        value.append(str(obj.date))
        value.append(obj.description)
        value.append(obj.P_id)
        value.append(str(obj.S_id))
        value.append(obj.type)
        keys = ['A_id', 'date', 'description', 'P_id', 'S_id', 'type']

        message = tools.dictPackage(keys, value)

    except Exception, e:
        tools.exceptionRecord('select.py','getOneDetailedAttachInfos',e)

    return message

#获取某个 门诊/急诊/住院对应的所有附件信息
# type: 0 OutPatientService   1 Emerg   2 InHospital
def getDetailedAttachInfos(type, S_id):
    list = []
    message = {}
    try:
        values = AttachInfo.objects.filter(type = type, S_id = S_id).values_list('id', 'date', 'D_id', 'name', 'description', 'doc')
        keys = ['A_id', 'date', 'D_id', 'name', 'description', 'doc']
        for value in values:
            message = tools.dictPackage(keys, value)
            message['date'] = str(message['date'])
            list.append(message)

    except Exception, e:
        tools.exceptionRecord('select.py','getDetailedAttachInfos',e)

    return list

#获取某个 门诊/急诊/住院 对应的所有辅助检查信息
def getDetailedAccessoryExamination(type,S_id):
    list = []
    message = {}
    try:
        values = AccessoryExamination.objects.filter(type = type, S_id = S_id).values_list('id', 'date', 'AE_type', 'name', 'description', 'D_id', 'doc')
        keys = ['AE_id', 'date', 'AE_type', 'name', 'description', 'D_id', 'doc']
        for value in values:
            message = tools.dictPackage(keys, value)
            message['date'] = str(message['date'])
            list.append(message)

    except Exception, e:
        tools.exceptionRecord('select.py','getDetailedAccessoryExamination',e)

    return list

#获取某个辅助检查信息
def getOneDetailedAccessoryExamination(AE_id):
    message = {}
    try:
        obj = AccessoryExamination.objects.get(id = AE_id)
        value = []
        value.append(obj.id)
        value.append(str(obj.date))
        value.append(obj.AE_type)
        value.append(obj.description)
        value.append(obj.P_id)
        value.append(str(obj.S_id))
        value.append(obj.type)
        keys = ['AE_id', 'date', 'AE_type', 'description', 'P_id', 'S_id', 'type']

        message = tools.dictPackage(keys, value)

    except Exception, e:
        tools.exceptionRecord('select.py','getOneDetailedAccessoryExamination',e)

    return message
# get the message of a patient for the last 2 weeks
# type = 1 is CAT and MRC sum, type = 2 is explosure
def getMsg2Weeks(P_id, type):
    end = now().date()
    num = 3
    # end = datetime.datetime.strptime('2017-05-16', "%Y-%m-%d").date()
    start = end - timedelta(weeks=num)
    temp = {}
    message =[]
    message.append(temp)
    for i in xrange(num*7 + 1):
        temp[str(i+1)] = str(start + timedelta(days=i))[5:10].replace("-","")
    print temp, len(temp)
    try:
        if type == 1:
            values = CATandMRC.objects.filter(date__gte=start, P_id=P_id).values('date', 'catSum', 'mrc')
        elif type == 2:
            values = PmExposure.objects.filter(date__gte=start, P_id=P_id).values('date','exposure')
        # else:
        #     return message
        for v in values:
            v['date']= str(v['date'])[5:10].replace("-","")
        message.append(list(values))
    except Exception, e:
        tools.exceptionRecord('select.py','getMsg2Weeks',e)
    return message


def patientLogin(P_id,password):
    result = '-3'
    try:
        patient = PatientInfo.objects.get(P_id = P_id)
        if patient.password == password:
            result = '0'
        else:
            result = '-2'
    except:
        result = '-1'

    return result

def getUserGroup(D_id):
    try:
        group = UserInfo.objects.get(id = D_id)
        return int(group.userGroup)
    except Exception, e:
        tools.exceptionRecord('select.py', 'getUserGroup', e)


def getInvitation():
    try:
        message = {}
        list = []
        values = invitation.objects.filter().values_list('id','code','state','date', 'D_id')
        keys = ['id','code','state','date', 'D_id']
        for value in values:
            message = tools.dictPackage(keys, value)
            message['date'] = str(message['date'])
            if message['state'] == "1":
                list.append(message)
        return list
    except Exception, e:
        tools.exceptionRecord('select.py', 'getInvitation', e)

def getUsers():
    try:
        list = []
        message = {}
        values = UserInfo.objects.filter().values_list('id', 'name', 'sex', 'cellphone', 'email', 'title', 'hospital', 'userGroup', 'username')
        keys = ['id', 'name', 'sex', 'cellphone', 'mail', 'title', 'hospital', 'userGroup', 'userName']
        for value in values:
            message = tools.dictPackage(keys, value)
            list.append(message)
        return list
    except Exception,e:
        tools.exceptionRecord('select.py', 'getUsers', e)


def getUserName(id):
    try:
        message = {}
        obj = UserInfo.objects.get(id=id)
        message['userName'] = obj.username
        return message
    except Exception, e:
        tools.exceptionRecord('select.py', 'getUserName', e)

def getAEType(data):
    try:
        message = {}
        print data,"$$$$"
        if int(data['AE_type']) == 1:
            obj = LungFunc.objects.get(AE_id=int(data['AE_id']))
            value = []
            value.append(obj.head)
            value.append(str(obj.date))
            value.append(obj.AE_id)
            value.append(obj.FVC1)
            value.append(obj.FVC2)
            value.append(obj.FVC3)
            value.append(obj.FEV11)
            value.append(obj.FEV12)
            value.append(obj.FEV13)
            value.append(obj.FEV1_FVC1)
            value.append(obj.FEV1_FVC2)
            value.append(obj.FEV1_FVC3)
            value.append(obj.RV_TLC1)
            value.append(obj.RV_TLC2)
            value.append(obj.RV_TLC3)
            value.append(obj.FEV1change)
            value.append(str(obj.GOLD))
            keys = ['head', 'date', 'AE_id', 'FVC1', 'FVC2', 'FVC3', 'FEV11', 'FEV12', 'FEV13', 'FEV1_FVC1', 'FEV1_FVC2', 'FEV1_FVC3',
                    'RV_TLC1', 'RV_TLC2', 'RV_TLC3', 'FEV1change', 'GOLD']
            message = tools.dictPackage(keys, value)

        elif int(data['AE_type']) == 2:
            obj = BloodGasAnalysis.objects.get(AE_id=int(data['AE_id']))
            value = []
            value.append(obj.head)
            value.append(str(obj.date))
            value.append(obj.AE_id)
            value.append(obj.useOxygen)
            value.append(obj.oxygen)
            value.append(obj.PH)
            value.append(obj.PaO2)
            value.append(obj.PaCO2)
            value.append(obj.HCO3)
            value.append(obj.A_aDO2)
            value.append(obj.BEecf)
            value.append(obj.Lac)
            value.append(obj.SaO2)
            keys = ['head', 'date', 'AE_id', 'useOxygen', 'oxygen', 'PH', 'PaO2', 'PaCO2', 'HCO3', 'A_aDO2', 'BEecf', 'Lac','SaO2']
            message = tools.dictPackage(keys, value)

        elif int(data['AE_type']) == 3:
            obj = LungCT.objects.get(AE_id=int(data['AE_id']))
            value = []
            value.append(obj.head)
            value.append(str(obj.date))
            value.append(obj.AE_id)
            value.append(obj.content)
            value.append(obj.other)
            keys = ['head', 'date', 'AE_id', 'content', 'other']
            message = tools.dictPackage(keys, value)

        elif int(data['AE_type']) == 4:
            obj = SleepDetectResult.objects.get(AE_id=int(data['AE_id']))
            value = []
            value.append(obj.head)
            value.append(str(obj.date))
            value.append(obj.AE_id)
            value.append(obj.detectTime)
            value.append(obj.sleep)
            value.append(obj.AHI)
            value.append(obj.ODI)
            value.append(obj.avgSpO2)
            value.append(obj.lowSpO2)
            value.append(obj.relaSpO2)
            value.append(obj.avgBreath)
            value.append(obj.wake)
            value.append(obj.R)
            value.append(obj.N2)
            value.append(obj.N3)
            keys = ['head', 'date', 'AE_id', 'detectTime', 'sleep', 'AHI', 'ODI', 'avgSpO2', 'lowSpO2', 'relaSpO2', 'avgBreath',
                    'wake','R', 'N2','N3']
            message = tools.dictPackage(keys, value)

        elif int(data['AE_type']) == 5:
            obj = UCG.objects.get(AE_id=int(data['AE_id']))
            value = []
            value.append(obj.head)
            value.append(str(obj.date))
            value.append(obj.AE_id)
            value.append(obj.LVEF)
            value.append(obj.PASP)
            value.append(obj.symptom)
            value.append(obj.left)
            value.append(obj.right)
            value.append(obj.other)
            keys = ['head', 'date', 'AE_id', 'LVEF', 'PASP', 'symptom', 'left', 'right', 'other']
            message = tools.dictPackage(keys, value)
            
        elif int(data['AE_type']) == 6:
            print data,"$$$$2"
            obj = Cardiogram.objects.get(AE_id=int(data['AE_id']))
            value = []
            value.append(str(obj.date))
            value.append(obj.AE_id)
            value.append(obj.isNormal)
            value.append(obj.content)
            value.append(obj.other)
            print value
            keys = ['date', 'AE_id', 'isNormal', 'content', 'other']
            message = tools.dictPackage(keys, value)
            

        return message
    except Exception, e:
        tools.exceptionRecord('select.py', 'getAEType', e)

def getAppId(data):
    try:
        message = {}
        obj = AppInfo.objects.get(AI_id = data)
        # print obj
        message['S_id'] = obj.S_id
        message['date'] = str(obj.date)
        # print str(obj.date),"%%%%%%"
        message['type'] = obj.type
        message['P_id'] = obj.P_id
        return message
    except Exception, e:
        tools.exceptionRecord('select.py', 'getAppId', e)
        return -1

def getOEHAll(P_id, para):
    try:
        o = OutPatientServiceInfo.objects.filter(P_id=P_id).values("id","date","place", "date_upload")
        for a in o:
            a['type'] = "0"
        e = EmergCallInfo.objects.filter(P_id=P_id).values("id","date","place", "date_upload")
        for a in e:
            a['type'] = "1"
        h = InHospitalInfo.objects.filter(P_id=P_id).values("id","date","place", "date_upload")
        for a in h:
            a['type'] = "2"

        if(para =="4"):
            q = list(chain(o,e,h))
        elif(para=="0"):
            q = list(o)
        elif(para=="1"):
            q = list(e)
        elif(para=="2"):
            q = list(h)

        newAdded = AppInfo.objects.filter(P_id = P_id, sign = "1").values("S_id", "type")
        temp = list(newAdded)
        # print q
        q = sorted(q, key=lambda q:q['date'], reverse=True) # descending
        print q
        for a in q:
            a['date'] = str(a['date'])
            a['date_upload'] = str(a['date_upload'])
            a['sign'] = "0"
            for t in temp:
                if(a['type'] == t['type'] and a['id'] == t['S_id']):
                    a['sign'] = "1"
        return q
    except Exception, e:
        tools.exceptionRecord('select.py', 'getOEH', e)

def getMR(P_id):
     try:
        values = MedicineChange.objects.filter(P_id=P_id).values("MC_id","date","ch","id")
        temp = list(values)
        temp = sorted(temp, key=lambda temp:temp['date'], reverse=True)
        print  temp
        new = []
        # print type(temp)
        for v in temp:
            # print type(v)
            v['date'] = str(v['date'])
            # print type(v['date']),v['date']
            if(v['ch'] == "1" or v['ch'] == "2"):
                mr = MedicineRecord.objects.filter(MC_id=v['MC_id']).values("sign","doc")
                v['info'] = list(mr)
                new.append(v)
        print new

        return new
     except Exception, e:
        tools.exceptionRecord('select.py', 'getMR', e)

def getMReg(data):
     try:
        # start = datetime.date.today().replace(day=1)
        values = MedicineRegular.objects.filter(P_id=data['P_id']).values("regular","date")
        temp = list(values)
        # print  temp,"temp in getmreg"
        # print data
        # print type(temp)
        for v in temp:
            # print type(v)
            v['date'] = str(v['date'])

        return temp
     except Exception, e:
        tools.exceptionRecord('select.py', 'getMReg', e)

def getAcuteExac(data):
     try:
        # start = datetime.date.today().replace(day=1)
        values = CATandMRC.objects.filter(P_id=data['P_id']).values("acuteExac","date")
        temp = list(values)
        print  temp,"temp in getAcuteExac"
        print data
        print type(temp)
        for v in temp:
            print type(v)
            v['date'] = str(v['date'])

        return temp
     except Exception, e:
        tools.exceptionRecord('select.py', 'getAcuteExac', e)

def getAppInfo(data):
     try:
        start = datetime.date.today().replace(day=1)
        print  start
        values = AppInfo.objects.filter(Q(sign="1")|Q(sign="0",date_upload__gte=start)).values("id","P_id","date","date_upload","type","sign")
        temp = list(values)
        temp = sorted(temp, key=lambda temp:temp['date_upload'])
        temp = sorted(temp, key=lambda temp:temp['P_id'])
        temp = sorted(temp, key=lambda temp:temp['sign'], reverse=True)
        print  temp,"temp in getAppInfo"
        for v in temp:
            v['date'] = str(v['date'])
            v['date_upload'] = str(v['date_upload'])

        return temp
     except Exception, e:
        tools.exceptionRecord('select.py', 'getAppInfo', e)

def getMessage(data):
     try:
        start = datetime.date.today().replace(day=1)
        text = MessageText.objects.filter(Q(sign="1")|Q(sign="0",date_upload__gte=start)).values("id","P_id","date","date_upload","content","sign")
        for t in text:
            t['type'] = "0"
        audio = MessageAudio.objects.filter(Q(sign="1")|Q(sign="0",date_upload__gte=start)).values("id","P_id","date","date_upload","content","sign")
        for a in audio:
            a['type'] = "1"
        q = list(chain(text,audio))
        # print q
        q = sorted(q, key=lambda q:q['date'])
        q = sorted(q, key=lambda q:q['P_id'])
        q = sorted(q, key=lambda q:q['sign'], reverse=True)
        print  q,"q in getMessage"
        for v in q:
            v['date'] = str(v['date'])
            v['date_upload'] = str(v['date_upload'])

        return q
     except Exception, e:
        tools.exceptionRecord('select.py', 'getMessage', e)
        return {"result":"-1"}

def getPatientAppInfo(data):
    try:
        values = AppInfo.objects.filter(P_id = data['P_id'], sign ="1").count()
        return values

    except Exception, e:
        tools.exceptionRecord('select.py', 'getPatientAppInfo', e)
        return -1


def getMC_calendar(data):
     try:
        # start = datetime.date.today().replace(day=1)
        values = MedicineChange.objects.filter(P_id=data['P_id']).exclude(ch = "0").values("ch","date")
        temp = list(values)
        print temp,"temp in getMC_calendar"
        print data
        print type(temp)
        for v in temp:
            print type(v)
            v['date'] = str(v['date'])

        return temp
     except Exception, e:
        tools.exceptionRecord('select.py', 'getMC_calendar', e)


def getAI_calendar(data):
     try:
        # start = datetime.date.today().replace(day=1)
        # print  start
        values = AppInfo.objects.filter(P_id = data['P_id']).values("date","type","sign")
        temp = list(values)
        print  temp,"temp in getAI_calendar"
        for v in temp:
            v['date'] = str(v['date'])

        return temp
     except Exception, e:
        tools.exceptionRecord('select.py', 'getAI_calendar', e)


def getTrackInfo(data):
     try:
        # start = datetime.date.today().replace(day=1)
        today = datetime.date.today()
        gapday = datetime.timedelta(days=int(data['delta']))
        showDay = today - gapday

        values = TrackInfo.objects.filter(P_id = data['P_id'], date = showDay).values("doc")
        temp = list(values)
        print  temp,"temp in getTrackInfo", showDay
        # print os.getcwd()
        # p = open(os.getcwd()+"/media/TrackInfo/1.txt", "r+")
        # p = open("media/TrackInfo/1.txt", "r+")
        if temp == []:
            return [],[116.344776, 39.981916]
        s = open(r"media/"+temp[0]['doc'],'r+')
        a = s.readline()
        print a
        aa = json.loads(a)
        trace_all = []
        temp = []
        count = 0
        average = np.array([0,0])
        flag = 1
        for i in xrange(len(aa)):
            if(aa[i][2]!=0.0):
                temp.append(aa[i][:2])
            else:
                if(count<11):
                    count += 1
                    if(temp!=[]):
                        temp.append(aa[i][:2])
                else:
                    count = 0
                    if(temp!=[]):
                        aver = np.array([0,0])
                        for i in xrange(len(temp)):
                            aver =aver + temp[i]
                        aver = [aver[0]/len(temp),aver[1]/len(temp)]
                        if(flag==1):
                            average = average + aver
                        else:
                            average[0] = average[0] + aver[0]
                            average[1] = average[1] + aver[1]
                            average = [average[0]/2, average[1]/2]
                        flag = 0
                        trace_all.append(temp)
                    temp = []
        print average, trace_all
        if trace_all==[]:
            average = [116.344776, 39.981916]
        return trace_all, [average[0],average[1]]
     except Exception, e:
        tools.exceptionRecord('select.py', 'getTrackInfo', e)

def getDiseaseType(data):
    try:
        print data
        values = DiseaseType.objects.filter(P_id = data['P_id']).values("id", "first", "second", "third", "fourth", "subFirst",
                                                                        "subSecond", "subThird", "subFourth")
        temp = list(values)
        return temp
    except Exception, e:
        tools.exceptionRecord('select.py', 'getDiseaseType', e)
        return False

############ check for whether exist #############

def checkRecordExistForApp(data, table):
    try:
        print data ,"check for cat"
        values = []
        if data['id'] != 'null' :
            return True
        else:
            date = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
            if table == "CATandMRC":
                values = CATandMRC.objects.filter(P_id = data['P_id'], date = date)
            elif table=="PmPmExposure":
                values = PmExposure.objects.filter(P_id = data['P_id'], date = date)
            elif table=="MedicineRegular":
                values = MedicineRegular.objects.filter(P_id = data['P_id'], date = date)
            elif table=="MedicineChange":
                values = MedicineChange.objects.filter(P_id = data['P_id'], date = date)
            elif table=="AppInfo":
                values = AppInfo.objects.filter(P_id = data['P_id'], date = date)

            if len(list(values)) > 0:
                return True
            else:
                return False
    except Exception, e:
        tools.exceptionRecord('select.py', 'checkRecordExistForApp', e)
        return False

def checkMedicineRecordExist(id, sign):
    try:
        print id, sign ,"check for MR"
        values = []
        values = MedicineRecord.objects.filter(MC_id = id, sign = sign)
        if len(list(values)) > 0:
            return True
        else:
            return False
    except Exception, e:
        tools.exceptionRecord('select.py', 'checkRecordExistForApp', e)
        return False


def checkForInfoCompPercent(P_id):
    try:
        end = now().date()
        start = end - timedelta(days=30)
        cat = CATandMRC.objects.filter(date__gte=start, P_id=P_id).values()
        medicineRegular = MedicineRegular.objects.filter(date__gte=start, P_id=P_id).values()
        sum = len(cat) + len(medicineRegular)
        percent = sum/60.0 * 100
        return float('%.2f' % percent)
    except Exception, e:
        tools.exceptionRecord('select.py', 'checkForInfoCompPercent', e)
        return 0
