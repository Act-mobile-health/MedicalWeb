# -*- coding:UTF-8 -*-
from __future__ import unicode_literals

from django.contrib.auth.models import User
from django.contrib.auth.models import AbstractBaseUser,AbstractUser
from django.db import models
import datetime

# Create your models here.




class PatientInfo(models.Model):

    P_id = models.CharField(max_length=12, unique=True,null=False)
    IDCardNum = models.CharField(max_length=20)
    sign = models.CharField(max_length=2)
    name = models.CharField(max_length=50)
    sex = models.CharField(max_length=2)
    password = models.CharField(max_length=50,default="000000")
    birthday = models.DateField(blank=True)
    age = models.IntegerField()
    nation = models.CharField(max_length=15, blank=True)
    height = models.CharField(max_length=50)
    weight = models.CharField(max_length=50)
    registerTime = models.DateField(auto_now_add=True)
    education = models.CharField(max_length=10, blank=True)
    career = models.CharField(max_length=20)
    marriage = models.CharField(max_length=20)
    photo = models.CharField(max_length=50, blank=True)

    province_h = models.CharField(max_length=20)
    city_h = models.CharField(max_length=20)
    county_h = models.CharField(max_length=20)
    detail_h = models.CharField(max_length=50)

    province = models.CharField(max_length=20)
    city = models.CharField(max_length=20)
    county = models.CharField(max_length=20)

    activityAddr1 = models.CharField(max_length=150)
    activityAddr2 = models.CharField(max_length=150)
    actionAddr = models.CharField(max_length=50)  # this details need be filled
    diastolicPressure = models.CharField(max_length=50)  # same with upper
    systolicPressure = models.CharField(max_length=50)  # same
    neckCircu = models.CharField(max_length=50)
    payment = models.CharField(max_length=32)  # example 1,2,3,4,5,6,7
    telephone = models.CharField(max_length=15)
    cellphone = models.CharField(max_length=11)
    partnerPhone = models.CharField(max_length=11)


# created by JK@buaa, 2017/3/17
# table 2


class RelationInfo(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    name = models.CharField(max_length=50)
    sex = models.CharField(max_length=2)
    telephone = models.CharField(max_length=15)
    cellphone = models.CharField(max_length=11)
    weChat = models.CharField(max_length=50)
    mail = models.CharField(max_length=50)
    homeAddr = models.CharField(max_length=150)


# created by JK@buaa, 2017/3/17
# table 3

# class DoctorInfo(AbstractUser):
#
#     name = models.CharField(max_length=50)
#     sex = models.CharField(max_length=2)
#     birthday = models.DateField(blank=True)
#     # userName = models.CharField(max_length=50)
#     # password = models.CharField(max_length=100)
#     cellphone = models.CharField(max_length=11)
#     weChat = models.CharField(max_length=50)
#     mail = models.CharField(max_length=50)
#     title = models.CharField(max_length=20)
#     hospital = models.CharField(max_length=30)
#     department = models.CharField(max_length=20)
#     userGroup = models.CharField(max_length=10)      # doctor/intern/student
#     registerDate = models.DateField(auto_now_add=True)

class UserInfo(AbstractUser):

    name = models.CharField(max_length=50)
    sex = models.CharField(max_length=2,default="1")
    birthday = models.DateField(blank=True,default=datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date())
    # userName = models.CharField(max_length=50)
    # password = models.CharField(max_length=100)
    cellphone = models.CharField(max_length=11)
    weChat = models.CharField(max_length=50)
    mail = models.CharField(max_length=50)
    title = models.CharField(max_length=20)
    hospital = models.CharField(max_length=30)
    department = models.CharField(max_length=20)
    userGroup = models.CharField(max_length=10,default="2")      # doctor/intern/student
    registerDate = models.DateField(auto_now_add=True)


# table 4


class PatientGroup(models.Model):
    G_id = models.IntegerField(null=False)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(auto_now_add=True)


# created by JK@buaa, 2017/3/17
# table 5


class GroupInfo(models.Model):
    name = models.CharField(max_length=100, null=False)
    D_id = models.IntegerField(null=False)
    description = models.CharField(max_length=255)
    date = models.DateField(blank=True)


# created by JK@buaa, 2017/3/17
# table 6


class CATandMRC(models.Model):
    # CM_id = models.CharField(max_length=32,primary_key=True)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(blank=True)
    cat1 = models.CharField(max_length=2)
    cat2 = models.CharField(max_length=2)
    cat3 = models.CharField(max_length=2)
    cat4 = models.CharField(max_length=2)
    cat5 = models.CharField(max_length=2)
    cat6 = models.CharField(max_length=2)
    cat7 = models.CharField(max_length=2)
    cat8 = models.CharField(max_length=2)
    catSum = models.IntegerField(default=0)
    mrc = models.IntegerField(default=0)
    acuteExac = models.CharField(max_length=1)


# created by JK@buaa, 2017/3/17
# table 7


class PmExposure(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(blank=True)
    exposure = models.CharField(max_length=10)


# created by JK@buaa, 2017/3/17
# table 8


class TrackInfo(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(blank=True)
    doc = models.FileField(upload_to="TrackInfo")


# created by JK@buaa, 2017/3/17
# table 9


class AttachInfo(models.Model):

    name = models.CharField(max_length=50)
    doc = models.ImageField(upload_to="Attachment")
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(blank=True)
    type = models.CharField(max_length=2)    # 0 OutPatientService   1 Emerg   2 InHospital
    S_id = models.IntegerField(null=False)
    D_id = models.IntegerField(null=False)
    description = models.CharField(max_length=255)
    # source = models.CharField(max_length=32)
    # dir = models.CharField(max_length=50)
    #context = models.ImageField(upload_to)


# table 10
class PM25(models.Model):
    dateTime = models.DateTimeField()
    date_auto = models.DateTimeField(auto_now_add=True)

    zhiWuYuan = models.CharField(max_length=50, null=True)
    yunGang = models.CharField(max_length=50, null=True)
    yuFa = models.CharField(max_length=50, null=True)
    yongLeDian = models.CharField(max_length=50, null=True)
    yongDingMenNei = models.CharField(max_length=50, null=True)
    yiZhuang = models.CharField(max_length=50, null=True)
    yanQing = models.CharField(max_length=50, null=True)
    xiZhiMenBei = models.CharField(max_length=50, null=True)
    wanShouXiGong = models.CharField(max_length=50, null=True)
    wanLiu = models.CharField(max_length=50, null=True)
    tongZhou = models.CharField(max_length=50, null=True)
    tianTan = models.CharField(max_length=50, null=True)
    qianMen = models.CharField(max_length=50, null=True)
    shunYi = models.CharField(max_length=50, null=True)
    pingGu = models.CharField(max_length=50, null=True)
    nongZhanGuan = models.CharField(max_length=50, null=True)
    nanSanHuan = models.CharField(max_length=50, null=True)
    miYunShuiKu = models.CharField(max_length=50, null=True)
    miYun = models.CharField(max_length=50, null=True)
    menTouGou = models.CharField(max_length=50, null=True)
    liuLiHe = models.CharField(max_length=50, null=True)
    huaiRou = models.CharField(max_length=50, null=True)
    guanYuan = models.CharField(max_length=50, null=True)
    guCheng = models.CharField(max_length=50, null=True)
    fengTaiHuaYuan = models.CharField(max_length=50, null=True)
    fangShan = models.CharField(max_length=50, null=True)
    dongSiHuan = models.CharField(max_length=50, null=True)
    dongSi = models.CharField(max_length=50, null=True)
    dongGaoCun = models.CharField(max_length=50, null=True)
    dingLing = models.CharField(max_length=50, null=True)
    daXing = models.CharField(max_length=50, null=True)
    changPing = models.CharField(max_length=50, null=True)
    beiBuXinQu = models.CharField(max_length=50, null=True)
    baDaLing = models.CharField(max_length=50, null=True)
    aoTiZhongXin = models.CharField(max_length=50, null=True)


# table 11
class CO(models.Model):
    dateTime = models.DateTimeField()
    date_auto = models.DateTimeField(auto_now_add=True)

    zhiWuYuan = models.CharField(max_length=50, null=True)
    yunGang = models.CharField(max_length=50, null=True)
    yuFa = models.CharField(max_length=50, null=True)
    yongLeDian = models.CharField(max_length=50, null=True)
    yongDingMenNei = models.CharField(max_length=50, null=True)
    yiZhuang = models.CharField(max_length=50, null=True)
    yanQing = models.CharField(max_length=50, null=True)
    xiZhiMenBei = models.CharField(max_length=50, null=True)
    wanShouXiGong = models.CharField(max_length=50, null=True)
    wanLiu = models.CharField(max_length=50, null=True)
    tongZhou = models.CharField(max_length=50, null=True)
    tianTan = models.CharField(max_length=50, null=True)
    qianMen = models.CharField(max_length=50, null=True)
    shunYi = models.CharField(max_length=50, null=True)
    pingGu = models.CharField(max_length=50, null=True)
    nongZhanGuan = models.CharField(max_length=50, null=True)
    nanSanHuan = models.CharField(max_length=50, null=True)
    miYunShuiKu = models.CharField(max_length=50, null=True)
    miYun = models.CharField(max_length=50, null=True)
    menTouGou = models.CharField(max_length=50, null=True)
    liuLiHe = models.CharField(max_length=50, null=True)
    huaiRou = models.CharField(max_length=50, null=True)
    guanYuan = models.CharField(max_length=50, null=True)
    guCheng = models.CharField(max_length=50, null=True)
    fengTaiHuaYuan = models.CharField(max_length=50, null=True)
    fangShan = models.CharField(max_length=50, null=True)
    dongSiHuan = models.CharField(max_length=50, null=True)
    dongSi = models.CharField(max_length=50, null=True)
    dongGaoCun = models.CharField(max_length=50, null=True)
    dingLing = models.CharField(max_length=50, null=True)
    daXing = models.CharField(max_length=50, null=True)
    changPing = models.CharField(max_length=50, null=True)
    beiBuXinQu = models.CharField(max_length=50, null=True)
    baDaLing = models.CharField(max_length=50, null=True)
    aoTiZhongXin = models.CharField(max_length=50, null=True)


# table 12
class NO2(models.Model):
    dateTime = models.DateTimeField()
    date_auto = models.DateTimeField(auto_now_add=True)

    zhiWuYuan = models.CharField(max_length=50, null=True)
    yunGang = models.CharField(max_length=50, null=True)
    yuFa = models.CharField(max_length=50, null=True)
    yongLeDian = models.CharField(max_length=50, null=True)
    yongDingMenNei = models.CharField(max_length=50, null=True)
    yiZhuang = models.CharField(max_length=50, null=True)
    yanQing = models.CharField(max_length=50, null=True)
    xiZhiMenBei = models.CharField(max_length=50, null=True)
    wanShouXiGong = models.CharField(max_length=50, null=True)
    wanLiu = models.CharField(max_length=50, null=True)
    tongZhou = models.CharField(max_length=50, null=True)
    tianTan = models.CharField(max_length=50, null=True)
    qianMen = models.CharField(max_length=50, null=True)
    shunYi = models.CharField(max_length=50, null=True)
    pingGu = models.CharField(max_length=50, null=True)
    nongZhanGuan = models.CharField(max_length=50, null=True)
    nanSanHuan = models.CharField(max_length=50, null=True)
    miYunShuiKu = models.CharField(max_length=50, null=True)
    miYun = models.CharField(max_length=50, null=True)
    menTouGou = models.CharField(max_length=50, null=True)
    liuLiHe = models.CharField(max_length=50, null=True)
    huaiRou = models.CharField(max_length=50, null=True)
    guanYuan = models.CharField(max_length=50, null=True)
    guCheng = models.CharField(max_length=50, null=True)
    fengTaiHuaYuan = models.CharField(max_length=50, null=True)
    fangShan = models.CharField(max_length=50, null=True)
    dongSiHuan = models.CharField(max_length=50, null=True)
    dongSi = models.CharField(max_length=50, null=True)
    dongGaoCun = models.CharField(max_length=50, null=True)
    dingLing = models.CharField(max_length=50, null=True)
    daXing = models.CharField(max_length=50, null=True)
    changPing = models.CharField(max_length=50, null=True)
    beiBuXinQu = models.CharField(max_length=50, null=True)
    baDaLing = models.CharField(max_length=50, null=True)
    aoTiZhongXin = models.CharField(max_length=50, null=True)


# table 13
class SO2(models.Model):
    dateTime = models.DateTimeField()
    date_auto = models.DateTimeField(auto_now_add=True)

    zhiWuYuan = models.CharField(max_length=50, null=True)
    yunGang = models.CharField(max_length=50, null=True)
    yuFa = models.CharField(max_length=50, null=True)
    yongLeDian = models.CharField(max_length=50, null=True)
    yongDingMenNei = models.CharField(max_length=50, null=True)
    yiZhuang = models.CharField(max_length=50, null=True)
    yanQing = models.CharField(max_length=50, null=True)
    xiZhiMenBei = models.CharField(max_length=50, null=True)
    wanShouXiGong = models.CharField(max_length=50, null=True)
    wanLiu = models.CharField(max_length=50, null=True)
    tongZhou = models.CharField(max_length=50, null=True)
    tianTan = models.CharField(max_length=50, null=True)
    qianMen = models.CharField(max_length=50, null=True)
    shunYi = models.CharField(max_length=50, null=True)
    pingGu = models.CharField(max_length=50, null=True)
    nongZhanGuan = models.CharField(max_length=50, null=True)
    nanSanHuan = models.CharField(max_length=50, null=True)
    miYunShuiKu = models.CharField(max_length=50, null=True)
    miYun = models.CharField(max_length=50, null=True)
    menTouGou = models.CharField(max_length=50, null=True)
    liuLiHe = models.CharField(max_length=50, null=True)
    huaiRou = models.CharField(max_length=50, null=True)
    guanYuan = models.CharField(max_length=50, null=True)
    guCheng = models.CharField(max_length=50, null=True)
    fengTaiHuaYuan = models.CharField(max_length=50, null=True)
    fangShan = models.CharField(max_length=50, null=True)
    dongSiHuan = models.CharField(max_length=50, null=True)
    dongSi = models.CharField(max_length=50, null=True)
    dongGaoCun = models.CharField(max_length=50, null=True)
    dingLing = models.CharField(max_length=50, null=True)
    daXing = models.CharField(max_length=50, null=True)
    changPing = models.CharField(max_length=50, null=True)
    beiBuXinQu = models.CharField(max_length=50, null=True)
    baDaLing = models.CharField(max_length=50, null=True)
    aoTiZhongXin = models.CharField(max_length=50, null=True)


# table 14
class PM10(models.Model):
    dateTime = models.DateTimeField()
    date_auto = models.DateTimeField(auto_now_add=True)

    zhiWuYuan = models.CharField(max_length=50, null=True)
    yunGang = models.CharField(max_length=50, null=True)
    yuFa = models.CharField(max_length=50, null=True)
    yongLeDian = models.CharField(max_length=50, null=True)
    yongDingMenNei = models.CharField(max_length=50, null=True)
    yiZhuang = models.CharField(max_length=50, null=True)
    yanQing = models.CharField(max_length=50, null=True)
    xiZhiMenBei = models.CharField(max_length=50, null=True)
    wanShouXiGong = models.CharField(max_length=50, null=True)
    wanLiu = models.CharField(max_length=50, null=True)
    tongZhou = models.CharField(max_length=50, null=True)
    tianTan = models.CharField(max_length=50, null=True)
    qianMen = models.CharField(max_length=50, null=True)
    shunYi = models.CharField(max_length=50, null=True)
    pingGu = models.CharField(max_length=50, null=True)
    nongZhanGuan = models.CharField(max_length=50, null=True)
    nanSanHuan = models.CharField(max_length=50, null=True)
    miYunShuiKu = models.CharField(max_length=50, null=True)
    miYun = models.CharField(max_length=50, null=True)
    menTouGou = models.CharField(max_length=50, null=True)
    liuLiHe = models.CharField(max_length=50, null=True)
    huaiRou = models.CharField(max_length=50, null=True)
    guanYuan = models.CharField(max_length=50, null=True)
    guCheng = models.CharField(max_length=50, null=True)
    fengTaiHuaYuan = models.CharField(max_length=50, null=True)
    fangShan = models.CharField(max_length=50, null=True)
    dongSiHuan = models.CharField(max_length=50, null=True)
    dongSi = models.CharField(max_length=50, null=True)
    dongGaoCun = models.CharField(max_length=50, null=True)
    dingLing = models.CharField(max_length=50, null=True)
    daXing = models.CharField(max_length=50, null=True)
    changPing = models.CharField(max_length=50, null=True)
    beiBuXinQu = models.CharField(max_length=50, null=True)
    baDaLing = models.CharField(max_length=50, null=True)
    aoTiZhongXin = models.CharField(max_length=50, null=True)


# table 15
class O3(models.Model):
    dateTime = models.DateTimeField()
    date_auto = models.DateTimeField(auto_now_add=True)

    zhiWuYuan = models.CharField(max_length=50, null=True)
    yunGang = models.CharField(max_length=50, null=True)
    yuFa = models.CharField(max_length=50, null=True)
    yongLeDian = models.CharField(max_length=50, null=True)
    yongDingMenNei = models.CharField(max_length=50, null=True)
    yiZhuang = models.CharField(max_length=50, null=True)
    yanQing = models.CharField(max_length=50, null=True)
    xiZhiMenBei = models.CharField(max_length=50, null=True)
    wanShouXiGong = models.CharField(max_length=50, null=True)
    wanLiu = models.CharField(max_length=50, null=True)
    tongZhou = models.CharField(max_length=50, null=True)
    tianTan = models.CharField(max_length=50, null=True)
    qianMen = models.CharField(max_length=50, null=True)
    shunYi = models.CharField(max_length=50, null=True)
    pingGu = models.CharField(max_length=50, null=True)
    nongZhanGuan = models.CharField(max_length=50, null=True)
    nanSanHuan = models.CharField(max_length=50, null=True)
    miYunShuiKu = models.CharField(max_length=50, null=True)
    miYun = models.CharField(max_length=50, null=True)
    menTouGou = models.CharField(max_length=50, null=True)
    liuLiHe = models.CharField(max_length=50, null=True)
    huaiRou = models.CharField(max_length=50, null=True)
    guanYuan = models.CharField(max_length=50, null=True)
    guCheng = models.CharField(max_length=50, null=True)
    fengTaiHuaYuan = models.CharField(max_length=50, null=True)
    fangShan = models.CharField(max_length=50, null=True)
    dongSiHuan = models.CharField(max_length=50, null=True)
    dongSi = models.CharField(max_length=50, null=True)
    dongGaoCun = models.CharField(max_length=50, null=True)
    dingLing = models.CharField(max_length=50, null=True)
    daXing = models.CharField(max_length=50, null=True)
    changPing = models.CharField(max_length=50, null=True)
    beiBuXinQu = models.CharField(max_length=50, null=True)
    baDaLing = models.CharField(max_length=50, null=True)
    aoTiZhongXin = models.CharField(max_length=50, null=True)


# table 16
class WeatherInfo(models.Model):
    dateTime = models.DateTimeField()
    date_auto = models.DateTimeField(auto_now_add=True)

    zhiWuYuan = models.CharField(max_length=150, null=True)
    yunGang = models.CharField(max_length=150, null=True)
    yongLeDian = models.CharField(max_length=150, null=True)
    dongDingMenNei = models.CharField(max_length=150, null=True)
    yiZhuang = models.CharField(max_length=150, null=True)
    yanQing = models.CharField(max_length=150, null=True)
    xiZhiMenBei = models.CharField(max_length=150, null=True)
    wanShouGongXi = models.CharField(max_length=150, null=True)
    wanLiu = models.CharField(max_length=150, null=True)
    tongZhou = models.CharField(max_length=150, null=True)
    tianTan = models.CharField(max_length=150, null=True)
    qianMen = models.CharField(max_length=150, null=True)
    pingGu = models.CharField(max_length=150, null=True)
    nongZhanGuan = models.CharField(max_length=150, null=True)
    nanSanHuan = models.CharField(max_length=150, null=True)
    miYunShuiKu = models.CharField(max_length=150, null=True)
    menTouGou = models.CharField(max_length=150, null=True)
    liuLiHe = models.CharField(max_length=150, null=True)
    huaiRou = models.CharField(max_length=150, null=True)
    guanYuan = models.CharField(max_length=150, null=True)
    guCheng = models.CharField(max_length=150, null=True)
    fengTaiHuaYuan = models.CharField(max_length=150, null=True)
    fangShan = models.CharField(max_length=150, null=True)
    dongSiHuan = models.CharField(max_length=150, null=True)
    dongSi = models.CharField(max_length=150, null=True)
    dongGaoCun = models.CharField(max_length=150, null=True)
    dingLing = models.CharField(max_length=150, null=True)
    daXing = models.CharField(max_length=150, null=True)
    changPing = models.CharField(max_length=150, null=True)
    beiBuXinQu = models.CharField(max_length=150, null=True)
    baDaLing = models.CharField(max_length=150, null=True)
    aoTiZhongXin = models.CharField(max_length=150, null=True)


# created by CS@buaa, 2017/3/17
# table17:


class OutPatientServiceInfo(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(null=False)
    date_upload = models.DateField(auto_now_add=True)
    place = models.CharField(max_length=150, null=False, default="未填写")
    isStable = models.CharField(max_length=1, null=False)
    isSymptom = models.CharField(max_length=1, null=False)
    symptom = models.CharField(max_length=10, null=False, )
    physicalExam = models.CharField(max_length=1, null=False)
    breathErr = models.CharField(max_length=50)
    acuteExac = models.CharField(max_length=1)
    disease = models.CharField(max_length=50, null=False)
    useAbt = models.CharField(max_length=1, null=False)
    abtType = models.CharField(max_length=30)
    useJmzs = models.CharField(max_length=1, null=False)
    hospital = models.CharField(max_length=1, null=False)
    airRelate = models.CharField(max_length=1, null=False)
    treatMethod = models.CharField(max_length=1, null=False)
    medicine = models.CharField(max_length=150, null=False)


# created by CS@buaa, 2017/3/17
# table18:


class EmergCallInfo(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(null=False)
    date_upload = models.DateField(auto_now_add=True)
    place = models.CharField(max_length=150, null=False, default="未填写")
    symptom = models.CharField(max_length=10, null=False)
    acuteExac = models.CharField(max_length=1)
    disease = models.CharField(max_length=50, null=False)
    byxCheck = models.CharField(max_length=1, null=False)
    byxResult = models.CharField(max_length=50)
    ycWcTreat = models.CharField(max_length=1, null=False)
    useAbt = models.CharField(max_length=1, null=False)
    abtType = models.CharField(max_length=30)
    useJmzs = models.CharField(max_length=1, null=False)
    ecMethod = models.CharField(max_length=30)
    ecDate = models.CharField(max_length=10)
    hospital = models.CharField(max_length=1, null=False)
    treatMethod = models.CharField(max_length=1, null=False)
    airRelate = models.CharField(max_length=1, null=False)
    medicine = models.CharField(max_length=150, null=False)


# created by CS@buaa, 2017/3/17
# table19:


class InHospitalInfo(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(null=False)
    date_upload = models.DateField(auto_now_add=True)
    place = models.CharField(max_length=150, null=False, default="未填写")
    commonIcu = models.CharField(max_length=1, null=False)
    symptom = models.CharField(max_length=10, null=False)
    acuteExac = models.CharField(max_length=1)
    disease = models.CharField(max_length=50, null=False)
    byxCheck = models.CharField(max_length=1, null=False)
    byxResult = models.CharField(max_length=50)
    ycWcTreat = models.CharField(max_length=1, null=False)
    useAbt = models.CharField(max_length=1)
    abtType = models.CharField(max_length=50, null=False)
    useJmzs = models.CharField(max_length=1, null=False)
    hospitalDays = models.CharField(max_length=10)
    airRelate = models.CharField(max_length=1, null=False)
    treatMethod = models.CharField(max_length=1, null=False)
    medicine = models.CharField(max_length=150, null=False)
    docAdvice = models.CharField(max_length=200)


# created by CS@buaa, 2017/3/17
# table20:


class Clinic(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    type = models.CharField(max_length=5)  # 0 OutPatientService   1 Emerg   2 InHospital   3 AccessoryExamination
    S_id = models.IntegerField(null=False)
    dangerType = models.CharField(max_length=20, null=False)
    smoke1 = models.CharField(max_length=1, null=False)
    smoke2 = models.CharField(max_length=5)
    smoke3 = models.CharField(max_length=5)
    smoke4 = models.CharField(max_length=5)
    smoke5 = models.CharField(max_length=5)
    smoke6 = models.CharField(max_length=5)
    smoke7 = models.CharField(max_length=5)
    smoke8 = models.CharField(max_length=1, null=False)
    smoke9 = models.CharField(max_length=5)
    smoke10 = models.CharField(max_length=5)
    powder1 = models.CharField(max_length=5)
    powder2 = models.CharField(max_length=50, null=False)
    powder3 = models.CharField(max_length=50, null=False)
    biology1 = models.CharField(max_length=5)
    biology2 = models.CharField(max_length=50, null=False)
    hAir1 = models.CharField(max_length=5)
    hAir2 = models.CharField(max_length=50, null=False)
    gm1 = models.CharField(max_length=1, null=False)
    gm2 = models.CharField(max_length=50, null=False)
    drink1 = models.CharField(max_length=5)
    drink2 = models.CharField(max_length=5)
    drink3 = models.CharField(max_length=5)
    drink4 = models.CharField(max_length=5)
    lung1 = models.CharField(max_length=5)
    lung2 = models.CharField(max_length=50, null=False)
    lung3 = models.CharField(max_length=5)
    lung4 = models.CharField(max_length=5)
    lung5 = models.CharField(max_length=5)
    lung6 = models.CharField(max_length=5)
    lung7 = models.CharField(max_length=5)
    cure1 = models.CharField(max_length=20, null=False)
    cure2 = models.CharField(max_length=1, null=False)
    cure3 = models.CharField(max_length=20, null=False)
    cure4 = models.CharField(max_length=1, null=False)
    cure5 = models.CharField(max_length=1, null=False)
    cure6 = models.CharField(max_length=5)
    cure7 = models.CharField(max_length=5)
    cure8 = models.CharField(max_length=1, null=False)
    cure9 = models.CharField(max_length=5)
    cure10 = models.CharField(max_length=1, null=False)
    cure11 = models.CharField(max_length=5)
    cure12 = models.CharField(max_length=1, null=False)
    cure13 = models.CharField(max_length=5)
    cure14 = models.CharField(max_length=1, null=False)
    cure15 = models.CharField(max_length=5)
    cure16 = models.CharField(max_length=1, null=False)
    cure17 = models.CharField(max_length=5)
    cure18 = models.CharField(max_length=1, null=False)
    cure19 = models.CharField(max_length=5)
    cure20 = models.CharField(max_length=1, null=False)
    cure21 = models.CharField(max_length=200, null=False)
    cure22 = models.CharField(max_length=5)
    cure23 = models.CharField(max_length=5)
    cure24 = models.CharField(max_length=5)
    cure25 = models.CharField(max_length=5)
    cure26 = models.IntegerField(null=False)
    comp1 = models.CharField(max_length=20, null=False)
    comp2 = models.CharField(max_length=20, null=False)
    comp3 = models.CharField(max_length=20, null=False)
    comp4 = models.CharField(max_length=20, null=False)
    comp5 = models.CharField(max_length=20, null=False)
    comp6 = models.CharField(max_length=20, null=False)
    detail = models.CharField(max_length=200)
    date = models.DateField(auto_now_add=True)


# created by CS@buaa, 2017/3/17
# table21


class ESS(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    type = models.CharField(max_length=5)  # 0 OutPatientService   1 Emerg   2 InHospital   3 AccessoryExamination
    S_id = models.IntegerField(null=False)
    ess1 = models.CharField(max_length=5)
    ess2 = models.CharField(max_length=5)
    ess3 = models.CharField(max_length=5)
    ess4 = models.CharField(max_length=5)
    ess5 = models.CharField(max_length=5)
    ess6 = models.CharField(max_length=5)
    ess7 = models.CharField(max_length=5)
    ess8 = models.CharField(max_length=5)
    score = models.CharField(max_length=5)
    date = models.DateField(auto_now_add=True)


# created by CS@buaa, 2017/3/17
# table22


class MBQ(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    type = models.CharField(max_length=5)  # 0 OutPatientService   1 Emerg   2 InHospital   3 AccessoryExamination
    S_id = models.IntegerField(null=False)
    q1 = models.CharField(max_length=5)
    q2 = models.CharField(max_length=5)
    q3 = models.CharField(max_length=5)
    q4 = models.CharField(max_length=5)
    q5 = models.CharField(max_length=5)
    q6 = models.CharField(max_length=5)
    q7 = models.CharField(max_length=5)
    q8 = models.CharField(max_length=1, null=False)
    q9 = models.CharField(max_length=5)
    q10 = models.CharField(max_length=1, null=False)
    BMI = models.CharField(max_length=50)
    date = models.DateField(auto_now_add=True)


# created by CS@buaa, 2017/3/17
# table23


class SGRQ(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    type = models.CharField(max_length=5)  # 0 OutPatientService   1 Emerg   2 InHospital   3 AccessoryExamination
    S_id = models.IntegerField(null=False)
    H1 = models.CharField(max_length=5)
    H2 = models.CharField(max_length=5)
    H3 = models.CharField(max_length=5)
    H4 = models.CharField(max_length=5)
    H5 = models.CharField(max_length=5)
    H6 = models.CharField(max_length=5)
    H7 = models.CharField(max_length=5)
    H8 = models.CharField(max_length=1, null=False)
    H9 = models.CharField(max_length=5)
    H10 = models.CharField(max_length=5)

    H11 = models.CharField(max_length=10, null=False)
    H12 = models.CharField(max_length=10, null=False)
    H13 = models.CharField(max_length=10, null=False)

    H14 = models.CharField(max_length=1, null=False)

    H15 = models.CharField(max_length=10, null=False)
    H16 = models.CharField(max_length=10, null=False)
    H17 = models.CharField(max_length=10, null=False)

    H18 = models.CharField(max_length=1, null=False)
    actEff = models.CharField(max_length=200, null=False)
    date = models.DateField(auto_now_add=True)


class AccessoryExamination(models.Model):

    name = models.CharField(max_length=50)
    doc = models.ImageField(upload_to="AE")
    P_id = models.CharField(max_length=12, null=False)
    type = models.CharField(max_length=2)  # 0 OutPatientService   1 Emerg   2 InHospital
    S_id = models.IntegerField(null=False)
    date = models.DateField(blank=True)
    AE_type = models.CharField(max_length=5)
    description = models.CharField(max_length=250)
    D_id = models.IntegerField(null=False)



# created by JK@buaa, 2017/3/17
# table 24


class MedicalVisit(models.Model):
    #MV_id = models.CharField(max_length=32, primary_key=True)
    o_time = models.IntegerField(default=0)
    e_time = models.IntegerField(default=0)
    h_time = models.IntegerField(default=0)
    P_id = models.CharField(max_length=12, unique=True, null=False)


# created by JK@buaa, 2017/3/17
# table 25


class HealthyCondition(models.Model):
    #HC_id = models.CharField(max_length=32, primary_key=True)
    condition = models.CharField(max_length=5)
    P_id = models.CharField(max_length=12, null=False)


# created by JK@buaa, 2017/3/17
# table 26


class DiseaseType(models.Model):
    #DT_id = models.CharField(max_length=32, primary_key=True)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(auto_now_add=True)
    first = models.CharField(max_length=2)
    second = models.CharField(max_length=3)
    third = models.CharField(max_length=3)
    fourth = models.CharField(max_length=3)
    # TODO: need to finish
    #
    #


# created by JK@buaa, 2017/3/17
# table 27


class WarningInfo(models.Model):
    #WI_id = models.CharField(max_length=32)
    warning = models.CharField(max_length=50)
    P_id = models.CharField(max_length=12, null=False)


# created by JK@buaa, 2017/3/17
# table 28


class AppInfo(models.Model):
    date = models.DateField(blank=True)
    date_upload = models.DateField(auto_now_add=True)
    P_id = models.CharField(max_length=12, null=False)
    type = models.CharField(max_length=5)
    AI_id = models.CharField(max_length=32, null=False)
    S_id = models.IntegerField()
    sign = models.CharField(max_length=1, default="1")


# created by CS@buaa, 2017/3/17
# table29


class AppAttachment(models.Model):
    name = models.CharField(max_length=10, null=False)
    P_id = models.CharField(max_length=12, null=False)
    AI_id = models.IntegerField(null=False)
    dir = models.CharField(max_length=50, null=False)


# created by CS@buaa, 2017/3/17
# table30


class MedicineRegular(models.Model):
    regular = models.CharField(max_length=2, null=False)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(auto_now_add=True)


# created by CS@buaa, 2017/3/17
# table31


class MedicineChange(models.Model):
    ch = models.CharField(max_length=2, null=False)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(auto_now_add=True)
    MC_id = models.CharField(max_length=32, null=False)



# created by CS@buaa, 2017/3/17
# table32


class MedicineRecord(models.Model):
    MC_id = models.CharField(max_length=32, null=False)
    medicine = models.CharField(max_length=20, null=False)
    sign = models.CharField(max_length=2, null=False)# before: sign =0 after: sign = 1
    date = models.DateField(auto_now_add=True)
    name = models.CharField(max_length=50, null=False)
    producer = models.CharField(max_length=50, null=False)
    doc = models.ImageField(upload_to="MR", null=True)

class invitation(models.Model):

    code = models.CharField(max_length=32, null=False)
    date = models.DateField(auto_now_add=True)
    D_id = models.IntegerField(null=False)
    state = models.CharField(max_length=1,default="1")
    uid = models.CharField(max_length=1,default="0")


# created by CS@buaa, 2017/4/16
# table33


class LungFunc(models.Model):
    AE_id = models.IntegerField(null=False)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(null=False, default=datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date())
    head = models.CharField(max_length=1)
    FVC1 = models.CharField(max_length=20)
    FVC2 = models.CharField(max_length=20)
    FVC3 = models.CharField(max_length=20)
    FEV11 = models.CharField(max_length=20)
    FEV12 = models.CharField(max_length=20)
    FEV13 = models.CharField(max_length=20)
    FEV1_FVC1 = models.CharField(max_length=20)
    FEV1_FVC2 = models.CharField(max_length=20)
    FEV1_FVC3 = models.CharField(max_length=20)
    RV_TLC1 = models.CharField(max_length=20)
    RV_TLC2 = models.CharField(max_length=20)
    RV_TLC3 = models.CharField(max_length=20)
    FEV1change = models.CharField(max_length=20)
    GOLD = models.IntegerField()


# created by CS@buaa, 2017/4/16
# table34


class BloodGasAnalysis(models.Model):
    AE_id = models.IntegerField(null=False)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(null=False, default=datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date())
    head = models.CharField(max_length=1)
    useOxygen = models.CharField(max_length=1)
    oxygen = models.CharField(max_length=20)
    PH = models.CharField(max_length=20)
    PaO2 = models.CharField(max_length=20)
    PaCO2 = models.CharField(max_length=20)
    HCO3 = models.CharField(max_length=20)
    A_aDO2 = models.CharField(max_length=20)
    BEecf = models.CharField(max_length=20)
    Lac = models.CharField(max_length=20)
    SaO2 = models.CharField(max_length=20)


# created by CS@buaa, 2017/4/16
# table35


class LungCT(models.Model):
    AE_id = models.IntegerField(null=False)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(null=False, default=datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date())
    head = models.CharField(max_length=1)
    content = models.CharField(max_length=11)
    other = models.CharField(max_length=50)


# created by CS@buaa, 2017/4/16
# table36


class SleepDetectResult(models.Model):
    AE_id = models.IntegerField(null=False)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(null=False, default=datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date())
    head = models.CharField(max_length=1)
    detectTime = models.CharField(max_length=20)
    sleep = models.CharField(max_length=20)
    AHI = models.CharField(max_length=20)
    ODI = models.CharField(max_length=20)
    avgSpO2 = models.CharField(max_length=20)
    lowSpO2 = models.CharField(max_length=20)
    relaSpO2 = models.CharField(max_length=20)
    avgBreath = models.CharField(max_length=20)
    wake = models.CharField(max_length=20)
    R = models.CharField(max_length=20)
    N2 = models.CharField(max_length=20)
    N3 = models.CharField(max_length=20)


# created by CS@buaa, 2017/4/16
# table37


class UCG(models.Model):
    AE_id = models.IntegerField(null=False)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(null=False, default=datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date())
    head = models.CharField(max_length=1)
    LVEF = models.CharField(max_length=20)
    PASP = models.CharField(max_length=1)
    symptom = models.CharField(max_length=50)
    left = models.CharField(max_length=8)
    right = models.CharField(max_length=8)
    other = models.CharField(max_length=50)



# created by CS@buaa, 2017/4/16
# table38


class Cardiogram(models.Model):
    AE_id = models.IntegerField(null=False)
    P_id = models.CharField(max_length=12, null=False)
    date = models.DateField(null=False, default=datetime.datetime.strptime('1970-01-01', "%Y-%m-%d").date())
    isNormal = models.CharField(max_length=1)
    content = models.CharField(max_length=9)
    other = models.CharField(max_length=50)

class MessageText(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    content = models.CharField(max_length=200)
    date = models.DateField(null=False)
    date_upload = models.DateField(auto_now_add=True)
    sign = models.CharField(max_length=1, default="1")

class MessageAudio(models.Model):
    P_id = models.CharField(max_length=12, null=False)
    content = models.FileField(upload_to="AUDIO")
    date = models.DateField(null=False)
    date_upload = models.DateField(auto_now_add=True)
    sign = models.CharField(max_length=1, default="1")
