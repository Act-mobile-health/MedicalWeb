import MySQLdb
import xlwt

conn = MySQLdb.connect('localhost','root','12345678','medic',charset='utf8')
cursor = conn.cursor()

count = cursor.execute('select * from Website_catandmrc')
print count

cursor.scroll(0,mode='absolute')

results = cursor.fetchall()

fields = cursor.description
# print fields
workbook = xlwt.Workbook()
sheet = workbook.add_sheet('message',cell_overwrite_ok=True)

for field in range(0,len(fields)):
    print fields[field][0]
    sheet.write(0,field,fields[field][0])

row = 1
col = 0
for row in range(1,len(results)+1):
    for col in range(0,len(fields)):
        sheet.write(row,col,u'%s'%results[row-1][col])

workbook.save(r'./CAT.xls')
