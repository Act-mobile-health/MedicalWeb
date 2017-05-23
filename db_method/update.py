# -*- coding:UTF-8 -*-
import datetime
from control_method import tools
from Website.models import *
from django.contrib import auth

#修改指定医生信息
#data为医生新的信息，包括D_id
#修改成功返回True,否则返回False
def updateUserInfo(D_id,data):
    try:
        print data['password']
        doctor = UserInfo.objects.get(id=D_id)
        doctor.name = data['name']
        doctor.sex = data['sex']
        if data['birthday'] != '':
            doctor.birthday = datetime.datetime.strptime(data['birthday'], "%Y-%m-%d").date()
        doctor.username = data['userName']
        if data['password'] != '':
            doctor.set_password(data['password'])
        doctor.cellphone = data['cellphone']
        doctor.weChat = data['weChat']
        doctor.mail = data['mail']
        doctor.title = data['title']
        doctor.hospital = data['hospital']
        doctor.department = data['department']
        doctor.userGroup = data['userGroup']
        doctor.save()
        return True
    except Exception, e:         
        tools.exceptionRecord('update.py','updateUserInfo',e)
        return False

# update password for doctor
def updatePassword(D_id,o_pwd, n_pwd):
    try:
        doc = UserInfo.objects.get(id=D_id)
        user = auth.authenticate(username=doc.username, password=o_pwd)

        #判断用户名是否存在
        if user is not None and user.is_active:
            doc.set_password(n_pwd)
            doc.save()
            return True
        else:
            return False
    except Exception, e:
        tools.exceptionRecord('update.py', 'updatePassword', e)
        return False

#修改指定实验组
#注意判断一下D_id与G_id是否正确
# 成功返回True，失败返回False
def updateExpGroup(G_id, name, info, date):
    # TODO
    try:
        group = GroupInfo.objects.get(id = G_id)
        group.name = name
        group.description = info
        if date != '':
            group.date = datetime.datetime.strptime(date, "%Y-%m-%d").date()
        group.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateExpGroup',e)
        return False


#修改指定患者信息，包括患者所属的实验组
#data为患者新的信息，包括D_id，需要判断一下该患者是否归该医生所管理
#修改成功返回True,否则返回False
def updatePatientInfo(data):
    #TODO
    try:
        print data,data['name'],type(data['name'])
        print "#############"
        patient = PatientInfo.objects.get(P_id= data['P_id'])
        patient.sign = data['sign']
        print type(patient.name)
        patient.name = data['name']
        print type(patient.name)
        patient.sex = data['sex']
        if data['birthday'] != '':
            patient.birthday = datetime.datetime.strptime(data['birthday'], "%Y-%m-%d").date()
        patient.age = int(data['age'])
        patient.nation = data['nation']
        patient.height = data['height']
        patient.weight = data['weight']
        patient.education = data['education']
        patient.career = data['career']
        patient.marriage = data['marriage']

        patient.province_h = data['province_h']
        patient.city_h = data['city_h']
        patient.county_h = data['county_h']
        patient.detail_h = data['detail_h']

        patient.province = data['province']
        patient.city = data['city']
        patient.county = data['county']

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

        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updatePatientInfo',e)
        return False


#修改指定家属信息
#data为患者新的信息，包括D_id，P_id，需要判断一下归属关系
#修改成功返回True,否则返回False
def updateRelationInfo(R_id,data):
    # TODO
    try:
        print data
        relation = RelationInfo.objects.get(id=R_id)
        relation.name=data['name']
        relation.sex=data['sex']
        relation.telephone=data['telephone']
        relation.cellphone=data['cellphone']
        relation.weChat=data['weChat']
        print 
        relation.mail=data['mail']
        relation.homeAddr=data['homeAddr']
        relation.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateRelationInfo',e)
        return False

#修改门诊信息
def updateOutPatientServiceInfo(id,data):
    try:

        obj = OutPatientServiceInfo.objects.get(id = id)
        obj.P_id = data['P_id']
        if data['date'] != '':
            obj.date = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.place = data['place']
        obj.isStable = data['isStable']
        obj.isSymptom = data['isSymptom']
        obj.symptom = tools.forCheckbox(data,'symptom')
        obj.physicalExam = data['physicalExam']
        obj.breathErr = data['breathErr']
        obj.acuteExac = data['acuteExac']
        obj.disease = data['disease']
        obj.useAbt = data['useAbt']
        obj.abtType = data['abtType']
        obj.useJmzs = data['useJmzs']
        obj.hospital = data['hospital']
        obj.airRelate = data['airRelate']
        obj.treatMethod = data['treatMethod']
        obj.medicine = data['medicine']
        obj.save()

        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateOutPatientServiceInfo',e)
        return False


#修改急诊信息
def updateEmergCallInfo(id,data):
    try:

        obj = EmergCallInfo.objects.get(id = id)
        # obj.P_id = data['P_id']
        if data['date'] != '':
            obj.date = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.place = data['place']
        obj.symptom = tools.forCheckbox(data,'symptom')
        obj.acuteExac = data['acuteExac']
        obj.disease = data['disease']
        obj.byxCheck = data['byxCheck']
        obj.byxResult = data['byxResult']
        obj.ycWcTreat = data['ycWcTreat']
        obj.useAbt = data['useAbt']
        obj.abtType = data['abtType']
        obj.useJmzs = data['useJmzs']
        obj.ecMethod = data['ecMethod']
        obj.ecDate = data['ecDate']
        obj.hospital = data['hospital']
        obj.treatMethod = data['treatMethod']
        obj.airRelate = data['airRelate']
        obj.medicine = data['medicine']
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateEmergCallInfo',e)
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
        obj.symptom = tools.forCheckbox(data,'symptom')
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
        obj.medicine = data['medicine']
        obj.docAdvice = data['docAdvice']
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateInHospitalInfo',e)
        return False

#修改临床信息
def updateClinicInfo(data):
    try:
        obj = Clinic.objects.get(id = data['Cli_id'])
        obj.P_id = data['P_id']
        obj.type = data['type']
        obj.dangerType = tools.forCheckbox(data,'dangerType')
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
        obj.cure1 = tools.forCheckbox(data,'cure1')
        obj.cure2 = data['cure2']
        obj.cure3 = tools.forCheckbox(data,'cure3')
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
        obj.comp1 = tools.forCheckbox(data,'comp1')
        obj.comp2 = tools.forCheckbox(data,'comp2')
        obj.comp3 = tools.forCheckbox(data,'comp3')
        obj.comp4 = tools.forCheckbox(data,'comp4')
        obj.comp5 = tools.forCheckbox(data,'comp5')
        obj.comp6 = tools.forCheckbox(data,'comp6')
        obj.detail = data['detail']
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateClinicInfo',e)
        return False

#修改问卷信息
def updateQuestionnaireInfo(kind,S_id,data):
    try:
        if kind == 0:
            obj = ESS.objects.get(id = int(data['ESS_id']))
            obj.P_id = data['P_id']
            # obj.type = data['type']
            # obj.S_id = S_id
            obj.ess1 = data['ess1']
            obj.ess2 = data['ess2']
            obj.ess3 = data['ess3']
            obj.ess4 = data['ess4']
            obj.ess5 = data['ess5']
            obj.ess6 = data['ess6']
            obj.ess7 = data['ess7']
            obj.ess8 = data['ess8']
            obj.score = data['score']
            obj.save()
        elif kind == 1:
            obj = MBQ.objects.get(id = int(data['MBQ_id']))
            obj.P_id = data['P_id']
            # obj.type = data['type']
            # obj.S_id = S_id
            obj.q1 = data['q1']
            obj.q2 = data['q2']
            obj.q2 = data['q3']
            obj.q4 = data['q4']
            obj.q5 = data['q5']
            obj.q6 = data['q6']
            obj.q7 = data['q7']
            obj.q8 = data['q8']
            obj.q9 = data['q9']
            obj.q10 = data['q10']
            obj.BMI = data['BMI']
            obj.save()
        elif kind == 2:
            obj = SGRQ.objects.get(id = int(data['SGRQ_id']))
            obj.P_id = data['P_id']
            # obj.type = data['type']
            # obj.S_id = S_id
            obj.H1 = data['H1']
            obj.H2 = data['H2']
            obj.H3 = data['H3']
            obj.H4 = data['H4']
            obj.H5 = data['H5']
            obj.H6 = data['H6']
            obj.H7 = data['H7']
            obj.H8 = data['H8']
            obj.H9 = data['H9']
            obj.H10 = data['H10']
            obj.H11 = tools.forCheckbox(data,'H11')
            obj.H12 = tools.forCheckbox(data,'H12')
            obj.H13 = tools.forCheckbox(data,'H13')
            obj.H14 = data['H14']
            obj.H15 = tools.forCheckbox(data,'H15')
            obj.H16 = tools.forCheckbox(data,'H16')
            obj.H17 = tools.forCheckbox(data,'H17')
            obj.H18 = data['H18']
            obj.actEff = data['actEff']
            obj.save()
        else:
            return False


        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateQuestionnaireInfo',e)
        return False


#修改附件信息
def updateAttachInfo(A_id, D_id, S_id, data, doc):
    try:
        obj = AttachInfo.objects.get(id = A_id)
        # obj.P_id = data['P_id']
        # obj.type = data['type']
        if data['date'] != '':
            obj.date = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        # obj.S_id = S_id
        # obj.D_id = D_id
        obj.description = data['description']
        if doc != None :
            obj.doc = doc
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateAttachInfo',e)
        return False


#修改附件信息
def updateAccessoryExamination(AE_id, D_id, S_id, data, doc):
    try:
        obj = AccessoryExamination.objects.get(id = AE_id)
        # obj.S_id = S_id
        # obj.type = data['type']
        if data['date'] != '':
            obj.date = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        # obj.AE_type = data['AE_type']
        obj.description = data['description']
        if doc != None :
            obj.doc = doc
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateAccessoryExamination',e)
        return False


#update CAT && MRC Table
def updateCATandMRC(data):
    try:
        obj = CATandMRC.objects.get(id = int(data['id']))
        obj.P_id = data['P_id']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.cat1 = data['cat1']
        obj.cat2 = data['cat2']
        obj.cat3 = data['cat3']
        obj.cat4 = data['cat4']
        obj.cat5 = data['cat5']
        obj.cat6 = data['cat6']
        obj.cat7 = data['cat7']
        obj.cat8 = data['cat8']
        obj.catSum = int(data['catSum'])
        obj.mrc = int(data['mrc'])
        obj.acuteExac = data['acuteExac']
        obj.save()
        return int(data['id'])
    except Exception, e:
        tools.exceptionRecord('update.py','updateCATandMRC',e)
        return -1

#update PmExposure Table
def updatePmExposure(data):
    try:
        obj = PmExposure.objects.get(id = int(data['id']))
        obj.P_id = data['P_id']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.exposure = data['exposure']
        obj.save()
        return int(data['id'])
    except Exception, e:
        tools.exceptionRecord('update.py','updatePmExposure',e)
        return -1

#update TrackInfo Table
def updateTrackInfo(data):
    #TODO
    #上次文件存储问题
    try:
        obj = TrackInfo.objects.get(id = int(data['id']))
        obj.P_id = data['P_id']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.name = data['name']
        obj.save()
        return int(data['id'])
    except Exception, e:
        tools.exceptionRecord('update.py','updateTrackInfo',e)
        return -1


#update MedicineRegular Table
def updateMedicineRegular(data):
    try:
        obj = MedicineRegular.objects.get(id = int(data['id']))
        obj.P_id = data['P_id']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.regular = data['regular']
        obj.save()
        return int(data['id'])
    except Exception, e:
        tools.exceptionRecord('update.py','updateMedicineRegular',e)
        return -1

#update MedicineChange Table
def updateMedicineChange(data):
    try:
        obj = MedicineChange.objects.get(id = int(data['id']))
        obj.P_id = data['P_id']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.ch = data['change']
        obj.save()
        return int(data['id'])
    except Exception, e:
        tools.exceptionRecord('update.py','updateMedicineChange',e)
        return -1

#update MedicineRecord Table
def updateMedicineRecord(data):
    try:
        obj = MedicineRecord.objects.get(id = int(data['id']))
        obj.MC_id = data['MC_id']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.medicine = data['medicine']
        obj.name = data['name']
        obj.producer = data['producer']
        obj.save()
        return int(data['id'])
    except Exception, e:
        tools.exceptionRecord('update.py','updateMedicineRecord',e)
        return -1

def updateAppInfo(data):
    id = -1
    try:
        obj = AppInfo.objects.get(id = int(data['id']))
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.P_id = data['P_id']
        # obj.type = data['type']
        return int(data['id'])
    except Exception, e:
        tools.exceptionRecord('update.py','updateAppInfo',e)
        return -1


def updateLungFunc(data):
    try:
        obj = LungFunc.objects.get(AE_id = int(data['AE_id']))
        obj.head = data['head']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.FVC1 = data['FVC1']
        obj.FVC2 = data['FVC2']
        obj.FVC3 = data['FVC3']
        obj.FEV11 = data['FEV11']
        obj.FEV12 = data['FEV12']
        obj.FEV13 = data['FEV13']
        obj.FEV1_FVC1 = data['FEV1_FVC1']
        obj.FEV1_FVC2 = data['FEV1_FVC2']
        obj.FEV1_FVC3 = data['FEV1_FVC3']
        obj.RV_TLC1 = data['RV_TLC1']
        obj.RV_TLC2 = data['RV_TLC2']
        obj.RV_TLC3 = data['RV_TLC3']
        obj.FEV1change = data['FEV1change']
        obj.GOLD = int(data['GOLD'])
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateLungFunc',e)
        return False

def updateBloodGasAnalysis(data):
    try:
        obj = BloodGasAnalysis.objects.get(AE_id = int(data['AE_id']))
        obj.head = data['head']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.useOxygen = data['useOxygen']
        obj.oxygen = data['oxygen']
        obj.PH = data['PH']
        obj.PaO2 = data['PaO2']
        obj.PaCO2 = data['PaCO2']
        obj.HCO3 = data['HCO3']
        obj.A_aDO2 = data['A_aDO2']
        obj.BEecf = data['BEecf']
        obj.Lac = data['Lac']
        obj.SaO2 = data['SaO2']
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateBloodGasAnalysis',e)
        return False

def updateLungCT(data):
    try:
        obj = LungCT.objects.get(AE_id = int(data['AE_id']))
        obj.head = data['head']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.content = tools.forCheckbox(data,'content')
        obj.other = data['other']
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateLungCT',e)
        return False

def updateSleepDetectResult(data):
    try:
        obj = SleepDetectResult.objects.get(AE_id = int(data['AE_id']))
        obj.head = data['head']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.detectTime = data['detectTime']
        obj.sleep = data['sleep']
        obj.AHI = data['AHI']
        obj.ODI = data['ODI']
        obj.avgSpO2 = data['avgSpO2']
        obj.lowSpO2 = data['lowSpO2']
        obj.relaSpO2 = data['relaSpO2']
        obj.avgBreath = data['avgBreath']
        obj.wake = data['wake']
        obj.R = data['R']
        obj.N2 = data['N2']
        obj.N3 = data['N3']
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateSleepDetectResult',e)
        return False

def updateUCG(data):
    try:
        obj = UCG.objects.get(AE_id = int(data['AE_id']))
        obj.head = data['head']
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.LVEF = data['LVEF']
        obj.PASP = data['PASP']
        obj.symptom = data['symptom']
        obj.left = data['left']
        obj.right = data['right']
        obj.other = data['other']
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateUCG',e)
        return False

def updateCardiogram(data):
    try:
        print type(data['AE_id'])
        obj = Cardiogram.objects.get(AE_id = int(data['AE_id']))
        print "###"
        if data['date'] != '':
            obj.date= datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        obj.isNormal = data['isNormal']
        obj.content = tools.forCheckbox(data,'content')
        obj.other = data['other']
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateCardiogram',e)
        return False

def updateMessage(data):
    try:
        if(data['type'] == "0"):
            obj = MessageText.objects.get(id = int(data['id']))
        else:

            obj = MessageAudio.objects.get(id = int(data['id']))
        obj.sign = "0"
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('update.py','updateMessage',e)
        return False
