# -*- coding:UTF-8 -*-
from Website.models import GroupInfo,PatientGroup,RelationInfo,OutPatientServiceInfo,EmergCallInfo,InHospitalInfo,Clinic,ESS,MBQ,SGRO,AttachInfo,AccessoryExamination

#删除指定实验组
#注意判断一下D_id与G_id是否正确，删除时注意一下删除患者与实验组对应关系那张表中的内容
# 成功返回True，失败返回False
def deleteExpGroup(D_id,G_id):
    #TODO
    try:

        group = GroupInfo.objects.get(D_id=D_id,id=G_id)
        group.delete()
        # 没有使用外码
        PatientGroup.objects.filter(G_id=G_id).delete()
        return True
    except:
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
    except :
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
    except:
        return False

#删除指定门诊信息，连带删除相应的临床/问卷/辅助检查/附件信息
def deleteOutPatientServiceInfo(OPS_id):
    try:
        ops = OutPatientServiceInfo.objects.get(id = OPS_id)
        ops.delete()

        Clinic.objects.filter(type = 0, S_id=OPS_id).delete()
        ESS.objects.filter(type = 0, S_id=OPS_id).delete()
        MBQ.objects.filter(type = 0, S_id=OPS_id).delete()
        SGRO.objects.filter(type = 0, S_id=OPS_id).delete()
        AttachInfo.objects.filter(type = 0, S_id=OPS_id).delete()

        return True
    except:
        return False


#删除指定急诊信息，连带删除相应的临床/问卷/辅助检查/附件信息
def deleteEmergCallInfo(EC_id):
    try:
        ops = EmergCallInfo.objects.get(id = EC_id)
        ops.delete()

        Clinic.objects.filter(type = 1, S_id=EC_id).delete()
        ESS.objects.filter(type = 1, S_id=EC_id).delete()
        MBQ.objects.filter(type = 1, S_id=EC_id).delete()
        SGRO.objects.filter(type = 1, S_id=EC_id).delete()
        AttachInfo.objects.filter(type = 1, S_id=EC_id).delete()

        return True
    except:
        return False


#删除指定门诊信息，连带删除相应的临床/问卷/辅助检查/附件信息
def deleteInHospitalInfo(IH_id):
    try:
        ops = InHospitalInfo.objects.get(id = IH_id)
        ops.delete()

        Clinic.objects.filter(type = 2, S_id=IH_id).delete()
        ESS.objects.filter(type = 2, S_id=IH_id).delete()
        MBQ.objects.filter(type = 2, S_id=IH_id).delete()
        SGRO.objects.filter(type = 2, S_id=IH_id).delete()
        AttachInfo.objects.filter(type = 2, S_id=IH_id).delete()

        return True
    except:
        return False


#删除指定临床信息
def deleteClinicInfo(Cli_id):
    try:
        clinic = Clinic.objects.get(id = Cli_id)
        clinic.delete()
        return True
    except:
        return False

#删除指定附件信息
def deleteAttachInfo(A_id):
    try:
        attach = AttachInfo.objects.get(id = A_id)
        attach.delete()
        return True
    except:
        return False

# 删除指定附件信息
def deleteAccessoryExamination(AE_id):
    try:
        ae = AccessoryExamination.objects.get(id=AE_id)
        ae.delete()
        return True
    except:
        return False

#删除指定问卷信息
def deleteQuestionnaireInfo(type, Q_id):
    try:
        if type == 0:
            ESS.objects.get(id = Q_id).delete()
        elif type == 1:
            MBQ.objects.get(id=Q_id).delete()
        elif type == 2:
            SGRO.objects.get(id=Q_id).delete()
        else:
            return False
        return True
    except:
        return False


