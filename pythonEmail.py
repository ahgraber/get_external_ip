#!/usr/bin/env python

# The code at the following URL was modified to create this script:
# http://www.cs.cmu.edu/~benhdj/Mac/unix.html#smtpScript
#
# input parameters
#	sys.argv[1] is the sender email address
#	sys.argv[2] is the reciever email address,
#		this can be a comma separated string for multiple recievers
#	sys.argv[3] is the subject text
#	sys.argv[4] is the body text
#	sys.argv[5] is the smtp username
#	sys.argv[6] is the smtp password
#   sys.argv[7] is the smtp host
#	sys.argv[8] is the smtp port
#

import smtplib, email, sys, time

# check to make sure the number of arguments is correct
if len(sys.argv) != 9:
  print 'Usage: pythonEmail.py <from> <to> <subject> <bodyText> <username> <password> <smptHost> <port>'
  sys.exit(1)

# get the argv variables
fromaddr = sys.argv[1]
toaddrs  = sys.argv[2]
subj = sys.argv[3]
body = sys.argv[4]
username = sys.argv[5]
password = sys.argv[6]
server = sys.argv[7]
port = sys.argv[8]

# create a list from the receiver in case we have a comma separated string of multiple receivers
toList = []
toList = toaddrs.split(',');

# create message with headers
timegmt = time.gmtime(time.time( ))
fmt = '%a, %d %b %Y %H:%M:%S GMT'
datestr = time.strftime(fmt, timegmt)

msg = "\r\n".join([
  " ".join(["From:",fromaddr]),
  " ".join(["To:",toaddrs]),
  " ".join(["Date:",datestr]),
  " ".join(["Subject:",subj]),
  "",
  body
  ])

if (port == "587"):
  # SMTP 
  try: 
    server = smtplib.SMTP(":".join([server,port])) #('smtp.gmail.com:587')
    server.ehlo()
    server.starttls()
    server.login(username,password)
    server.sendmail(fromaddr, toList, msg)
    server.close() 
    # print 'successfully sent the mail'
  except:
    print "failed to send mail"
elif (port == "465"):
  # SMTP_SSL
  try: 
    server_ssl = smtplib.SMTP_SSL(":".join([server,port])) #("smtp.gmail.com", 465)
    server_ssl.ehlo() # optional, called by login()
    # ssl server doesn't support or need tls, so don't call server_ssl.starttls() 
    server_ssl.login(username,password)  
    server_ssl.sendmail(fromaddr, toList, msg)
    server_ssl.close()
    # print 'successfully sent the mail'
  except:
    print "failed to send mail"
else:
  print "incorrect port"
