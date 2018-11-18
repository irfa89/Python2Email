#!C:\Users\irfak\AppData\Local\Programs\Python\Python36-32\python.exe python

#print("Hello , world !")

# Importing modules required for email
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.base import MIMEBase
from email import encoders

# Email Authentication 
email_sender = 'XXXXXXXX'
email_password = 'XXXXXXXX'
email_receiver = 'XXXXXXXX'

# Formating the Email for receiver
subject = 'Email from python'

msg = MIMEMultipart()
msg['From'] = email_sender
msg['To'] = email_receiver
msg['Subject'] = subject

body = 'sending email from Python!'
msg.attach(MIMEText(body,'plain'))

# Attaching the file - CSV file in my case
filename='test.csv'
attachment = open(filename,'rb')

part = MIMEBase('application','octet-stream')
part.set_payload((attachment).read())
encoders.encode_base64(part)
part.add_header('Content-Disposition',"attachment; filename= "+filename)

# Preparing the attachment with Authentication to send.
msg.attach(part)
text = msg.as_string()
server = smtplib.SMTP('smtp.gmail.com',587)
server.starttls()
server.login(email_sender,email_password)

# Sending Email

try:
    server.sendmail(email_sender,email_receiver,text)
    print("Email sent successfully ! ")
except SMTPException as e:
    print(e)
finally:
    server.quit()