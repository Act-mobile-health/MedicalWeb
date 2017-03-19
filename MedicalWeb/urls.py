"""MedicalWeb URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from Website.views import test,index,patientDetail,addOutpatientInfos,addEmergencyInfos,addHospitalInfos,addPatientInfos,addESS,addMBQ,addClinicInfos,patientInfos,allPatient

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^test/$', test),
    url(r'^$', index),
    url(r'^page-patient',allPatient),
    url(r'^patDetail',patientDetail),
    url(r'^patientInfos/$',patientInfos),
    url(r'^add/outpatientInfos/$', addOutpatientInfos),
    url(r'^add/emergencyInfos/$', addEmergencyInfos),
    url(r'^add/hospitalInfos/$', addHospitalInfos),
    url(r'^add/patientInfos/$', addPatientInfos),
    url(r'^add/clinicInfos/$', addClinicInfos),
    url(r'^add/ESS/$', addESS),
    url(r'^add/MBQ/$', addMBQ),
]
