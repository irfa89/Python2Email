#!C:\Users\irfak\AppData\Local\Programs\Python\Python36-32\python.exe python

import pandas as pd
import pyodbc

conn = pyodbc.connect('Driver={SQL Server Native Client 11.0};server=DESKTOP-B0ADAVT;database=PythonConn;trusted_connection=Yes;')
c = conn.cursor()

insertSP = """\
DECLARE @ret int;
EXEC @ret = [dbo].[insertNames] @FirstName= 'James', @LastName = 'Bond';
SELECT @ret AS ret_val;
"""

try:
    c.execute(insertSP)
    ret_val = c.fetchval()
    print (ret_val)
    conn.commit()
except Exception as e:
    print(e)
finally:
    c.close()
    conn.close()





