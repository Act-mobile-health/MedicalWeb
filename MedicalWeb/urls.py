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

from Website.views import test,index,addOutpatientInfos,addEmergencyInfos,addHospitalInfos,addPatientInfos,addESS,addMBQ,addClinicInfos

from Website.views import *

from django.conf.urls import url
from django.contrib import admin
from Website import view
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^test/$', test),
    url(r'^table/$', table),
    url(r'^$', index),
    url(r'^patientDetails/$',patientDetails),
    url(r'^patientInfos/$',patientInfos),
    url(r'^add/outpatientInfos/$', addOutpatientInfos),
    url(r'^add/emergencyInfos/$', addEmergencyInfos),
    url(r'^add/hospitalInfos/$', addHospitalInfos),
    url(r'^add/patientInfos/$', addPatientInfos),
    url(r'^add/clinicInfos/$', addClinicInfos),
    url(r'^add/ESS/$', addESS),
    url(r'^add/MBQ/$', addMBQ),
    url(r'^add/SGRQ/$', addSGRQ),
    url(r'^login/$', login),
    url(r'^register/$', register),
    url(r'^pending/$', pending),
    url(r'^p/p/$', temp1),





    url(r'^admin/', admin.site.urls),
    url(r'^get/', view.get_test),
    url(r'^post/', view.post_test),
    url(r'^i1/',view.register),
    url(r'^i2/',view.repeatCheck),
    url(r'^i3/',view.login),
    url(r'^i4/',view.retrievePassword),
    url(r'^i5/',view.getDoctorBasicInfo),
    url(r'^i6/',view.getDoctorDetailedInfo),
    url(r'^i7/',view.updateDoctorInfo),
    url(r'^i8/',view.getExpGroups),
    url(r'^i9/',view.getExpGroupPatientsInfo),
    url(r'^i10/',view.addExpGroup),
    url(r'^i11/',view.deleteExpGroup),
    url(r'^i12/',view.updateExpGroup),
    url(r'^i13/',view.addPatientToExpGroup),
    url(r'^i14/',view.removePatientfromExpGroup),
    url(r'^i15/',view.getPatientsBasicInfo),
    url(r'^i16/',view.getPatientDetailedInfo),
    url(r'^i17/',view.addPatientInfo),
    url(r'^i18/',view.updatePatientInfo),
]
