kali@kali:~/mystuff/hackerone/visma.scope$ cat visma.dnsenum.txt 
dnsenum VERSION:1.2.6 clock 3.40am

-----   visma.com   -----


Host's addresses:
__________________

visma.com.                               300      IN    A        91.123.58.195


Name Servers:
______________

dns.vismasoftware.no.                    1890     IN    A        185.206.4.12
bjartur.unison.no.                       22713    IN    A        194.143.13.195


Mail (MX) Servers:
___________________

ALT4.ASPMX.L.GOOGLE.com.                 293      IN    A        209.85.146.27
ASPMX.L.GOOGLE.com.                      293      IN    A        173.194.222.27
ALT1.ASPMX.L.GOOGLE.com.                 293      IN    A        108.177.97.27
ALT2.ASPMX.L.GOOGLE.com.                 293      IN    A        74.125.28.27
ALT3.ASPMX.L.GOOGLE.com.                 293      IN    A        173.194.201.27


Trying Zone Transfers and getting Bind Versions:
_________________________________________________


Trying Zone Transfer for visma.com on dns.vismasoftware.no ... 
AXFR record query failed: REFUSED

Trying Zone Transfer for visma.com on bjartur.unison.no ... 
AXFR record query failed: REFUSED


Brute forcing with /usr/share/dnsenum/dns.txt:
_______________________________________________

access.visma.com.                        3600     IN    A        91.123.49.215
ap.visma.com.                            3600     IN    A        91.123.56.173
beta.visma.com.                          3600     IN    A        91.123.58.137
blog.visma.com.                          3600     IN    A        91.123.58.195
citrix.visma.com.                        3600     IN    CNAME    desktop.visma.com.
desktop.visma.com.                       3600     IN    A        91.123.58.10
communications.visma.com.                3600     IN    A        193.75.91.97
mail.visma.com.                          3600     IN    CNAME    ghs.googlehosted.com.
ghs.googlehosted.com.                    277      IN    A        172.217.21.179
mx.visma.com.                            3600     IN    A        193.75.92.156
mx.visma.com.                            3600     IN    A        193.75.92.155
nl.visma.com.                            300      IN    A        91.123.58.195
ocs.visma.com.                           3600     IN    A        193.75.91.226
old.visma.com.                           3600     IN    A        193.75.92.59
rcw.visma.com.                           3600     IN    CNAME    retailcustomerweb.visma.com.
retailcustomerweb.visma.com.             3600     IN    A        91.123.49.11
secure.visma.com.                        3600     IN    A        91.123.58.136
shop.visma.com.                          3600     IN    A        91.123.58.134
survey.visma.com.                        3600     IN    A        95.138.143.137
test2.visma.com.                         3600     IN    A        91.123.59.155
vpn2.visma.com.                          3600     IN    A        91.123.58.19
vsp.visma.com.                           3600     IN    A        91.123.56.36
webmail.visma.com.                       3600     IN    A        91.123.58.164
www.visma.com.                           300      IN    A        91.123.58.195


visma.com class C netranges:
_____________________________

 91.123.49.0/24
 91.123.56.0/24
 91.123.58.0/24
 91.123.59.0/24
 95.138.143.0/24
 193.75.91.0/24
 193.75.92.0/24


Performing reverse lookup on 1792 ip addresses:
________________________________________________

218.56.123.91.in-addr.arpa.              3600     IN    PTR      opicmailrelay1.visma.com.
219.56.123.91.in-addr.arpa.              3600     IN    PTR      opicmailrelay2.visma.com.
242.56.123.91.in-addr.arpa.              3600     IN    PTR      vitmx006.visma.com.
243.56.123.91.in-addr.arpa.              3600     IN    PTR      vitmx007.visma.com.

4 results out of 1792 IP addresses.


visma.com ip blocks:
_____________________

 91.123.56.218/31
 91.123.56.242/31
=============================================================================================
