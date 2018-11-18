#!C:\Users\irfak\AppData\Local\Programs\Python\Python36-32\python.exe python

# print("Hello , world !")

import pandas as pd
import pyodbc

conn = pyodbc.connect('Driver={SQL Server Native Client 11.0};server=XXXXXXXX;database=PythonConn;trusted_connection=Yes;')
query = "SELECT FirstName  FROM dbo.vPerson;"

try:
    df = pd.read_sql(query,conn)
    print("Connection established succesfully  !")
    print(df.head(3))
except Exception as e:
    print(e)
finally:
    conn.close()





