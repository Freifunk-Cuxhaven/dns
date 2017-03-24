#!/bin/sh

# hop into correct directory to avoid cron pwd sucks
cd /etc/bind/dns_ffcux/

# function to get the current sha-1
getCurrentVersion() {
  git log --format=format:%H -1
}

# get sha-1 before pull
revision_current=$(getCurrentVersion)

git pull -q

# get sha-1 after pull
revision_new=$(getCurrentVersion)

# if sha-1 changed, restart the nameserver
if [ "$revision_current" != "$revision_new" ]
then
 service pdns restart
fi
