from django.shortcuts import render

# Create your views here.

def test(request):
    return render(request,"test.html")

def index(request):
    return render(request,"index.html")

def addOutpatientInfos(request):
    return render(request,"outpatientInfos.html")

def addEmergencyInfos(request):
    return render(request,"emergencyInfos.html")

def addHospitalInfos(request):
    return render(request,"hospitalInfos.html")

def addPatientInfos(request):
    return render(request,"patientInfos.html")

def addESS(request):
    return render(request,"ESS.html")

def addMBQ(request):
    return render(request,"MBQ.html")

def addClinicInfos(request):
    return render(request,"clinicInfos.html")
