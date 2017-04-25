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
    url(r'^patientDetails/$', patientDetails),
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
    url(r'^group/$', group),
    url(r'^logout/$', logout),
    url(r'^p/p/$', temp1),

    url(r'^setting/$', setting),
    url(r'^invite/$', invite),





    url(r'^admin/', admin.site.urls),
    # url(r'^get/', view.get_test),
    # url(r'^post/', view.post_test),
    url(r'^i1/',view.register),
    url(r'^i2/',view.repeatCheck),
    url(r'^i3/',view.login),
    url(r'^i4/',view.retrievePassword),

    url(r'^i5/',view.getUserBasicInfo),
    url(r'^i6/',view.getUserDetailedInfo),
    url(r'^i7/',view.updateUserInfo),

    # url(r'^i10/',view.addExpGroup),

    url(r'^i15/',view.getPatientsBasicInfo),
    url(r'^i16/',view.getPatientDetailedInfo),
    url(r'^i17/',view.addOrUpdatePatientInfo),

    url(r'^i18/',view.getRelationsInfo),
    url(r'^i19/',view.addOrUpdateRelationInfo),
    url(r'^i20/',view.deleteRelation),

    url(r'^i21/',view.getCEHAllInfo),
    url(r'^i22/',view.addOrUpdateCEHInfo),
    url(r'^i23/',view.getCEHDetailedInfo),
    url(r'^i24/',view.deleteCEHInfo),

    url(r'^i25/',view.getCorQBasicInfo),
    url(r'^i26/',view.addOrUpdateClinicInfo),
    url(r'^i27/',view.getClinicDetailedInfo),
    url(r'^i28/',view.deleteClinicInfo),

    url(r'^i29/',view.addOrUpdateQuestionnaireInfo),
    url(r'^i30/',view.getQuestionnaireDetailedInfo),
    url(r'^i31/',view.deleteQuestionnaireInfo),

    url(r'^i32/',view.getAorAEDetailedInfo),
    url(r'^i33/',view.addOrUpdateAorAEDetailedInfo),
    url(r'^i34/',view.deleteAorAEDetailedInfo),
    url(r'^i35/',view.getOneAorAEDetailedInfo),

    url(r'^test2/',view.test2),
    url(r'^test1/',view.test),

    url(r'^i36/',view.getPatientName),
    url(r'^i37/',view.getExpGroups),
    url(r'^i38/',view.addOrUpdateExpGroup),
    url(r'^i39/',view.getOneExpGroupInfo),
    url(r'^i40/',view.getPatientGroupInfo),
    url(r'^i41/',view.deleteExpGroup),
    url(r'^i42/',view.getExpGroupPatientsInfo),
    url(r'^i43/',view.addPatientToExpGroup),
    url(r'^i44/',view.removePatientfromExpGroup),


    url(r'^i45/',view.app_addOrUpdateCATTable),
    url(r'^i46/',view.app_addOrUpdatePmExposureTable),
    url(r'^i47/',view.app_addOrUpdateAppInfo),

    url(r'^i48/',view.app_addOrUpdateMedicineRegularTable),
    url(r'^i50/',view.app_addAppAttachment),
    url(r'^i52/',view.app_addOrUpdateMedicineChangeTable),
    url(r'^i53/',view.app_addMedicineRecordTable),

    url(r'^i49/',view.app_login),
    url(r'^i51/',view.upload2),



    url(r'^i60/',view.getInvitation),
    url(r'^i61/',view.addInvitation),
    url(r'^i62/',view.deleteInvitation),
    url(r'^i63/',view.getUserGroup),

    url(r'^i65/',view.getUsers),
    url(r'^i66/',view.getUserName),

    # for AEType.js
    url(r'^i71/',view.editAEType),
    url(r'^i72/',view.updateLungFunc),
    url(r'^i73/',view.updateBloodGasAnalysis),
    url(r'^i74/',view.updateLungCT),
    url(r'^i75/',view.updateSleepDetectResult),
    url(r'^i76/',view.updateUCG),
    url(r'^i77/',view.updateCardiogram),

    # url(r'^i18/',view.updatePatientInfo),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
