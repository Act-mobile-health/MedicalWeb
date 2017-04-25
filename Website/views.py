from django.shortcuts import render
from django.shortcuts import render_to_response
from django.contrib.auth.decorators import login_required
import MySQLdb
import datetime,json
from django.http import HttpResponse
from django.contrib import auth
from django.views.decorators.csrf import csrf_exempt

# Create your views here.

def test(request):
    return render(request,"test.html")

@login_required
def index(request):
    return render(request,"index.html")

@login_required
def addOutpatientInfos(request):
    return render(request,"outpatientInfos.html")

@login_required
def addEmergencyInfos(request):
    return render(request,"emergencyInfos.html")

@login_required
def addHospitalInfos(request):
    return render(request,"hospitalInfos.html")

@login_required
def addPatientInfos(request):
    return render(request,"patientInfos.html")

@login_required
def addESS(request):
    return render(request,"ESS.html")

@login_required
def addMBQ(request):
    return render(request,"MBQ.html")

@login_required
def addSGRQ(request):
    return render(request,"SGRQ.html")

def addClinicInfos(request):
    return render(request,"clinicInfos.html")

@login_required
def patientDetails(request):

    return render(request,"patientDetails.html")

@login_required
def patientInfos(request):
    return render(request,"page-patient.html")

def login(request):
    return render(request,"login.html")

def register(request):
    return render(request,"register.html")

@login_required
def pending(request):
    return render(request,"pending.html")

@login_required
def group(request):
    return render(request,"group.html")

@login_required
def table(request):
    return render(request,"chart-xchart.html")

def temp1(request):
    print request.GET['P_id']
    return HttpResponse(json.dumps([{"P_id":request.GET['P_id']}]))

@login_required
def logout(request):
    auth.logout(request)
    return render(request,"login.html")

@login_required
def setting(request):
    return render(request,"setting.html")

@login_required
def invite(request):
    return render(request,"invite.html")
