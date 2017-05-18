# -*- coding:UTF-8 -*-
from control_method import tools
from Website.models import *
import datetime, random
# 添加新用户
# 参数是一个字典，包含医生的所有信息
# 成功返回True，失败返回False

def addUserInfo(data):

    password = tools.md5(data['password'])
    # registerDate会自动生成
    try:
        print data
        user = UserInfo()
        user.username = data['userName']
        user.set_password(data['password'])
        user.email = data['mail']
        user.save()
        # newObj = UserInfo.objects.create_user(data['userName'], data['mail'], password)
        # newObj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addUserInfo',e)
        return False

# 添加新的实验组
# 成功返回True，失败返回False
def addExpGroup(D_id,name,info,date):
    # TODO
    try:
        if date != '':
            d = datetime.datetime.strptime(date, "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = GroupInfo(D_id=D_id,name=name,description=info, date = d)
        newObj.save()
        return True
    except Exception, e:         
        tools.exceptionRecord('insert.py','addExpGroup',e)
        return False

# 向实验组中添加患者
#注意判断一下各种id的正确性
# 成功返回True，失败返回False
def addPatientToExpGroup(G_id, data):
    # TODO
    try:
        for item in data:
            newObj = PatientGroup(G_id=G_id, P_id=item)
            newObj.save()
        return True
    except Exception, e:         
        tools.exceptionRecord('insert.py','addPatientToExpGroup',e)
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
                                 marriage = data['marriage'], province_h = data['province_h'], city_h = data['city_h'],
                                 county_h = data['county_h'], detail_h = data['detail_h'], province = data['province'],
                                 city = data['city'],county = data['county'], activityAddr1 = data['activityAddr1'],
                                 activityAddr2 = data['activityAddr2'], actionAddr = data['actionAddr'],
                                 diastolicPressure = data['diastolicPressure'],
                                 systolicPressure = data['systolicPressure'], neckCircu = data['neckCircu'],
                                 payment = data['payment'], telephone = data['telephone'],
                                 cellphone = data['cellphone'], partnerPhone = data['partnerPhone'])
        newObj.save()
        newM = MedicalVisit(P_id=data['P_id'],o_time="0",e_time="0",h_time="0")
        newM.save()
        #TODO
        #table25~table32


        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addPatientInfo',e)
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
    except Exception, e:         
        tools.exceptionRecord('insert.py','addRelationInfo',e)
        return False


#添加门诊信息
def addOutPatientServiceInfo(data):
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        print data
        place_temp = data['place']
        if(data['place'] ==''):
            place_temp = "未填写"
        newObj = OutPatientServiceInfo(P_id = data['P_id'], date = d, place = place_temp,isSymptom = data['isSymptom'],
                                       isStable = data['isStable'], symptom = tools.forCheckbox(data,'symptom'),
                                       physicalExam = data['physicalExam'], breathErr = data['breathErr'],
                                       acuteExac = data['acuteExac'], disease = data['disease'],
                                       useAbt = data['useAbt'], abtType=data['abtType'], useJmzs = data['useJmzs'],
                                       hospital = data['hospital'], airRelate = data['airRelate'],
                                       treatMethod = data['treatMethod'], medicine = data['medicine'])
        newObj.save()

        obj = MedicalVisit.objects.get(P_id = data['P_id'])
        obj.o_time = str(int(obj.o_time) + 1)
        obj.save()

        return True
    except Exception, e:
        tools.exceptionRecord('insert.py', 'addOutPatientServiceInfo', e)
        return False


#添加急诊信息
def addEmergCallInfo(data):
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()

        place_temp = data['place']
        if(data['place'] ==''):
            place_temp = "未填写"
        newObj = EmergCallInfo(P_id = data['P_id'], date = d, place = place_temp,
                               symptom = tools.forCheckbox(data,'symptom'), acuteExac = data['acuteExac'],disease = data['disease'],
                               byxCheck = data['byxCheck'],byxResult = data['byxResult'], ycWcTreat = data['ycWcTreat'],
                               useAbt = data['useAbt'], abtType = data['abtType'], useJmzs = data['useJmzs'],
                               ecMethod = data['ecMethod'], ecDate = data['ecDate'], hospital = data['hospital'],
                               treatMethod = data['treatMethod'],airRelate = data['airRelate'], medicine = data['medicine'])
        newObj.save()

        obj = MedicalVisit.objects.get(P_id=data['P_id'])
        obj.e_time = str(int(obj.e_time) + 1)
        obj.save()

        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addEmergCallInfo',e)
        return False

#添加住院信息
def addInHospitalInfo(data):
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        print data
        place_temp = data['place']
        if(data['place'] ==''):
            place_temp = "未填写"
        newObj = InHospitalInfo(P_id = data['P_id'], date = d, place = place_temp,
                                commonIcu = data['commonIcu'], symptom = tools.forCheckbox(data,'symptom'),acuteExac = data['acuteExac'],
                                disease = data['disease'],byxCheck = data['byxCheck'], byxResult = data['byxResult'],
                                ycWcTreat = data['ycWcTreat'], useAbt = data['useAbt'],abtType = data['abtType'],
                                useJmzs = data['useJmzs'],hospitalDays = data['hospitalDays'],
                                airRelate = data['airRelate'],treatMethod = data['treatMethod'],
                                medicine = data['medicine'],docAdvice = data['docAdvice'])
        newObj.save()

        obj = MedicalVisit.objects.get(P_id=data['P_id'])
        obj.h_time = str(int(obj.h_time) + 1)
        obj.save()

        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addInHospitalInfo',e)
        return False

#添加临床信息
def addClinicInfo(S_id,data):
    try:

        newObj = Clinic(P_id = data['P_id'], type = data['type'], S_id = S_id, dangerType = tools.forCheckbox(data,'dangerType'),
                        smoke1 = data['smoke1'],smoke2 = data['smoke2'], smoke3 = data['smoke3'],
                        smoke4 = data['smoke4'],smoke5 = data['smoke5'], smoke6 = data['smoke6'],
                        smoke7 = data['smoke7'],smoke8 = data['smoke8'], smoke9 = data['smoke9'],
                        smoke10 = data['smoke10'],powder1 = data['powder1'], powder2 = data['powder2'],
                        powder3 = data['powder3'],biology1 = data['biology1'], biology2 = data['biology2'],
                        hAir1 = data['hAir1'],hAir2 = data['hAir2'], gm1 = data['gm1'], gm2 = data['gm2'],
                        drink1 = data['drink1'], drink2 = data['drink2'], drink3 = data['drink3'],
                        drink4 = data['drink4'], lung1 = data['lung1'], lung2 = data['lung2'],lung3 = data['lung3'],
                        lung4 = data['lung4'], lung5 = data['lung5'],lung6 = data['lung6'], lung7 = data['lung7'],
                        cure1 = tools.forCheckbox(data,'cure1'),cure2 = data['cure2'], cure3 = tools.forCheckbox(data,'cure3'), cure4 = data['cure4'],
                        cure5 = data['cure5'], cure6 = data['cure6'], cure7 = data['cure7'],cure8 = data['cure8'],
                        cure9 = data['cure9'], cure10 = data['cure10'],cure11 = data['cure11'], cure12 = data['cure12'],
                        cure13 = data['cure13'],cure14 = data['cure14'], cure15 = data['cure15'],
                        cure16 = data['cure16'],cure17 = data['cure17'], cure18 = data['cure18'],
                        cure19 = data['cure19'],cure20 = data['cure20'], cure21 = data['cure21'],
                        cure22 = data['cure22'],cure23 = data['cure23'], cure24 = data['cure24'],
                        cure25 = data['cure25'],cure26 = data['cure26'], comp1 = tools.forCheckbox(data,'comp1'), comp2 = tools.forCheckbox(data,'comp2'),
                        comp3 = tools.forCheckbox(data,'comp3'), comp4 = tools.forCheckbox(data,'comp4'), comp5 = tools.forCheckbox(data,'comp5'),
                        comp6 = tools.forCheckbox(data,'comp6'),detail = data['detail'])
        newObj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addClinicInfo',e)
        return False

#添加问卷信息
def addQuestionnaireInfo(kind,S_id,data):
    try:
        if kind == 0:
            newObj = ESS(P_id = data['P_id'], type = data['type'], S_id = S_id, ess1 = data['ess1'],
                         ess2 = data['ess2'], ess3 = data['ess3'], ess4 = data['ess4'],
                         ess5 = data['ess5'], ess6 = data['ess6'], ess7 = data['ess7'], ess8 = data['ess8'],
                         score = data['score'])
            newObj.save()

        elif kind == 1:
            newObj = MBQ(P_id = data['P_id'], type = data['type'], S_id = S_id, q1 = data['q1'],
                         q2 = data['q2'], q3 = data['q3'], q4 = data['q4'],
                         q5 = data['q5'], q6 = data['q6'], q7 = data['q7'], q8 = data['q8'], q9 = data['q9'],
                         q10 = data['q10'], BMI = data['BMI'])
            newObj.save()

        elif kind == 2:
            newObj = SGRQ(P_id = data['P_id'], type = data['type'], S_id = S_id, H1 = data['H1'],
                          H2 = data['H2'], H3 = data['H3'], H4 = data['H4'], H5 = data['H5'],
                          H6 = data['H6'], H7 = data['H7'], H8 = data['H8'], H9 = data['H9'],
                          H10 = data['H10'], H11 = tools.forCheckbox(data,'H11'), H12 = tools.forCheckbox(data,'H12'),
                          H13 = tools.forCheckbox(data,'H13'), H14 = data['H14'],  H15 = tools.forCheckbox(data,'H15'),
                          H16 = tools.forCheckbox(data,'H16'), H17 = tools.forCheckbox(data,'H17'), H18 = data['H18'], actEff = data['actEff'])
            newObj.save()
        else:
            return False


        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addQuestionnaireInfo',e)
        return False


#添加附件信息
def addAttachInfo(D_id, S_id, data, doc):
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = AttachInfo(P_id = data['P_id'], type = data['type'],  date = d, S_id = S_id, D_id = D_id,
                            name = tools.md5(str(random.randint(0,9))+str(datetime.datetime.now().strftime("%Y%m%d%H%M%S"))),
                            description = data['description'], doc = doc)

        #TODO
        # img context没有加
        newObj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addAttachInfo',e)
        return False

def addAttachInfo2(P_id, D_id, S_id, description, doc, type, date):
    try:
        if date!= '':
            d = datetime.datetime.strptime(date, "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = AttachInfo(P_id = P_id, type = type,  date = d, S_id = S_id, D_id = D_id,
                            name = tools.md5(str(random.randint(0,9))+str(datetime.datetime.now().strftime("%Y%m%d%H%M%S"))),
                            description = description, doc = doc)

        #TODO
        # img context没有加
        newObj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addAttachInfo2',e)
        return False

#添加附件信息
def addAccessoryExamination(D_id,S_id, data, doc):
    try:
        print doc,"doccccccc"
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = AccessoryExamination(P_id = data['P_id'], S_id = S_id, type = data['type'], date = d, AE_type = data['AE_type'],
                                      name = tools.md5(str(random.randint(0,9))+str(datetime.datetime.now().strftime("%Y%m%d%H%M%S"))),
                                      description = data['description'], D_id = D_id, doc = doc)

        newObj.save()

        if data['AE_type'] == "1":
            Obj = LungFunc(AE_id = newObj.id, P_id = data['P_id'])
            Obj.save()
        elif data['AE_type'] == "2":
            Obj = BloodGasAnalysis(AE_id = newObj.id, P_id = data['P_id'])
            Obj.save()
        elif data['AE_type'] == "3":
            Obj = LungCT(AE_id = newObj.id, P_id = data['P_id'])
            Obj.save()
        elif data['AE_type'] == "4":
            Obj = SleepDetectResult(AE_id = newObj.id, P_id = data['P_id'])
            Obj.save()
        elif data['AE_type'] == "5":
            Obj = UCG(AE_id = newObj.id, P_id = data['P_id'])
            Obj.save()
        elif data['AE_type'] == "6":
            Obj = Cardiogram(AE_id = newObj.id, P_id = data['P_id'])
            Obj.save()

        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addAccessoryExamination',e)
        return False


#add CAT && MRC Table
def addCATandMRC(data):
    id = -1
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = CATandMRC(P_id = data['P_id'], date = d, cat1 = data['cat1'], cat2 = data['cat2'], cat3 = data['cat3'],
                           cat4 = data['cat4'], cat5 = data['cat5'], cat6 = data['cat6'], cat7 = data['cat7'],
                           cat8 = data['cat8'], catSum = data['catSum'], mrc = data['mrc'],
                           acuteExac = data['acuteExac'])
        newObj.save()
        id = newObj.id
        return id
    except Exception, e:
        tools.exceptionRecord('insert.py','addCATandMRC',e)
        return id

#add PmExposure Table
def addPmExposure(data):
    id = -1
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = PmExposure(P_id = data['P_id'], date = d, exposure = data['exposure'])
        newObj.save()
        id = newObj.id
        return id
    except Exception, e:
        tools.exceptionRecord('insert.py','addPmExposure',e)
        return id


#add TrackInfo Table
def addTrackInfo(data, doc):
    #TODO
    #如何存储file
    id = -1
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = TrackInfo(P_id = data['P_id'], date = d, doc = doc)
        newObj.save()
        id = newObj.id
        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addTrackInfo',e)
        return False

#add MedicineRegular Table
def addMedicineRegular(data):
    id = -1
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = MedicineRegular(P_id = data['P_id'], date = d, regular = data['regular'])
        newObj.save()
        id = newObj.id
        return id
    except Exception, e:
        tools.exceptionRecord('insert.py','addMedicineRegular',e)
        return id

#add MedicineChange Table
def addMedicineChange(data):
    id = -1
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        newObj = MedicineChange(P_id = data['P_id'], date = d, change = data['change'],MC_id = data['MC_id'])
        newObj.save()
        id = newObj.id
        return id
    except Exception, e:
        tools.exceptionRecord('insert.py','addMedicineChange',e)
        return id

#add MedicineRecord Table
def addMedicineRecord(myFile, id, sign):

    try:
        newObj = MedicineRecord(MC_id = id, doc = myFile, sign = sign)
        newObj.save()

        return newObj.id
    except Exception, e:
        tools.exceptionRecord('insert.py','addMedicineRecord',e)
        return -1

def addAppInfo(data):
    id = -1
    try:
        if data['date'] != '':
            d = datetime.datetime.strptime(data['date'], "%Y-%m-%d").date()
        else:
            d = datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date()
        obj = AppInfo(P_id = data['P_id'], date = d, type = data['type'],AI_id = data['AI_id'])
        # print id
        if(data['type']=="0"):
            newObj = OutPatientServiceInfo(P_id = data['P_id'], date = d)
            newObj.save()
            obj1 = MedicalVisit.objects.get(P_id = data['P_id'])
            obj1.o_time = str(int(obj1.o_time) + 1)
            obj1.save()
            obj.S_id = newObj.id
        elif(data['type']=="1"):
            newObj = EmergCallInfo(P_id = data['P_id'], date = d)
            newObj.save()
            obj1 = MedicalVisit.objects.get(P_id = data['P_id'])
            obj1.e_time = str(int(obj1.e_time) + 1)
            obj1.save()
            obj.S_id = newObj.id
        elif(data['type']=="2"):
            newObj = InHospitalInfo(P_id = data['P_id'], date = d)
            newObj.save()
            obj1 = MedicalVisit.objects.get(P_id = data['P_id'])
            obj1.h_time = str(int(obj1.h_time) + 1)
            obj1.save()
            obj.S_id = newObj.id
        obj.save()
        id = obj.id
        return str(id)
    except Exception, e:
        tools.exceptionRecord('insert.py','addAppInfo',e)
        return str(id)


def addInvitation(D_id,data):
    id = -1
    temp = -1
    try:
        if data['uid'] == "":
            temp = D_id
        else:
            temp = data['uid']
        print temp
        num = int(data['num'])
        for i in xrange(num):
            code = tools.randomStr()
            newObj = invitation(code = data['prefix']+code, D_id = D_id, uid = temp)
            newObj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('insert.py', 'addInvitation', e)
        return False

def addAirInfo(data):
    try:
        key = data.keys()[0]
        dt = datetime.datetime.strptime(data[key]['Date_Time'], "%Y-%m-%d %H:%M:%S")
        # print dt,"234232323232333333333333333333"
        pm25 = {} #地点:值
        co = {}
        no2 = {}
        so2 = {}
        pm10 = {}
        o3 = {}

        # print data,len(data)
        for dic in data:
            # print data[dic]['Station']
            pm25[tools.WordToPinyin(data[dic]['Station'])] = data[dic]['PM2.5']
            co[tools.WordToPinyin(data[dic]['Station'])] = data[dic]['CO']
            no2[tools.WordToPinyin(data[dic]['Station'])] = data[dic]['NO2']
            so2[tools.WordToPinyin(data[dic]['Station'])] = data[dic]['SO2']
            pm10[tools.WordToPinyin(data[dic]['Station'])] = data[dic]['PM10']
            o3[tools.WordToPinyin(data[dic]['Station'])] = data[dic]['O3']

        new_PM25 = PM25(dateTime=dt, zhiWuYuan=pm25.get('zhiWuYuan'), yunGang=pm25.get('yunGang'), yuFa=pm25.get('yuFa'),
                        yongLeDian=pm25.get('yongLeDian'), yongDingMenNei=pm25.get('yongDingMenNei'), yiZhuang=pm25.get('yiZhuang'),
                        yanQing=pm25.get('yanQing'), xiZhiMenBei=pm25.get('xiZhiMenBei'), wanShouXiGong=pm25.get('wanShouXiGong'),
                        wanLiu=pm25.get('wanLiu'), tongZhou=pm25.get('tongZhou'), tianTan=pm25.get('tianTan'),
                        qianMen=pm25.get('qianMen'), shunYi=pm25.get('shunYi'), pingGu=pm25.get('pingGu'),
                        nongZhanGuan=pm25.get('nongZhanGuan'), nanSanHuan=pm25.get('nanSanHuan'),
                        miYunShuiKu=pm25.get('miYunShuiKu'), miYun=pm25.get('miYun'), menTouGou=pm25.get('menTouGou'),
                        liuLiHe=pm25.get('liuLiHe'), huaiRou=pm25.get('huaiRou'), guanYuan=pm25.get('guanYuan'),
                        guCheng=pm25.get('guCheng'), fengTaiHuaYuan=pm25.get('fengTaiHuaYuan'), fangShan=pm25.get('fangShan'),
                        dongSiHuan=pm25.get('dongSiHuan'), dongSi=pm25.get('dongSi'), dongGaoCun=pm25.get('dongGaoCun'),
                        dingLing=pm25.get('dingLing'), daXing=pm25.get('daXing'), changPing=pm25.get('changPing'),
                        beiBuXinQu=pm25.get('beiBuXinQu'), baDaLing=pm25.get('baDaLing'), aoTiZhongXin=pm25.get('aoTiZhongXin'))
        new_PM25.save()

        new_CO = CO(dateTime=dt, zhiWuYuan=co.get('zhiWuYuan'), yunGang=co.get('yunGang'), yuFa=co.get('yuFa'),
                    yongLeDian=co.get('yongLeDian'), yongDingMenNei=co.get('yongDingMenNei'), yiZhuang=co.get('yiZhuang'),
                    yanQing=co.get('yanQing'), xiZhiMenBei=co.get('xiZhiMenBei'), wanShouXiGong=co.get('wanShouXiGong'),
                    wanLiu=co.get('wanLiu'), tongZhou=co.get('tongZhou'), tianTan=co.get('tianTan'), qianMen=co.get('qianMen'),
                    shunYi=co.get('shunYi'), pingGu=co.get('pingGu'), nongZhanGuan=co.get('nongZhanGuan'),
                    nanSanHuan=co.get('nanSanHuan'), miYunShuiKu=co.get('miYunShuiKu'), miYun=co.get('miYun'),
                    menTouGou=co.get('menTouGou'), liuLiHe=co.get('liuLiHe'), huaiRou=co.get('huaiRou'), guanYuan=co.get('guanYuan'),
                    guCheng=co.get('guCheng'), fengTaiHuaYuan=co.get('fengTaiHuaYuan'), fangShan=co.get('fangShan'),
                    dongSiHuan=co.get('dongSiHuan'), dongSi=co.get('dongSi'), dongGaoCun=co.get('dongGaoCun'),
                    dingLing=co.get('dingLing'), daXing=co.get('daXing'), changPing=co.get('changPing'),
                    beiBuXinQu=co.get('beiBuXinQu'), baDaLing=co.get('baDaLing'), aoTiZhongXin=co.get('aoTiZhongXin'))
        new_CO.save()

        new_NO2 = NO2(dateTime=dt, zhiWuYuan=no2.get('zhiWuYuan'), yunGang=no2.get('yunGang'), yuFa=no2.get('yuFa'),
                      yongLeDian=no2.get('yongLeDian'), yongDingMenNei=no2.get('yongDingMenNei'), yiZhuang=no2.get('yiZhuang'),
                      yanQing=no2.get('yanQing'), xiZhiMenBei=no2.get('xiZhiMenBei'), wanShouXiGong=no2.get('wanShouXiGong'),
                      wanLiu=no2.get('wanLiu'), tongZhou=no2.get('tongZhou'), tianTan=no2.get('tianTan'), qianMen=no2.get('qianMen'),
                      shunYi=no2.get('shunYi'), pingGu=no2.get('pingGu'), nongZhanGuan=no2.get('nongZhanGuan'),
                      nanSanHuan=no2.get('nanSanHuan'), miYunShuiKu=no2.get('miYunShuiKu'), miYun=no2.get('miYun'),
                      menTouGou=no2.get('menTouGou'), liuLiHe=no2.get('liuLiHe'), huaiRou=no2.get('huaiRou'),
                      guanYuan=no2.get('guanYuan'), guCheng=no2.get('guCheng'), fengTaiHuaYuan=no2.get('fengTaiHuaYuan'),
                      fangShan=no2.get('fangShan'), dongSiHuan=no2.get('dongSiHuan'), dongSi=no2.get('dongSi'),
                      dongGaoCun=no2.get('dongGaoCun'), dingLing=no2.get('dingLing'), daXing=no2.get('daXing'),
                      changPing=no2.get('changPing'), beiBuXinQu=no2.get('beiBuXinQu'), baDaLing=no2.get('baDaLing'),
                      aoTiZhongXin=no2.get('aoTiZhongXin'))
        new_NO2.save()

        new_SO2 = SO2(dateTime=dt, zhiWuYuan=so2.get('zhiWuYuan'), yunGang=so2.get('yunGang'), yuFa=so2.get('yuFa'),
                      yongLeDian=so2.get('yongLeDian'), yongDingMenNei=so2.get('yongDingMenNei'), yiZhuang=so2.get('yiZhuang'),
                      yanQing=so2.get('yanQing'), xiZhiMenBei=so2.get('xiZhiMenBei'), wanShouXiGong=so2.get('wanShouXiGong'),
                      wanLiu=so2.get('wanLiu'), tongZhou=so2.get('tongZhou'), tianTan=so2.get('tianTan'), qianMen=so2.get('qianMen'),
                      shunYi=so2.get('shunYi'), pingGu=so2.get('pingGu'), nongZhanGuan=so2.get('nongZhanGuan'),
                      nanSanHuan=so2.get('nanSanHuan'), miYunShuiKu=so2.get('miYunShuiKu'), miYun=so2.get('miYun'),
                      menTouGou=so2.get('menTouGou'), liuLiHe=so2.get('liuLiHe'), huaiRou=so2.get('huaiRou'),
                      guanYuan=so2.get('guanYuan'), guCheng=so2.get('guCheng'), fengTaiHuaYuan=so2.get('fengTaiHuaYuan'),
                      fangShan=so2.get('fangShan'), dongSiHuan=so2.get('dongSiHuan'), dongSi=so2.get('dongSi'),
                      dongGaoCun=so2.get('dongGaoCun'), dingLing=so2.get('dingLing'), daXing=so2.get('daXing'),
                      changPing=so2.get('changPing'), beiBuXinQu=so2.get('beiBuXinQu'), baDaLing=so2.get('baDaLing'),
                      aoTiZhongXin=so2.get('aoTiZhongXin'))
        new_SO2.save()

        new_PM10 = PM10(dateTime=dt, zhiWuYuan=pm10.get('zhiWuYuan'), yunGang=pm10.get('yunGang'), yuFa=pm10.get('yuFa'),
                        yongLeDian=pm10.get('yongLeDian'), yongDingMenNei=pm10.get('yongDingMenNei'), yiZhuang=pm10.get('yiZhuang'),
                        yanQing=pm10.get('yanQing'), xiZhiMenBei=pm10.get('xiZhiMenBei'), wanShouXiGong=pm10.get('wanShouXiGong'),
                        wanLiu=pm10.get('wanLiu'), tongZhou=pm10.get('tongZhou'), tianTan=pm10.get('tianTan'),
                        qianMen=pm10.get('qianMen'), shunYi=pm10.get('shunYi'), pingGu=pm10.get('pingGu'),
                        nongZhanGuan=pm10.get('nongZhanGuan'), nanSanHuan=pm10.get('nanSanHuan'),
                        miYunShuiKu=pm10.get('miYunShuiKu'), miYun=pm10.get('miYun'), menTouGou=pm10.get('menTouGou'),
                        liuLiHe=pm10.get('liuLiHe'), huaiRou=pm10.get('huaiRou'), guanYuan=pm10.get('guanYuan'),
                        guCheng=pm10.get('guCheng'), fengTaiHuaYuan=pm10.get('fengTaiHuaYuan'), fangShan=pm10.get('fangShan'),
                        dongSiHuan=pm10.get('dongSiHuan'), dongSi=pm10.get('dongSi'), dongGaoCun=pm10.get('dongGaoCun'),
                        dingLing=pm10.get('dingLing'), daXing=pm10.get('daXing'), changPing=pm10.get('changPing'),
                        beiBuXinQu=pm10.get('beiBuXinQu'), baDaLing=pm10.get('baDaLing'), aoTiZhongXin=pm10.get('aoTiZhongXin'))
        new_PM10.save()

        new_O3 = O3(dateTime=dt, zhiWuYuan=o3.get('zhiWuYuan'), yunGang=o3.get('yunGang'), yuFa=o3.get('yuFa'),
                    yongLeDian=o3.get('yongLeDian'), yongDingMenNei=o3.get('yongDingMenNei'), yiZhuang=o3.get('yiZhuang'),
                    yanQing=o3.get('yanQing'), xiZhiMenBei=o3.get('xiZhiMenBei'), wanShouXiGong=o3.get('wanShouXiGong'),
                    wanLiu=o3.get('wanLiu'), tongZhou=o3.get('tongZhou'), tianTan=o3.get('tianTan'), qianMen=o3.get('qianMen'),
                    shunYi=o3.get('shunYi'), pingGu=o3.get('pingGu'), nongZhanGuan=o3.get('nongZhanGuan'),
                    nanSanHuan=o3.get('nanSanHuan'), miYunShuiKu=o3.get('miYunShuiKu'), miYun=o3.get('miYun'),
                    menTouGou=o3.get('menTouGou'), liuLiHe=o3.get('liuLiHe'), huaiRou=o3.get('huaiRou'), guanYuan=o3.get('guanYuan'),
                    guCheng=o3.get('guCheng'), fengTaiHuaYuan=o3.get('fengTaiHuaYuan'), fangShan=o3.get('fangShan'),
                    dongSiHuan=o3.get('dongSiHuan'), dongSi=o3.get('dongSi'), dongGaoCun=o3.get('dongGaoCun'),
                    dingLing=o3.get('dingLing'), daXing=o3.get('daXing'), changPing=o3.get('changPing'),
                    beiBuXinQu=o3.get('beiBuXinQu'), baDaLing=o3.get('baDaLing'), aoTiZhongXin=o3.get('aoTiZhongXin'))
        new_O3.save()

        return True
    except Exception, e:
        tools.exceptionRecord('insert.py','addAirInfo',e)
        return False
