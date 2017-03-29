from django.shortcuts import render
from django.shortcuts import render_to_response
import MySQLdb
import datetime,json
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt

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

def addSGRQ(request):
    return render(request,"SGRQ.html")

def addClinicInfos(request):
    return render(request,"clinicInfos.html")

def patientDetails(request):

    return render(request,"patientDetails.html")

def patientInfos(request):
    return render(request,"page-patient.html")

def login(request):
    return render(request,"page-login.html")

def register(request):
    return render(request,"page-register.html")

def pending(request):
    return render(request,"pending.html")

def group(request):
    return render(request,"group.html")

def table(request):
    return render(request,"chart-xchart.html")

def temp1(request):
    print request.GET['P_id']
    return HttpResponse(json.dumps([{"P_id":request.GET['P_id']}]))

