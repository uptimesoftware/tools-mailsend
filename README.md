If you are utilizing TLS on your mail server and wish to send email alerts via up.time, this utility will allow you to accomplish this.  This script uses the mailsend utility (https://github.com/muquit/mailsend) to send email alerts over TLS.  The package contains:
* readme.txt
* mailsend1.17b15.exe
* mailsend.bat --> batch file which generates emial body and sends alert using mailsend1.17b15.exe utility

Download here and unzip on the monitoring station under C:\Program Files\uptime software\uptime\scripts\

To use, configure your email email configuration within up.time under the Config tab.  Here is an example of a configuration for Gmail.

SMTP Server		    smtp.gmail.com
SMTP User		      some.user
SMTP Password		  somePassword
SMTP Port		      587
SMTP Sender		    some.user@gmail.com
SMTP HELO String	uptimesoftware.com

Now that the mail server that up.time should use is configured, create an Alert Profile using the Script alert option.  In the path, enter the path to the mailsend.bat file (ex. C:\Program Files\uptime software\uptime\scripts\mailsend\mailsend.bat).  Define the notification group and save.  Test the Alert profile to confirm the notification group received the email.
