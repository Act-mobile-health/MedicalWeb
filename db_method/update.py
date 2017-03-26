# -*- coding:UTF-8 -*-
from Website.models import DoctorInfo,GroupInfo,PatientInfo,PatientGroup,RelationInfo,OutPatientServiceInfo,EmergCallInfo,InHospitalInfo,Clinic,ESS,MBQ,SGRO,AttachInfo,AccessoryExamination
from django.core.exceptions import ObjectDoesNotExist
import datetime
from control_method import tools
#修改指定医生信息
#data为医生新的信息，包括D_id
#修改成功返回True,否则返回False
def updateDoctorInfo(D_id,data):
    try:
        doctor = DoctorInfo.objects.get(id=D_id)
        doctor.name = data['name']
        doctor.sex = data['sex']
        if data['birthday'] != '':
            doctor.birthday = datetime.datetime.strptime(data['birthday'], "%Y-%m-%d").date()
        doctor.userName = data['userName']
        doctor.cellphone = data['cellphone']
        doctor.weChat = data['weChat']
        doctor.mail = data['mail']
        doctor.title = data['title']
        doctor.hospital = data['hospital']
        doctor.department = data['department']
        doctor.userGroup = data['userGroup']
        doctor.save()
        return True
    except:
        return False

# update password for doctor
def updatePassword(D_id,o_pwd, n_pwd):
    try:
        doc = DoctorInfo.objects.get(id=D_id)
        if doc.password == tools.md5(o_pwd):
            doc.password = tools.md5(n_pwd)
            doc.save()
            return True
        else:
            return False
    except ObjectDoesNotExist:
        return False

#修改指定实验组
#注意判断一下D_id与G_id是否正确
# 成功返回True，失败返回False
def updateExpGroup(G_id,name,info):
    # TODO
    try:
        group = GroupInfo.objects.get(id = G_id)
        group.name = name
        group.information = info
        group.save()
        return True
    except :
        return False


#修改指定患者信息，包括患者所属的实验组
#data为患者新的信息，包括D_id，需要判断一下该患者是否归该医生所管理
#修改成功返回True,否则返回False
def updatePatientInfo(data):
    #TODO
    try:
        patient = PatientInfo.objects.get(P_id= data['P_id'])
        patient.sign = data['sign']
        patient.name = data['name']
        patient.sex = data['sex']
        if data['birthday'] != '':
            patient.birthday = datetime.datetime.strptime(data['birthday'], "%Y-%m-%d").date()
        patient.age = data['age']
        patient.nation = data['nation']
        patient.height = data['height']
        patient.weight = data['weight']
        patient.education = data['education']
        patient.career = data['career']
        patient.marriage = data['marriage']
        patient.photo = data['photo']
        patient.homeAddr = data['homeAddr']
        patient.birthAddr = data['birthAddr']
        patient.activityAddr1 = data['activityAddr1']
        patient.activityAddr2 = data['activityAddr2']
        patient.actionAddr = data['actionAddr']
        patient.diastolicPressure = data['diastolicPressure']
        patient.systolicPressure = data['systolicPressure']
        patient.neckCircu = data['neckCircu']
        patient.payment = data['payment']
        patient.telephone = data['telephone']
        patient.cellphone = data['cellphone']
        patient.partnerPhone = data['partnerPhone']
        patient.save()

    except :
        return False


#修改指定家属信息
#data为患者新的信息，包括D_id，P_id，需要判断一下归属关系
#修改成功返回True,否则返回False
def updateRelationInfo(R_id,data):
    # TODO
    try:
        relation = RelationInfo.objects.get(id=R_id)
        relation.name=data['name']
        relation.sex=data['sex']
        relation.telephone=data['telephone']
        relation.cellphone=data['cellphone']
        relation.weChate=data['weChat']
        relation.mail=data['mail']
        relation.homeAddr=data['homeAddr']
        relation.save()
    except :
        return False

#修改门诊信息
def updateOutPatientServiceInfo(id,data):
    try:

        obj = OutPatientServiceInfo.objects.get(id = id)
        obj.P_id = data['P_id']
        if data['date'] != '':
            obj.date = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.place = data['place']
        obj.isStabel = data['isStabel']
        obj.symptom = data['symptom']
        obj.physicalExam = data['physicalExam']
        obj.breathErr = data['breathErr']
        obj.acuteExac = data['acuteExac']
        obj.disease = data['disease']
        obj.use_abt = data['use_abt']
        obj.useJmzs = data['useJmzs']
        obj.hospital = data['hospital']
        obj.airRelate = data['airRelate']
        obj.treatMethod = data['treatMethod']
        obj.medicine = data['medicine']
        obj.save()

        return True
    except:
        return False


#修改急诊信息
def updateEmergCallInfo(id,data):
    try:

        obj = EmergCallInfo.objects.get(id = id)
        obj.P_id = data['P_id']
        if data['date'] != '':
            obj.date = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.place = data['place']
        obj.symptom = data['symptom']
        obj.acuteExac = data['acuteExac']
        obj.disease = data['disease']
        obj.byxCheck = data['byxCheck']
        obj.byxResult = data['byxResult']
        obj.ycWcTreat = data['ycWcTreat']
        obj.useAbt = data['useAbt']
        obj.abtType = data['abtType']
        obj.useJmzs = data['useJmzs']
        obj.ecMethod = data['ecMethod']
        if data['ecDate'] != '':
            obj.ecDate = datetime.datetime.strptime(data['ecDate'], "%Y-%m-%d").date()
        obj.hospital = data['hospital']
        obj.treatMethod = data['treatMethod']
        obj.airRelate = data['airRelate']
        obj.save()
        return True
    except:
        return False

#修改住院信息
def updateInHospitalInfo(id,data):
    try:
        obj = InHospitalInfo.objects.get(id = id)
        obj.P_id = data['P_id']
        if data['date'] != '':
            obj.date = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.place = data['place']
        obj.commonIcu = data['commonIcu']
        obj.symptom = data['symptom']
        obj.acuteExac = data['acuteExac']
        obj.disease = data['disease']
        obj.byxCheck = data['byxCheck']
        obj.byxResult = data['byxResult']
        obj.ycWcTreat = data['ycWcTreat']
        obj.useAbt = data['useAbt']
        obj.abtType = data['abtType']
        obj.useJmzs = data['useJmzs']
        obj.hospitalDays = data['hospitalDays']
        obj.airRelate = data['airRelate']
        obj.treatMethod = data['treatMethod']
        obj.reason = data['reason']
        obj.docAdvice = data['docAdvice']
        obj.save()
        return True
    except:
        return False

#修改临床信息
def updateClinicInfo(S_id,data):
    try:
        obj = Clinic.objects.get(id = data['Cli_id'])
        obj.P_id = data['P_id']
        obj.type = data['type']
        obj.S_id = S_id
        obj.dangerType = data['dangerType']
        obj.smoke1 = data['smoke1']
        obj.smoke2 = data['smoke2']
        obj.smoke3 = data['smoke3']
        obj.smoke4 = data['smoke4']
        obj.smoke5 = data['smoke5']
        obj.smoke6 = data['smoke6']
        obj.smoke7 = data['smoke7']
        obj.smoke8 = data['smoke8']
        obj.smoke9 = data['smoke9']
        obj.smoke10 = data['smoke10']
        obj.powder1 = data['powder1']
        obj.powder2 = data['powder2']
        obj.powder3 = data['powder3']
        obj.biology1 = data['biology1']
        obj.biology2 = data['biology2']
        obj.hAir1 = data['hAir1']
        obj.hAir2 = data['hAir2']
        obj.gm1 = data['gm1']
        obj.gm2 = data['gm2']
        obj.drink1 = data['drink1']
        obj.drink2 = data['drink2']
        obj.drink3 = data['drink3']
        obj.drink4 = data['drink4']
        obj.lung1 = data['lung1']
        obj.lung2 = data['lung2']
        obj.lung3 = data['lung3']
        obj.lung4 = data['lung4']
        obj.lung5 = data['lung5']
        obj.lung6 = data['lung6']
        obj.lung7 = data['lung7']
        obj.cure1 = data['cure1']
        obj.cure2 = data['cure2']
        obj.cure3 = data['cure3']
        obj.cure4 = data['cure4']
        obj.cure5 = data['cure5']
        obj.cure6 = data['cure6']
        obj.cure7 = data['cure7']
        obj.cure8 = data['cure8']
        obj.cure9 = data['cure9']
        obj.cure10 = data['cure10']
        obj.cure11 = data['cure11']
        obj.cure12 = data['cure12']
        obj.cure13 = data['cure13']
        obj.cure14 = data['cure14']
        obj.cure15 = data['cure15']
        obj.cure16 = data['cure16']
        obj.cure17 = data['cure17']
        obj.cure18 = data['cure18']
        obj.cure19 = data['cure19']
        obj.cure20 = data['cure20']
        obj.cure21 = data['cure21']
        obj.cure22 = data['cure22']
        obj.cure23 = data['cure23']
        obj.cure24 = data['cure24']
        obj.cure25 = data['cure25']
        obj.cure26 = data['cure26']
        obj.comp1 = data['comp1']
        obj.comp2 = data['comp2']
        obj.comp3 = data['comp3']
        obj.comp4 = data['comp4']
        obj.comp5 = data['comp5']
        obj.comp6 = data['comp6']
        obj.save()
        return True
    except:
        return False

#修改问卷信息
def updateQuestionnaireInfo(type,S_id,data):
    try:
        if type == 0:
            obj = ESS.objects.get(id = int(data['ESS_id']))
            obj.P_id = data['P_id']
            obj.type = data['type']
            obj.S_id = S_id
            obj.ess4 = data['ess4']
            obj.ess5 = data['ess5']
            obj.ess6 = data['ess6']
            obj.ess7 = data['ess7']
            obj.ess8 = data['ess8']
            obj.score = data['score']
            obj.save()
        elif type == 1:
            obj = MBQ.objects.get(id = int(data['MBQ_id']))
            obj.P_id = data['P_id']
            obj.type = data['type']
            obj.S_id = S_id
            obj.q4 = data['q4']
            obj.q5 = data['q5']
            obj.q6 = data['q6']
            obj.q7 = data['q7']
            obj.q8 = data['q8']
            obj.q9 = data['q9']
            obj.q10 = data['q10']
            obj.BMI = data['BMI']
            obj.save()
        elif type == 2:
            obj = SGRO.objects.get(id = int(data['SGRO_id']))
            obj.P_id = data['P_id']
            obj.type = data['type']
            obj.S_id = S_id
            obj.H4 = data['H4']
            obj.H5 = data['H5']
            obj.H6 = data['H6']
            obj.H7 = data['H7']
            obj.H8 = data['H8']
            obj.H9 = data['H9']
            obj.H10 = data['H10']
            obj.H11_1 = data['H11_1']
            obj.H11_2 = data['H11_2']
            obj.H11_3 = data['H11_3']
            obj.H11_4 = data['H11_4']
            obj.H11_5 = data['H11_5']
            obj.H11_6 = data['H11_6']
            obj.H11_7 = data['H11_7']
            obj.H12_1 = data['H12_1']
            obj.H12_2 = data['H12_2']
            obj.H12_3 = data['H12_3']
            obj.H12_4 = data['H12_4']
            obj.H12_5 = data['H12_5']
            obj.H12_6 = data['H12_6']
            obj.H13_1 = data['H13_1']
            obj.H13_2 = data['H13_2']
            obj.H13_3 = data['H13_3']
            obj.H13_4 = data['H13_4']
            obj.H13_5 = data['H13_5']
            obj.H13_6 = data['H13_6']
            obj.H13_7 = data['H13_7']
            obj.H13_8 = data['H13_8']
            obj.H14 = data['H14']
            obj.H15_1 = data['H15_1']
            obj.H15_2 = data['H15_2']
            obj.H15_3 = data['H15_3']
            obj.H15_4 = data['H15_4']
            obj.H16_1 = data['H16_1']
            obj.H16_2 = data['H16_2']
            obj.H16_3 = data['H16_3']
            obj.H16_4 = data['H16_4']
            obj.H16_5 = data['H16_5']
            obj.H16_6 = data['H16_6']
            obj.H16_7 = data['H16_7']
            obj.H16_8 = data['H16_8']
            obj.H16_9 = data['H16_9']
            obj.H16_10 = data['H16_10']
            obj.H17_1 = data['H17_1']
            obj.H17_2 = data['H17_2']
            obj.H17_3 = data['H17_3']
            obj.H17_4 = data['H17_4']
            obj.H17_5 = data['H17_5']
            obj.H18 = data['H18']
            obj.actEff = data['actEff']
            obj.save()
        else:
            return False


        return True
    except:
        return False


#修改附件信息
def updateAttachInfo(A_id,D_id,S_id,data):
    try:
        obj = AttachInfo.objects.get(id = A_id)
        obj.P_id = data['P_id']
        obj.type = data['type']
        obj.S_id = S_id
        obj.D_id = D_id
        obj.name = data['name']
        obj.information = data['information']
        obj.dir = data['dir']
        #TODO
        # img context没有加
        obj.save()
        return True
    except:
        return False


#修改附件信息
def updateAccessoryExamination(AE_id,D_id,S_id,data):
    try:
        obj = AccessoryExamination.objects.get(id = AE_id)
        obj.S_id = S_id
        obj.type = data['type']
        if data['date'] != '':
            obj.date = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.AE_type = data['AE_type']
        obj.name = data['name']
        obj.description = data['description']
        obj.D_id = D_id
        obj.save()
        return True
    except:
        return False
