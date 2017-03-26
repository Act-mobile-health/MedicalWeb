# -*- coding:UTF-8 -*-
from Website.models import DoctorInfo,GroupInfo,PatientGroup,PatientInfo,RelationInfo,OutPatientServiceInfo,\
    EmergCallInfo,InHospitalInfo,Clinic,ESS,MBQ,SGRO,AttachInfo,AccessoryExamination,MedialVisit
import time
from control_method import tools
import datetime
# 添加新用户
# 参数是一个字典，包含医生的所有信息
# 成功返回True，失败返回False

def addDoctorInfo(data):
    #TODO
    # birthday 需要处理成Date格式
    if data['birthday'] != '':
        d = datetime.datetime.strptime(data['birthday'], "%Y-%m-%d").date()
    else:
        d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
    password = tools.md5(data['password'])
    # registerDate会自动生成
    try:
        newObj = DoctorInfo(name = data['name'], sex = data['sex'], birthday = d, userName = data['userName'],
                               password = password, cellphone = data['cellphone'], weChat = data['weChat'],
                               mail = data['mail'], title = data['title'], hospital = data['hospital'],
                               department = data['department'], userGroup = data['userGroup'])
        newObj.save()
        return True
    except Exception, e:
        return False

# 添加新的实验组
# 成功返回True，失败返回False
def addExpGroup(D_id,name,info):
    # TODO
    try:
        newObj = GroupInfo(D_id=D_id,name=name,information=info)
        newObj.save()
        return True
    except :
        return False

# 向实验组中添加患者
#注意判断一下各种id的正确性
# 成功返回True，失败返回False
def addPatientToExpGroup(G_id,P_id):
    # TODO
    try:
        newObj = PatientGroup(G_id=G_id,P_id=P_id)
        newObj.save()
        return True
    except :
        return False

# 添加新患者
# 参数是一个字典，包含患者的所有信息。同时也包含D_id与G_id，需要添加对应的关系表
# 成功返回True，失败返回False
def addPatientInfo(data):
    try:
        if data['birthday'] != '':
            d = datetime.datetime.strptime(data['birthday'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = PatientInfo(P_id = data['P_id'], sign = data['sign'], name = data['name'], sex = data['sex'],
                                 birthday = d, age = data['age'], nation = data['nation'], height = data['height'],
                                 weight = data['weight'], education = data['education'], career = data['career'],
                                 marriage = data['marriage'], photo = data['photo'], homeAddr = data['homeAddr'],
                                 birthAddr = data['birthAddr'], activityAddr1 = data['activityAddr1'],
                                 activityAddr2 = data['activityAddr2'], actionAddr = data['actionAddr'],
                                 diastolicPressure = data['diastolicPressure'],
                                 systolicPressure = data['systolicPressure'], neckCircu = data['neckCircu'],
                                 payment = data['payment'], telephone = data['telephone'],
                                 cellphone = data['cellphone'], partnerPhone = data['partnerPhone'])
        newObj.save()

        newM = MedialVisit(P_id=data['P_id'])
        newM.save()

        #TODO
        #table25~table32


        return True
    except :
        return False

# 添加新家属
# 参数是一个字典，包含患者的所有信息。同时也包含D_id与P_id
# 成功返回True，失败返回False
def addRelationInfo(data):
    try:
        newObj = RelationInfo(P_id = data['P_id'], name = data['name'], sex = data['sex'],
                                   telephone = data['telephone'], cellphone = data['cellphone'],
                                   weChat = data['weChat'], mail = data['mail'], homeAddr = data['homeAddr'])
        newObj.save()
        return True
    except :
        return False


#添加门诊信息
def addOutPatientServiceInfo(data):
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = OutPatientServiceInfo(P_id = data['P_id'], date = d, place = data['place'],
                                       isStabel = data['isStabel'], symptom = data['symptom'],
                                       physicalExam = data['physicalExam'], breathErr = data['breathErr'],
                                       acuteExac = data['acuteExac'], disease = data['disease'],
                                       use_abt = data['use_abt'], useJmzs = data['useJmzs'],
                                       hospital = data['hospital'], airRelate = data['airRelate'],
                                       treatMethod = data['treatMethod'], medicine = data['medicine'])
        newObj.save()

        obj = MedialVisit.objects.get(P_id = data['P_id'])
        obj.o_time = str(int(obj.o_time) + 1)
        obj.save()

        return True
    except:
        return False


#添加急诊信息
def addEmergCallInfo(data):
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        if data['ecDate'] != '':
            ed = datetime.datetime.strptime(data['ecDate'], "%Y-%m-%d").date()
        else:
            ed = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = EmergCallInfo(P_id = data['P_id'], date = d, place = data['place'],
                               symptom = data['symptom'], acuteExac = data['acuteExac'],disease = data['disease'],
                               byxCheck = data['byxCheck'],byxResult = data['byxResult'], ycWcTreat = data['ycWcTreat'],
                               useAbt = data['useAbt'], abtType = data['abtType'], useJmzs = data['useJmzs'],
                               ecMethod = data['ecMethod'], ecDate = ed,hospital = data['hospital'],
                               treatMethod = data['treatMethod'],airRelate = data['airRelate'])
        newObj.save()

        obj = MedialVisit.objects.get(P_id=data['P_id'])
        obj.e_time = str(int(obj.e_time) + 1)
        obj.save()

        return True
    except:
        return False

#添加住院信息
def addInHospitalInfo(data):
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = InHospitalInfo(P_id = data['P_id'], date = d, place = data['place'],
                                commonIcu = data['commonIcu'], symptom = data['symptom'],acuteExac = data['acuteExac'],
                                disease = data['disease'],byxCheck = data['byxCheck'], byxResult = data['byxResult'],
                                ycWcTreat = data['ycWcTreat'], useAbt = data['useAbt'],abtType = data['abtType'],
                                useJmzs = data['useJmzs'],hospitalDays = data['hospitalDays'],
                                airRelate = data['airRelate'],treatMethod = data['treatMethod'],
                                reason = data['reason'],docAdvice = data['docAdvice'])
        newObj.save()

        obj = MedialVisit.objects.get(P_id=data['P_id'])
        obj.h_time = str(int(obj.h_time) + 1)
        obj.save()

        return True
    except:
        return False

#添加临床信息
def addClinicInfo(S_id,data):
    try:
        newObj = Clinic(P_id = data['P_id'], type = data['type'], S_id = S_id,dangerType = data['dangerType'],
                        smoke1 = data['smoke1'],smoke2 = data['smoke2'], smoke3 = data['smoke3'],
                        smoke4 = data['smoke4'],smoke5 = data['smoke5'], smoke6 = data['smoke6'],
                        smoke7 = data['smoke7'],smoke8 = data['smoke8'], smoke9 = data['smoke9'],
                        smoke10 = data['smoke10'],powder1 = data['powder1'], powder2 = data['powder2'],
                        powder3 = data['powder3'],biology1 = data['biology1'], biology2 = data['biology2'],
                        hAir1 = data['hAir1'],hAir2 = data['hAir2'], gm1 = data['gm1'], gm2 = data['gm2'],
                        drink1 = data['drink1'], drink2 = data['drink2'], drink3 = data['drink3'],
                        drink4 = data['drink4'], lung1 = data['lung1'], lung2 = data['lung2'],lung3 = data['lung3'],
                        lung4 = data['lung4'], lung5 = data['lung5'],lung6 = data['lung6'], lung7 = data['lung7'],
                        cure1 = data['cure1'],cure2 = data['cure2'], cure3 = data['cure3'], cure4 = data['cure4'],
                        cure5 = data['cure5'], cure6 = data['cure6'], cure7 = data['cure7'],cure8 = data['cure8'],
                        cure9 = data['cure9'], cure10 = data['cure10'],cure11 = data['cure11'], cure12 = data['cure12'],
                        cure13 = data['cure13'],cure14 = data['cure14'], cure15 = data['cure15'],
                        cure16 = data['cure16'],cure17 = data['cure17'], cure18 = data['cure18'],
                        cure19 = data['cure19'],cure20 = data['cure20'], cure21 = data['cure21'],
                        cure22 = data['cure22'],cure23 = data['cure23'], cure24 = data['cure24'],
                        cure25 = data['cure25'],cure26 = data['cure26'], comp1 = data['comp1'], comp2 = data['comp2'],
                        comp3 = data['comp3'], comp4 = data['comp4'], comp5 = data['comp5'],comp6 = data['comp6'])
        newObj.save()
        return True
    except:
        return False

#添加问卷信息
def addQuestionnaireInfo(type,S_id,data):
    try:
        if type == 0:
            newObj = ESS(P_id = data['P_id'], type = data['type'], S_id = S_id, ess4 = data['ess4'],
                         ess5 = data['ess5'], ess6 = data['ess6'], ess7 = data['ess7'], ess8 = data['ess8'],
                         score = data['score'])
            newObj.save()
        elif type == 1:
            newObj = MBQ(P_id = data['P_id'], type = data['type'], S_id = S_id, q4 = data['q4'],
                         q5 = data['q5'], q6 = data['q6'], q7 = data['q7'], q8 = data['q8'], q9 = data['q9'],
                         q10 = data['q10'], BMI = data['BMI'])
            newObj.save()
        elif type == 2:
            newObj = SGRO(P_id = data['P_id'], type = data['type'], S_id = S_id, q4 = data['q4'],
                          q5 = data['q5'], q6 = data['q6'], q7 = data['q7'], q8 = data['q8'], q9 = data['q9'],
                          q10 = data['q10'], BMI = data['BMI'])
            newObj.save()
        else:
            return False


        return True
    except:
        return False


#添加附件信息
def addAttachInfo(D_id,S_id,data):
    try:
        newObj = AttachInfo(P_id = data['P_id'], type = data['type'], S_id = S_id,D_id = D_id,
                            name = data['name'], information = data['information'],dir = data['dir'])

        #TODO
        # img context没有加
        newObj.save()
        return True
    except:
        return False

#添加附件信息
def addAccessoryExamination(D_id,S_id,data):
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = AccessoryExamination(S_id = S_id, type = data['type'], date = d,
                                      AE_type = data['AE_type'], name = data['name'],
                                      description = data['description'], D_id = D_id)

        newObj.save()
        return True
    except:
        return False
