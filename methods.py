# -*- coding: utf-8 -*-
# this is my methodology, and what tools i use to help me do recon on the target sites

methods = """
[SHODAN]
//using shodan to find the backend of their systems, sometimes they are misconfigured.

Shodan Query: ssl.cert.subject.CN:"*.google.com"
will list various subdomains and backends


[CHECK-HOST]
using check-host.net dns service, we can determine wether or not a site is behind proxies
or hosted across various ips/load balancers
Exmaple: https://check-host.net/check-dns?host=google.com

[SQLMAP]
//using sqlmap to auto-exploit, or find information

leonidus@bugbounty#:~ sqlmap -u "https://target.com/" --crawl 3 --threads 10 --random-agent --tor --ignore-redirects --batch
#im not going into depth on the tags used but this might be able to find some stuff

[NIKTO]
i hate nikto, but its worth a shot sometimes
leonidus@bugbounty#:~ nikto -host https://target.com/ --use-proxy 127.0.0.1:9050

[WPSCAN]
this can provide some insight on what they are running, and maybe they are using outdated or vuln wordpress stuffs
=========

 scan.yml for wpscan
cli_options:
  api_token: <token here>

=========

leonidus@bugbounty#:~ wpscan --url http://x.x.x.x/ --enumerate vp

[NMAP]
simple vulners.nse scan on backends usually
leonidus@bugbounty#:~ nmap -sV --script vulners.nse x.x.x.x

[SUBDOMAINS]
finding subdomains is the worst, this site i found helps alot. probably the best one ive used so far
https://subdomainfinder.c99.nl/

"""

print(methods)
