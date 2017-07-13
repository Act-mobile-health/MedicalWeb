import MySQLdb
import xlwt
# from db_method import select
# from Website.models import *


PATH = "/home/zhangyc/python_workspace/MedicalWeb/file_import/"
NAME = "pm25.xls"

conn = MySQLdb.connect('localhost','root','12345678','medic',charset='utf8')
cursor = conn.cursor()


count = cursor.execute('select * from Website_pm25')
cursor.scroll(0,mode='absolute')
results = cursor.fetchall()
fields = cursor.description
workbook = xlwt.Workbook()
sheet = workbook.add_sheet('message',cell_overwrite_ok=True)
#### write header ####
for field in range(0,len(fields)):
    print fields[field][0]
    print field,"field"
    print fields[field]
    sheet.write(0,field,fields[field][0])

#### write content ####
row = 1
col = 0
for row in range(1,len(results)+1):
    for col in range(0,len(fields)):
        sheet.write(row,col,u'%s'%results[row-1][col])

workbook.save(PATH + NAME)
