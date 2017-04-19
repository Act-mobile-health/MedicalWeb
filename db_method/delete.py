# -*- coding:UTF-8 -*-
from Website.models import *
from control_method import tools
#删除指定实验组
#注意判断一下D_id与G_id是否正确，删除时注意一下删除患者与实验组对应关系那张表中的内容
# 成功返回True，失败返回False
def deleteExpGroup(D_id,G_id):
    #TODO
    try:

        group = GroupInfo.objects.get(id=G_id)
        group.delete()
        # 没有使用外码
        PatientGroup.objects.filter(G_id=G_id).delete()
        return True
    except Exception, e:         
        tools.exceptionRecord('delete.py','deleteExpGroup',e)
        return False



# 从实验组中删除患者
# 注意判断一下各种id的正确性
# 成功返回True，失败返回False
def removePatientfromExpGroup(G_id, P_id):
    # TODO
    try:
        patient = PatientGroup.objects.get(G_id = G_id, P_id = P_id)
        patient.delete()
        return True
    except Exception, e:
        tools.exceptionRecord('delete.py','removePatientfromExpGroup',e)
        return False


#删除指定患者
#注意判断一下D_id与P_id是否正确
# 成功返回True，失败返回False
def deleteRelation(R_id):
    # TODO
    try:
        relation = RelationInfo.objects.get(id = R_id)
        relation.delete()
        return True
    except Exception, e:         
        tools.exceptionRecord('delete.py','deleteRelation',e)
        return False

#删除指定门诊信息，连带删除相应的临床/问卷/辅助检查/附件信息
def deleteOutPatientServiceInfo(OPS_id):
    try:
        ops = OutPatientServiceInfo.objects.get(id = OPS_id)
        temp_Pid = ops.P_id
        ops.delete()

        Clinic.objects.filter(type = 0, S_id=OPS_id).delete()
        ESS.objects.filter(type = 0, S_id=OPS_id).delete()
        MBQ.objects.filter(type = 0, S_id=OPS_id).delete()
        SGRQ.objects.filter(type = 0, S_id=OPS_id).delete()
        AttachInfo.objects.filter(type = 0, S_id=OPS_id).delete()
        values = AccessoryExamination.objects.filter(type = 0, S_id=OPS_id)
        for v in values:
            deleteAccessoryExamination(v.id)

        obj = MedicalVisit.objects.get(P_id = temp_Pid)
        obj.o_time = str(int(obj.o_time) - 1)
        obj.save()
        return True
    except Exception, e:
        tools.exceptionRecord('delete.py','deleteOutPatientServiceInfo',e)
        return False


#删除指定急诊信息，连带删除相应的临床/问卷/辅助检查/附件信息
def deleteEmergCallInfo(EC_id):
    try:
        ops = EmergCallInfo.objects.get(id = EC_id)
        temp_Pid = ops.P_id
        ops.delete()

        Clinic.objects.filter(type = 1, S_id=EC_id).delete()
        ESS.objects.filter(type = 1, S_id=EC_id).delete()
        MBQ.objects.filter(type = 1, S_id=EC_id).delete()
        SGRQ.objects.filter(type = 1, S_id=EC_id).delete()
        AttachInfo.objects.filter(type = 1, S_id=EC_id).delete()
        values = AccessoryExamination.objects.filter(type = 1, S_id=EC_id)
        for v in values:
            deleteAccessoryExamination(v.id)

        obj = MedicalVisit.objects.get(P_id = temp_Pid)
        obj.e_time = str(int(obj.e_time) - 1)
        obj.save()

        return True
    except Exception, e:
        tools.exceptionRecord('delete.py','deleteEmergCallInfo',e)
        return False


#删除指定门诊信息，连带删除相应的临床/问卷/辅助检查/附件信息
def deleteInHospitalInfo(IH_id):
    try:
        ops = InHospitalInfo.objects.get(id = IH_id)
        temp_Pid = ops.P_id
        ops.delete()

        Clinic.objects.filter(type = 2, S_id=IH_id).delete()
        ESS.objects.filter(type = 2, S_id=IH_id).delete()
        MBQ.objects.filter(type = 2, S_id=IH_id).delete()
        SGRQ.objects.filter(type = 2, S_id=IH_id).delete()
        AttachInfo.objects.filter(type = 2, S_id=IH_id).delete()
        values = AccessoryExamination.objects.filter(type = 2, S_id=IH_id)
        for v in values:
            deleteAccessoryExamination(v.id)

        obj = MedicalVisit.objects.get(P_id = temp_Pid)
        obj.h_time = str(int(obj.h_time) - 1)
        obj.save()

        return True
    except Exception, e:
        tools.exceptionRecord('delete.py','deleteInHospitalInfo',e)
        return False


#删除指定临床信息
def deleteClinicInfo(Cli_id):
    try:
        clinic = Clinic.objects.get(id = Cli_id)
        clinic.delete()
        return True
    except Exception, e:
        tools.exceptionRecord('delete.py','deleteClinicInfo',e)
        return False

#删除指定附件信息
def deleteAttachInfo(A_id):
    try:
        attach = AttachInfo.objects.get(id = A_id)
        attach.delete()
        return True
    except Exception, e:
        tools.exceptionRecord('delete.py','deleteAttachInfo',e)
        return False

# 删除指定附件信息
def deleteAccessoryExamination(AE_id):
    try:
        ae = AccessoryExamination.objects.get(id=AE_id)
        if ae.AE_type== "1":
            Obj = LungFunc.objects.get(AE_id = AE_id)
            Obj.delete()
        elif ae.AE_type== "2":
            Obj = BloodGasAnalysis.objects.get(AE_id = AE_id)
            Obj.delete()
        elif ae.AE_type== "3":
            Obj = LungCT.objects.get(AE_id = AE_id)
            Obj.delete()
        elif ae.AE_type== "4":
            Obj = SleepDetectResult.objects.get(AE_id = AE_id)
            Obj.delete()
        elif ae.AE_type== "5":
            Obj = UCG.objects.get(AE_id = AE_id)
            Obj.delete()
        elif ae.AE_type== "6":
            Obj = Cardiogram.objects.get(AE_id = AE_id)
            Obj.delete()
            
        ae.delete()
        return True
    except Exception, e:
        tools.exceptionRecord('delete.py','deleteAccessoryExamination',e)
        return False

#删除指定问卷信息
def deleteQuestionnaireInfo(kind, Q_id):
    try:
        if kind == 0:
            ESS.objects.get(id = Q_id).delete()
        elif kind == 1:
            MBQ.objects.get(id=Q_id).delete()
        elif kind == 2:
            SGRQ.objects.get(id=Q_id).delete()
        else:
            return False
        return True
    except Exception, e:
        tools.exceptionRecord('delete.py','deleteQuestionnaireInfo',e)
        return False


def deleteInvitation(data):
    try:
        invitation.objects.get(id = int(data['id'])).delete()
        return True
    except Exception, e:
        tools.exceptionRecord('delete.py','deleteInvitation',e)
        return False
