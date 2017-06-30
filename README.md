# bw-mail
base image with wildfly configured for mail server connection

* to configure connection with mail server:

```
docker pull plussell/bw-mail
```

```
docker run --name='some_name' -it -p 8080:8080 -p 9990:9990 \
-e MAIL_SESSION_NAME='session name' \
-e MAIL_USERNAME='login user name' \
-e MAIL_PASSWORD='mail password' \
-e SMTP_NAME='smtp connection name' \
-e SMTP_HOST='smtp server host' \
-e SMTP_PORT='smtp server port' \
-e IMAP_NAME='imap connection name' \
-e IMAP_HOST='imap server host' \
-e IMAP_PORT='imap server port' \
plussell/bw-mail
```
