# -*- coding:UTF-8 -*-
from Website.models import UserInfo,GroupInfo,PatientInfo,PatientGroup,RelationInfo,OutPatientServiceInfo,\
    EmergCallInfo,InHospitalInfo,Clinic,ESS,MBQ,SGRQ,AttachInfo,AccessoryExamination,CATandMRC,PmExposure,\
    MedicalVisit
from django.core.exceptions import ObjectDoesNotExist
from control_method import tools


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
def getDoctorBasicInfo(D_id):
    message = {}
    # TODO
    try:
        obj = UserInfo.objects.get(id = D_id)
        value = []
        value.append(obj.id)
        value.append(obj.name)
        value.append(obj.username)
        value.append(obj.mail)
        value.append(obj.cellphone)
        value.append(obj.hospital)
        value.append(obj.department)
        keys = ['D_id','name','userName','mail','cellphone','hospital','department']
        message = tools.dictPackage(keys,value)
    except Exception, e:
        tools.exceptionRecord('select.py','getDoctorBasicInfo',e)

    return message


# 获取医生的详细信息
# D_id为医生的编号
# 以字典形式返回获取到的详细信息
def getDoctorDetailedInfo(D_id):
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
        tools.exceptionRecord('select.py','getDoctorDetailedInfo',e)
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
        # group_ids = GroupInfo.objects.filter(D_id = D_id).values_list('id')
        # for group_id in group_ids:
        #     patient_ids = PatientGroup.objects.filter(G_id=group_id)
        #     keys = ['P_id', 'name', 'sex', 'age', 'cellphone']
        #     for patient_id in patient_ids:
        #         obj = PatientInfo.objects.get(P_id=patient_id)
        #         value = []
        #         value.append(obj.P_id)
        #         value.append(obj.name)
        #         value.append(obj.sex)
        #         value.append(obj.age)
        #         value.append(obj.cellphone)
        #         message = tools.dictPackage(keys, value)
        #
        #         times = MedicalVisit.objects.get(P_id=patient_id)
        #         message['o_time'] = times.o_time
        #         message['e_time'] = times.e_time
        #         message['h_time'] = times.h_time
        #
        #         # TODO
        #         # healthStatus
        #
        #         list.append(message)
        #
        values = PatientInfo.objects.all().values_list('P_id','name','sex','age','cellphone')
        keys = ['P_id', 'name', 'sex','age','cellphone']
        for value in values:
            message = tools.dictPackage(keys, value)
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
        value.append(obj.homeAddr)
        value.append(obj.birthAddr)
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
        keys = ['id','P_id','sign','name','sex','birthday','age','nation','height','weight','registerTime','education',
                'career','marriage','homeAddr','birthAddr','activityAddr1','activityAddr2','actionAddr',
                'diastolicPressure','systolicPressure','neckCircu','payment','telephone','cellphone','partnerPhone']
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
    list = []
    message = {}
    try:
        values=OutPatientServiceInfo.objects.filter(P_id = P_id).values_list('id')
        keys = ['OPS_id']
        for value in values:
            message = tools.dictPackage(keys,value)
            list.append(message)
    except Exception,e:
        tools.exceptionRecord('select.py','getPatientAllOutPatientServiceInfos',e)

    return list

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
    list = []
    message = {}
    try:
        values=EmergCallInfo.objects.filter(P_id = P_id).values_list('id')
        keys = ['EC_id']
        for value in values:
            message = tools.dictPackage(keys, value)
            list.append(message)
    except Exception, e:
        tools.exceptionRecord('select.py', 'getPatientAllEmergCallInfos', e)

    return list

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
    list = []
    message = {}
    try:
        values=InHospitalInfo.objects.filter(P_id = P_id).values_list('id')
        keys = ['IH_id']
        for value in values:
            message = tools.dictPackage(keys,value)
            list.append(message)
    except Exception,e:
        tools.exceptionRecord('select.py','getPatientAllInHospitalInfos',e)

    return list

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
    from django.utils.timezone import now, timedelta
    end = now().date()
    start = end - timedelta(weeks=2)
    message={}
    try:
        if type == 1:
            values = CATandMRC.objects.filter(date_range=(start, end), P_id=P_id).values_list('catSum')
        elif type == 2:
            values = PmExposure.objects.filter(date_range=(start, end), P_id=P_id).values_list('exposure')
        else:
            return message
        keys = ['day1', 'day2', 'day3', 'day4', 'day5', 'day6', 'day7',
                'day8', 'day9', 'day10', 'day11', 'day12', 'day13', 'day14']
        message = tools.dictPackage(keys, values)
    except Exception, e:
        tools.exceptionRecord('select.py','getMsg2Weeks',e)
    return message


def patientLogin(P_id,password):
    result = '-3'
    try:
        patient = PatientInfo.objects.get(P_id = P_id)
        if patient.password == password:
            result =  '0'
        else:
            result = '-2'
    except:
        result = '-1'

    return result
