# -*- coding:UTF-8 -*-
from django.http import HttpResponse
import json
from django.views.decorators.csrf import csrf_exempt
import demjson
from db_method import insert,select,update,delete
from control_method import tools
from django.shortcuts import render

#接口1
@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = request.POST
        message = {'result': -1}
        if insert.addDoctorInfo(data) == True:
            message['result'] = 0
        else:
            message['result'] = -1

        # message = tools.toString(message)
        js = json.dumps(message)
        return HttpResponse(js)

#接口2
@csrf_exempt
def repeatCheck(request):
    if request.method == 'POST':
        message = {'result': -1}
        data = request.POST
        if select.checkExist(data['key'],data['value']):
            result = -1
        else:
            result = 0

        # message = tools.toString(message)
        js = json.dumps(message)

        return HttpResponse(js)
#接口3
@csrf_exempt
def login(request):
    if request.method == 'POST':
        data = request.POST
        message={'result':-1}
        #判断用户名是否存在
        if select.checkExist('userName',data['userName']):
            password = select.getUserInfo(data['userName'], 'password')
            # 判断密码是否正确
            if password == tools.md5(data['password']):
                message['result'] = 0
                request.session['D_id'] = select.getUserInfo(data['userName'], 'D_id')
            else:
                message['result'] = -1
        else:
            message['result'] = -1
        # message = tools.toString(message)
        js =  json.dumps(message)

        return HttpResponse(js)

# 接口4
@csrf_exempt
def retrievePassword(request):
    if request.method == 'POST':
        message = {'result': -1}
        data = request.POST
        # mail
        if int(data['type']) == 1:
            if data['mail_cellphone'] == select.getUserInfo(data['userName'], 'mail'):
                if tools.sendEmail(data['mail_cellphone'],
                                    select.getUserInfo(data['userName'], 'password')) == True:
                    result = 0
                else:
                    result = -1
            else:
                result = -1
        # cellphone
        else:
            if data['mail_cellphone'] == select.getUserInfo(data['userName'], 'cellphone'):
                result = 0
                # TODO
            else:
                result = -1
        # message = tools.toString(message)
        js = json.dumps(message)
        return HttpResponse(js)

#接口5
@csrf_exempt
def getDoctorBasicInfo(request):
    if request.method == 'GET':
        data = request.GET
        message = {}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            message = select.getDoctorBasicInfo(D_id)
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request,"page-login.html")


#接口6
@csrf_exempt
def getDoctorDetailedInfo(request):
    if request.method == 'GET':
        data = request.GET
        message = {}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            message = select.getDoctorDetailedInfo(D_id)
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


#接口7
@csrf_exempt
def updateDoctorInfo(request):
    if request.method == 'POST':
        message = {}
        data = request.POST
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if update.updateDoctorInfo(D_id,data) == True:
                message['result'] = 0
            else:
                message['result'] = -1

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


#接口8
@csrf_exempt
def getExpGroups(request):
    if request.method == 'GET':
        data = {}
        message = []
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            message = select.getExpGroups(D_id)
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

#接口9
@csrf_exempt
def getExpGroupPatientsInfo(request):
    if request.method == 'GET':
        data = request.GET
        message = []
        if 'D_id' in request.session:
            message = select.getExpGroupPatientsInfo(int(data['G_id']))
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


#接口10
@csrf_exempt
def addOrUpdateExpGroup(request):
    if request.method == 'POST':
        data = request.POST
        message = {}
        if 'D_id' in request.session:
            D_id = request.session['D_id']

            if data['G_id'] == '':
                if insert.addExpGroup(D_id,data['name'],data['information']) == True:
                    message['result'] = 0
                else:
                    message['result'] = -1
            else:
                if update.updateExpGroup(int(data['G_id']), data['name'], data['information']) == True:
                    message['result'] = 0
                else:
                    message['result'] = -1
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

#接口11
@csrf_exempt
def deleteExpGroup(request):
    if request.method == 'POST':
        message = {}
        data = request.POST
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if delete.deleteExpGroup(D_id,int(data['G_id'])) == True:
                message['result'] = 0
            else:
                message['result'] = -1
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")



#接口12
# @csrf_exempt
# def updateExpGroup(request):
#     if request.method == 'POST':
#         message = {}
#         data = request.POST
#         if 'D_id' in request.session:
#             if update.updateExpGroup(int(data['G_id']),data['name'],data['information']) == True:
#                 message['result'] = 0
#             else:
#                 message['result'] = -1
#             # message = tools.toString(message)
#             js = json.dumps(message)
#             return HttpResponse(js)
#         else:
#             return render(request, "page-login.html")



#接口13
@csrf_exempt
def addPatientToExpGroup(request):
    if request.method == 'POST':
        message = {}
        data = request.POST
        if 'D_id' in request.session:
            if insert.addPatientToExpGroup(int(data['G_id']),data['P_id']):
                message['result'] = 0
            else:
                message['result'] = -1
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

#接口14
@csrf_exempt
def removePatientfromExpGroup(request):
    if request.method == 'POST':
        message = {}
        data = request.POST
        if 'D_id' in request.session:
            if delete.removePatientfromExpGroup(int(data['G_id']),data['P_id']):
                message['result'] = 0
            else:
                message['result'] = -1
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

#接口15
@csrf_exempt
def getPatientsBasicInfo(request):
    if request.method == 'GET':
        data = {}
        message = []
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            print D_id,"IIIIDDDDDDDDDDDDD"
            message = select.getPatientsBasicInfo(D_id)
            # # message = tools.toString(message)
            print "message",message
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

#接口16
@csrf_exempt
def getPatientDetailedInfo(request):
    if request.method == 'GET':
        data = request.GET
        print data
        message = []
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            message = select.getPatientDetailedInfo(data['P_id'])
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


#接口17
@csrf_exempt
def addOrUpdatePatientInfo(request):
    if request.method == 'POST':
        message = {}
        data = request.POST
        print data
        if 'D_id' in request.session:
            D_id = request.session['D_id']

            if data['P_id'] == '':
                if insert.addPatientInfo(data) == True:
                    message['result'] = 0
                else:
                    message['result'] = -1
            else:
                if update.updatePatientInfo(data) == True:
                    message['result'] = 0
                else:
                    message['result'] = -1
            message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# #接口18
# @csrf_exempt
# def updatePatientInfo(request):
#     if request.method == 'POST':
#         message = {}
#         data = request.POST
#         if 'D_id' in request.session:
#             D_id = request.session['D_id']
#             if update.updatePatientInfo(data) == True:
#                 message['result'] = 0
#             else:
#                 message['result'] = -1
#             # message = tools.toString(message)
#             js = json.dumps(message)
#             return HttpResponse(js)
#         else:
#             return render(request, "page-login.html")

#接口19
@csrf_exempt
def getRelationsInfo(request):
    if request.method == 'GET':
        data = request.GET
        message = []
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            message = select.getRelationInfos(data['P_id'])
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# #接口20
# @csrf_exempt
# def updateRelationInfo(request):
#     if request.method == 'POST':
#         message = {}
#         data = request.POST
#         if 'D_id' in request.session:
#             D_id = request.session['D_id']
#             R_id = int(data['R_id'])
#             if update.updateRelationInfo(R_id,data) == True:
#                 message['result'] = 0
#             else:
#                 message['result'] = -1
#             # message = tools.toString(message)
#             js = json.dumps(message)
#             return HttpResponse(js)
#         else:
#             return render(request, "page-login.html")

#接口21
@csrf_exempt
def addOrUpdateRelationInfo(request):
    if request.method == 'POST':
        message = {}
        data = request.POST
        if 'D_id' in request.session:
            D_id = request.session['D_id']

            if data['R_id'] == '':
                if insert.addRelationInfo(data) == True:
                    message['result'] = 0
                else:
                    message['result'] = -1
            else:
                R_id = int(data['R_id'])
                if update.updateRelationInfo(R_id, data) == True:
                    message['result'] = 0
                else:
                    message['result'] = -1

            message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


#接口22
@csrf_exempt
def deleteRelation(request):
    if request.method == 'GET':
        message = {}
        data = request.GET
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if delete.deleteRelation(int(data['R_id'])) == True:
                message['result'] = 0
            else:
                message['result'] = -1
            message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")



@csrf_exempt
def getCEHAllInfo(request):
    if request.method == 'GET':
        data = request.GET
        message = []
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if int(data['type']) == 0:
                message = select.getPatientAllOutPatientServiceInfos(data['P_id'])
            elif int(data['type']) == 1:
                message = select.getPatientAllEmergCallInfos(data['P_id'])
            elif int(data['type']) == 2:
                message = select.getPatientAllInHospitalInfos( data['P_id'])

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


#接口23
@csrf_exempt
def getCEHDetailedInfo(request):
    if request.method == 'GET':
        data = request.GET
        print data
        message = []
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if int(data['type']) == 0:
                message = select.getPatientDetailedOutPatientServiceInfos(data['S_id'])
            elif int(data['type']) == 1:
                message = select.getPatientDetailedEmergCallInfos(data['S_id'])
            elif int(data['type']) == 2:
                message = select.getPatientDetailedInHospitalInfos( data['S_id'])

            #message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


#接口24
@csrf_exempt
def addOrUpdateCEHInfo(request):
    if request.method == 'POST':
        data = request.POST
        message = {'result':-1}
        if 'D_id' in request.session:
            D_id = request.session['D_id']

            if data['id'] == '':
                if int(data['type']) == 0:
                    result = insert.addOutPatientServiceInfo(data)
                elif int(data['type']) == 1:
                    result = insert.addEmergCallInfo(data)
                elif int(data['type']) == 2:
                    result = insert.addInHospitalInfo(data)
                else:
                    result = False
            else:
                id = int(data['id'])
                if int(data['type']) == 0:
                    result = update.updateOutPatientServiceInfo(id, data)
                elif int(data['type']) == 1:
                    result = update.updateEmergCallInfo(id, data)
                elif int(data['type']) == 2:
                    result = update.updateInHospitalInfo(id, data)
                else:
                    result = False

            if result == True:
                message['result'] = 0

            message = tools.toString(message)
            js = json.dumps(message)
            print js,"########"
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


#接口25
@csrf_exempt
def deleteCEHInfo(request):
    if request.method == 'GET':
        data = request.GET
        print  data
        message = {'result':-1}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if int(data['type']) == 0:
                result = delete.deleteOutPatientServiceInfo(int(data['S_id']))
            elif int(data['type']) == 1:
                result = delete.deleteEmergCallInfo(int(data['S_id']))
            elif int(data['type']) == 2:
                result = delete.deleteInHospitalInfo(int(data['S_id']))
            else:
                result = False

            if result == True:
                message['result'] = 0

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# #接口26
# @csrf_exempt
# def updateCEHInfo(request):
#     if request.method == 'POST':
#         data = request.POST
#         message = {'result':-1}
#         if 'D_id' in request.session:
#             D_id = request.session['D_id']
#             id = int(data['id'])
#             if int(data['type']) == 0:
#                 result = update.updateOutPatientServiceInfo(id,data)
#             elif int(data['type']) == 1:
#                 result = update.updateEmergCallInfo(id,data)
#             elif int(data['type']) == 2:
#                 result = update.updateInHospitalInfo(id,data)
#             else:
#                 result = False
#
#             if result == True:
#                 message['result'] = 0
#
#             # message = tools.toString(message)
#             js = json.dumps(message)
#             return HttpResponse(js)
#         return render(request, "page-login.html")


# 接口27
@csrf_exempt
def getCorQBasicInfo(request):
    if request.method == 'GET':
        data = request.GET
        message = []
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if int(data['kind']) == 0:
                message = select.getBasicClinicInfos(data['type'],int(data['S_id']))
            else:
                message = select.getBasicQuestionnaireInfos(data['type'],int(data['S_id']))

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# 接口28
@csrf_exempt
def getClinicDetailedInfo(request):
    if request.method == 'GET':
        data = request.GET
        message = {}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            message = select.getDetailedClinicInfo(int(data['Cli_id']))

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


# 接口29
@csrf_exempt
def getQuestionnaireDetailedInfo(request):
    if request.method == 'GET':
        data = request.GET
        message = {}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            message = select.getDetailedQuestionnaireInfo(int(data['type']),int(data['id']))

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")



# 接口30
@csrf_exempt
def addOrUpdateClinicInfo(request):
    if request.method == 'POST':
        data = request.POST
        print data
        message = {'result': -1}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            S_id = int(data['S_id'])

            if data['Cli_id'] == '':
                if insert.addClinicInfo(S_id,data):
                    message['result'] = 0
            else:
                if update.updateClinicInfo(S_id, data):
                    message['result'] = 0

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# 接口31
@csrf_exempt
def addOrUpdateQuestionnaireInfo(request):
    if request.method == 'POST':
        data = request.POST
        message = {'result': -1}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            S_id = int(data['S_id'])
            kind = int(data['kind'])

            if ('ESS_id' in data and data['ESS_id']=='') or \
                ('MBQ_id' in data and data['MBQ_id']=='') or \
                ('SGRO_id' in data and data['SGRO_id']==''):

                if insert.addQuestionnaireInfo(kind,S_id,data):
                    message['result'] = 0

            else:
                if update.updateQuestionnaireInfo(kind, S_id, data):
                    message['result'] = 0

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


# 接口32
# @csrf_exempt
# def updateClinicInfo(request):
#     if request.method == 'POST':
#         data = request.POST
#         message = {'result': -1}
#         if 'D_id' in request.session:
#             D_id = request.session['D_id']
#             S_id = int(data['S_id'])
#             if update.updateClinicInfo(S_id,data):
#                 message['result'] = 0
#
#             # message = tools.toString(message)
#             js = json.dumps(message)
#             return HttpResponse(js)
#         else:
#             return render(request, "page-login.html")

# 接口33
# @csrf_exempt
# def updateQuestionnaireInfo(request):
#     if request.method == 'POST':
#         data = request.POST
#         message = {'result': -1}
#         if 'D_id' in request.session:
#             D_id = request.session['D_id']
#             S_id = int(data['S_id'])
#             kind = int(data['kind'])
#             if update.updateQuestionnaireInfo(kind,S_id,data):
#                 message['result'] = 0
#
#             # message = tools.toString(message)
#             js = json.dumps(message)
#             return HttpResponse(js)
#         else:
#             return render(request, "page-login.html")

# 接口34
@csrf_exempt
def deleteClinicInfo(request):
    if request.method == 'GET':
        data = request.GET
        message = {'result': -1}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if delete.deleteClinicInfo(int(data['Cli_id'])):
                message['result'] = 0

            message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# 接口35
@csrf_exempt
def deleteQuestionnaireInfo(request):
    if request.method == 'POST':
        data = request.POST
        message = {'result': -1}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if delete.deleteQuestionnaireInfo(int(data['kind']),int(data['id'])):
                message['result'] = 0

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")


# 接口36
@csrf_exempt
def getAorAEDetailedInfo(request):
    if request.method == 'POST':
        data = request.POST
        message = []
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if int(data['kind']) == 0:
                message = select.getDetailedAccessoryExamination(data['type'],int(data['S_id']))
            else:
                message = select.getDetailedAttachInfos(data['type'],int(data['S_id']))

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# 接口37
@csrf_exempt
def addOrUpdateAorAEDetailedInfo(request):
    if request.method == 'POST':
        data = request.POST
        message = {'result': -1}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            S_id=int(data['S_id'])

            if data['id'] == '':
                if int(data['kind']) == 0:
                    if insert.addAccessoryExamination(D_id,S_id,data):
                        message['result'] = 0
                else:
                    if insert.addAttachInfo(D_id,S_id,data):
                        message['result'] = 0
            else:
                if int(data['kind']) == 0:
                    if update.updateAccessoryExamination(int(data['id']), D_id, S_id, data):
                        message['result'] = 0
                else:
                    if update.updateAttachInfo(int(data['id']), D_id, S_id, data):
                        message['result'] = 0

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# 接口38
# @csrf_exempt
# def updateAorAEDetailedInfo(request):
#     if request.method == 'POST':
#         data = request.POST
#         message = {'result': -1}
#         if 'D_id' in request.session:
#             D_id = request.session['D_id']
#             S_id = int(data['S_id'])
#             if int(data['kind']) == 0:
#                 if update.updateAccessoryExamination(int(data['id']),D_id,S_id,data):
#                     message['result'] = 0
#             else:
#                 if update.updateAttachInfo(int(data['id']),D_id,S_id,data):
#                     message['result'] = 0
#
#             # message = tools.toString(message)
#             js = json.dumps(message)
#             return HttpResponse(js)
#         else:
#             return render(request, "page-login.html")

# 接口39
@csrf_exempt
def deleteAorAEDetailedInfo(request):
    if request.method == 'POST':
        data = request.POST
        message = {'result': -1}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if int(data['kind']) == 0:
                if delete.deleteAccessoryExamination(int(data['id'])):
                    message['result'] = 0
            else:
                if delete.deleteAttachInfo(int(data['id'])):
                    message['result'] = 0

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# 接口40
@csrf_exempt
def updateDocPassword(request):
    if request.method == 'POST':
        message = {}
        data = request.POST
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            if update.updatePassword(D_id, data['oldPassword'],data['newPassword']):
                message['result'] = 0
            else:
                message['result'] = -1
            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# 接口41
# Cat &&MRC 返回近两周的sum
@csrf_exempt
def getCat_MRCSum2Weeks(request):
    if request.method == 'POST':
        data = request.POST
        message = []
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            message = select.getMsg2Weeks(data['P_id'], 1)

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# 接口42
# 近两周暴露水平
@csrf_exempt
def getExploure2Weeks(request):
    if request.method == 'POST':
        data = request.POST
        message = []
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            message = select.getMsg2Weeks(data['P_id'], 2)

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")

# 接口43
@csrf_exempt
def getPatientName(request):
    if request.method == 'POST':
        data = request.POST
        message = {}
        if 'D_id' in request.session:
            D_id = request.session['D_id']
            message = getPatientName(data['P_id'])

            # message = tools.toString(message)
            js = json.dumps(message)
            return HttpResponse(js)
        else:
            return render(request, "page-login.html")
