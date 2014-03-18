Setup SSL identify on rizon:

$ openssl req -nodes -newkey rsa:2048 -keyout Rizon.key -x509 -days 365 -out Rizon.cer

  Country Name (2 letter code) [US]:US
  State or Province Name (full name) [Texas]:Michigan
  Locality Name (eg, city) [San Antonio]:Grand Rapids
  Organization Name (eg, company) [Stealth3]: Rizon
  Organizational Unit Name (eg, section) [ISP]: IRC
  Common Name (eg, YOUR name) []:Rebel_n00b
  Email Address []:rebel@rizon.net

$ cat Rizon.cer Rizon.key > Rizon.pem

    quit weechat
    move Rizon.pem to ~/.weechat/ssl/Rizon.pem
    open ~/.weechat/irc.conf
    make the following options look like this:

# changing the port to 6697 or 9999 is what matters
rizon.addresses = "irc.rizon.net/6697"
rizon.ssl = on
rizon.ssl_cert = "%h/ssl/Rizon.pem"
# 2048 is the default anyway... *shrugs*
rizon.ssl_dhkey_size = 2048
# weechat will refuse to connect if ssl_verify
# is on - untrusted certificate issuer or something
rizon.ssl_verify = off
