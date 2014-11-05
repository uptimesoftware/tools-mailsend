rem This utility uses Mailsend to send emails using TLS.  For more information on Mailsend, see https://github.com/muquit/mailsend

rem Generate email body
rem Additional parameters for body can be found here - http://docs.uptimesoftware.com/display/UT/Alert+Profile+and+Action+Profile+Variables#AlertProfileandActionProfileVariables-ScriptAlertVariables

del email.txt
echo Notification Type: %UPTIME_ALERTTYPE% >> email.txt
echo Date: %UPTIME_DATETIME% >> email.txt
echo. >> email.txt
echo Host: %UPTIME_HOSTNAME% >> email.txt
echo Host Status: %UPTIME_HOSTSTATUS% >> email.txt
echo Service: %UPTIME_SVCNAME% >> email.txt
echo Service Status: %UPTIME_SVCSTATUS% >> email.txt
echo. >> email.txt
echo Service Output: %UPTIME_SVCOUTPUT% >> email.txt

set SMTPSENDERNAME="uptime Monitoring Station"
set SUBJECT="up.time Alert %UPTIME_SVCNAME% -> %UPTIME_SVCSTATUS%" 


mailsend1.17b15.exe -to %UPTIME_EMAIL% -name %SMTPSENDERNAME% -from %UPTIME_SMTPSENDER% -starttls -smtp %UPTIME_SMTPSERVER% -port %UPTIME_SMTPPORT% -sub %SUBJECT% -msg-body email.txt +cc +bc -q -auth-plain -user %UPTIME_SMTPUSER% -pass %UPTIME_SMTPPASSWORD%
