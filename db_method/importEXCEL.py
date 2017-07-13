from pyexcel_xls import get_data
# from control_method import tools
from db_method import insert
# from Website.models import *


def importPatientInfo(input):
    header = next(input)
    # patients = list()
    for p in input:
        print len(p), p
        data = {}
        i = 0
        for label in header:
            data[label] = p[i]
            i += 1
        print len(data), data
        insert.addPatientInfo(data)
        # patients.append(data)

def importCATandMRC(input):
    header = next(input)
    for p in input:
        print len(p), p
        data = {}
        i = 0
        for label in header:
            data[label] = p[i]
            i += 1
        print len(data), data
        insert.addCATandMRC(data)

def read_xls_file():
    PATH = "/home/zhangyc/python_workspace/MedicalWeb/file_import/"
    NAME = "patient.xls"
    xls_data = get_data(PATH + NAME)
    for sheet_n in xls_data.keys():
        importPatientInfo(iter(xls_data[sheet_n]))
