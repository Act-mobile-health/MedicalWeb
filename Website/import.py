from pyexcel_xls import get_data
from pyexcel_xls import save_data


def read_xls_file():
    xls_data = get_data(r"./readout.xls")
    print "Get data type:", type(xls_data)
    for sheet_n in xls_data.keys():
        print sheet_n, ":", xls_data[sheet_n][0]


if __name__ == '__main__':
    read_xls_file()
